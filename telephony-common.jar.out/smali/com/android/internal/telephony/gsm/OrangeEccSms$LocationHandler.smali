.class Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;
.super Landroid/os/Handler;
.source "OrangeEccSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/OrangeEccSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationHandler"
.end annotation


# static fields
.field private static final MSG_SEND_SMS_STOP_GPS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    .line 559
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 560
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 564
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 607
    :goto_0
    return-void

    .line 566
    :pswitch_0
    const-string v3, "OrangeEccSms"

    const-string v4, "get GPS position or 20s timeup, let\'s send Emergency SMS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v1, 0x0

    .line 570
    .local v1, "gpsLocationUpdateIsAvailable":Z
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_0

    .line 571
    const/4 v1, 0x1

    .line 575
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # invokes: Lcom/android/internal/telephony/gsm/OrangeEccSms;->getBestLocation(Z)Landroid/location/Location;
    invoke-static {v3, v1}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$400(Lcom/android/internal/telephony/gsm/OrangeEccSms;Z)Landroid/location/Location;

    move-result-object v0

    .line 576
    .local v0, "bestLocation":Landroid/location/Location;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # invokes: Lcom/android/internal/telephony/gsm/OrangeEccSms;->printLocationLog(Landroid/location/Location;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$500(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/location/Location;)V

    .line 579
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # invokes: Lcom/android/internal/telephony/gsm/OrangeEccSms;->getUserData(Landroid/location/Location;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$600(Lcom/android/internal/telephony/gsm/OrangeEccSms;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "userData":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # invokes: Lcom/android/internal/telephony/gsm/OrangeEccSms;->sendSms(Ljava/lang/String;Z)V
    invoke-static {v3, v2, v6}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$700(Lcom/android/internal/telephony/gsm/OrangeEccSms;Ljava/lang/String;Z)V

    .line 583
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$800(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/location/LocationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 586
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalGpsSetting:Z
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$900(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 587
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$1000(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 589
    const-string v3, "OrangeEccSms"

    const-string v4, "Disable GPS for rollback to original status"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalNlpSetting:Z
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$1100(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 593
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$1000(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "network"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 595
    const-string v3, "OrangeEccSms"

    const-string v4, "Disable Network Location Provider for rollback to original status"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mOriginalWifiAlwaysAvailable:I
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$1200(Lcom/android/internal/telephony/gsm/OrangeEccSms;)I

    move-result v3

    if-nez v3, :cond_3

    .line 600
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # getter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$1000(Lcom/android/internal/telephony/gsm/OrangeEccSms;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    const-string v3, "OrangeEccSms"

    const-string v4, "Disable Wifi Scanning Always Available for rollback to original status"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/OrangeEccSms$LocationHandler;->this$0:Lcom/android/internal/telephony/gsm/OrangeEccSms;

    # setter for: Lcom/android/internal/telephony/gsm/OrangeEccSms;->mStartLocationUpdate:Z
    invoke-static {v3, v5}, Lcom/android/internal/telephony/gsm/OrangeEccSms;->access$1302(Lcom/android/internal/telephony/gsm/OrangeEccSms;Z)Z

    goto/16 :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
