.class Lcom/android/internal/telephony/SMSDispatcher$8;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0

    .prologue
    .line 2661
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 2664
    const-string v5, "SMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MobileNetworkReceiver receive intent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2666
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 2672
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v0, :cond_1

    .line 2677
    .local v0, "bMobileDataEnabledSetting":Z
    :goto_0
    const-string v5, "SMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MobileNetworkReceiver MobileDataEnabledSetting : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    if-nez v0, :cond_2

    .line 2702
    .end local v0    # "bMobileDataEnabledSetting":Z
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    return-void

    .line 2672
    .restart local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2673
    :catch_0
    move-exception v2

    .line 2674
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "SMSDispatcher"

    const-string v6, "Can\'t find MOBILE_DATA setting"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2682
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "bMobileDataEnabledSetting":Z
    :cond_2
    const-string v5, "apnTypes"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2684
    .local v1, "capability":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 2685
    const-string v5, "SMSDispatcher"

    const-string v6, "MobileNetworkReceiver DATA_APN_TYPES is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    :goto_2
    const-string v5, "SMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MobileNetworkReceiver getDataState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    const-string v5, "default"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "*"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2692
    const-string v5, "SMSDispatcher"

    const-string v6, "MobileNetworkReceiver 1"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 2694
    const-string v5, "SMSDispatcher"

    const-string v6, "MobileNetworkReceiver 2"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    const-string v5, "SMSDispatcher"

    const-string v6, "onReceive DATA_CONNECTED"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.CANCEL_CB_IMMUTABLE_NOTIFICATION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2697
    .local v3, "intentCancel":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2698
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$8;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    # getter for: Lcom/android/internal/telephony/SMSDispatcher;->mMobileNetworkReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/android/internal/telephony/SMSDispatcher;->access$800(Lcom/android/internal/telephony/SMSDispatcher;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 2687
    .end local v3    # "intentCancel":Landroid/content/Intent;
    :cond_3
    const-string v5, "SMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MobileNetworkReceiver DATA_APN_TYPES : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
