.class Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OrangeEccSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/OrangeEccSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsResultReceiver"
.end annotation


# static fields
.field public static final EXTRA_MESSAGE_TIMESTAMP:Ljava/lang/String; = "Timestamp"

.field public static final EXTRA_MESSAGE_USER_DATA:Ljava/lang/String; = "UserData"

.field public static final MESSAGE_SENT_ACTION:Ljava/lang/String; = "com.android.mms.OrangeEccSms.SmsResultReceiver.MESSAGE_SENT"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;Lcom/android/internal/telephony/gsm/OrangeEccSms$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/gsm/OrangeEccSms;
    .param p2, "x1"    # Lcom/android/internal/telephony/gsm/OrangeEccSms$1;

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;-><init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 619
    const-string v6, "OrangeEccSms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 622
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 623
    .local v4, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_2

    .line 624
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mPendingSmsQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$1400(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 625
    const-string v6, "OrangeEccSms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service state in service, send queued Emergency SMS count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mPendingSmsQueue:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$1400(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mPendingSmsQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$1400(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 630
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mPendingSmsQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$1400(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 631
    .local v2, "map":Ljava/util/HashMap;
    const-string v6, "UserData"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 632
    .local v5, "userData":Ljava/lang/String;
    const-string v6, "Timestamp"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 634
    .local v0, "firstSendTimestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/32 v8, 0x36ee80

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 635
    const-string v6, "OrangeEccSms"

    const-string v7, "Discard pending SMS because it\'s timeout"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 639
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # invokes: Lcom/android/internal/telephony/gsm/OrangeEccSms;->sendSms(Ljava/lang/String;Z)V
    invoke-static {v6, v5, v10}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$700(Lcom/android/internal/telephony/gsm/OrangeEccSms;Ljava/lang/String;Z)V

    goto :goto_0

    .line 643
    .end local v0    # "firstSendTimestamp":J
    .end local v2    # "map":Ljava/util/HashMap;
    .end local v4    # "serviceState":Landroid/telephony/ServiceState;
    .end local v5    # "userData":Ljava/lang/String;
    :cond_1
    const-string v6, "com.android.mms.OrangeEccSms.SmsResultReceiver.MESSAGE_SENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;->getResultCode()I

    move-result v3

    .line 646
    .local v3, "resultCode":I
    const-string v6, "OrangeEccSms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resultCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v6, -0x1

    if-ne v3, v6, :cond_3

    .line 662
    .end local v3    # "resultCode":I
    :cond_2
    :goto_1
    return-void

    .line 649
    .restart local v3    # "resultCode":I
    :cond_3
    const/4 v6, 0x2

    if-eq v3, v6, :cond_4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_5

    .line 652
    :cond_4
    const-string v6, "OrangeEccSms"

    const-string v7, "ServiceState not in service, put Emergency SMS to queue"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 654
    .restart local v2    # "map":Ljava/util/HashMap;
    const-string v6, "UserData"

    const-string v7, "UserData"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v6, "Timestamp"

    new-instance v7, Ljava/lang/Long;

    const-string v8, "Timestamp"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$SmsResultReceiver;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mPendingSmsQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$1400(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 659
    .end local v2    # "map":Ljava/util/HashMap;
    :cond_5
    const-string v6, "OrangeEccSms"

    const-string v7, "Emergency SMS send failed......"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
