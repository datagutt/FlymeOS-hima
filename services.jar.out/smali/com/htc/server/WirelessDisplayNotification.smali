.class public Lcom/htc/server/WirelessDisplayNotification;
.super Ljava/lang/Object;
.source "WirelessDisplayNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/WirelessDisplayNotification$1;,
        Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;
    }
.end annotation


# static fields
.field private static final EXTRA_DONGLE_IP_ADDR:Ljava/lang/String; = "com.htc.wifidisplay.intent.extra.DONGLE_IP_ADDR"

.field private static final EXTRA_DONGLE_VERSION:Ljava/lang/String; = "com.htc.wifidisplay.intent.extra.DONGLE_VERSION"

.field private static final EXTRA_NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final ICON_DONGLES_AVAILABLE:I = 0x302008f

.field private static final ICON_MIRROR_MODE_READY:I = 0x3020092

.field private static final ICON_MIRROR_MODE_RUNNING:I = 0x3020093

.field private static final INTENT_CONFIG_DONGLES_LIST:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFICATION_CONFIGURE_TOOL"

.field private static final INTENT_DONGLE_FIRMWARE_UPDATE:Ljava/lang/String; = "com.htc.wifidisplay.intent.DONGLE_FIRMWARE_UPDATE"

.field private static final INTENT_NOTIFICATION_STATUS_UPDATE:Ljava/lang/String; = "com.htc.wifidisplay.NOTIFICATION_STATUS_UPDATE"

.field private static JPN_SKU:Z = false

.field private static final NOTIFICATION_ID:I = 0x302008f

.field private static final NOTIFICATION_TYPE_DONGLES_AVAILABLE:I = 0x2

.field private static final NOTIFICATION_TYPE_DONGLE_AVAILABLE:I = 0x1

.field private static final NOTIFICATION_TYPE_DONGLE_MIRROR:I = 0x4

.field private static final NOTIFICATION_TYPE_DONGLE_NONE:I = 0x0

.field private static final NOTIFICATION_TYPE_DONGLE_READY:I = 0x3

.field private static final NO_WIFI_CONCURRENT_MODE:Z = false

.field private static final OUTPUTTV_OPTION_NODEFAULT:I = 0x0

.field private static final SETTINGS_SECURE_OUTPUTTV_DEFAULT_OPTION:Ljava/lang/String; = "outputtv_default_option"

.field private static final TAG:Ljava/lang/String; = "WirelessDisplayNotification"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrNotificationType:I

.field private mNotificationPreference:Z

.field private mNotificationWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    sput-boolean v4, Lcom/htc/server/WirelessDisplayNotification;->JPN_SKU:Z

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    const-string v5, "Android_Core_Framework"

    invoke-virtual {v0, v5, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v5, "wirelss_disp_notification_mode"

    invoke-interface {v1, v5, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    :goto_0
    sput-boolean v3, Lcom/htc/server/WirelessDisplayNotification;->JPN_SKU:Z

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    iput-object p1, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.wifidisplay.NOTIFICATION_STATUS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;

    invoke-direct {v2, p0, v4}, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;-><init>(Lcom/htc/server/WirelessDisplayNotification;Lcom/htc/server/WirelessDisplayNotification$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/server/WirelessDisplayNotification;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/server/WirelessDisplayNotification;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayNotification;->getNotificationPreference(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/htc/server/WirelessDisplayNotification;I)I
    .locals 0

    iput p1, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    return p1
.end method

.method static synthetic access$402(Lcom/htc/server/WirelessDisplayNotification;J)J
    .locals 1

    iput-wide p1, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    return-wide p1
.end method

.method public static getDefaultOption(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "outputtv_default_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNotification(I)Landroid/app/Notification;
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v10, 0x4

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v5, 0x30700ec

    sget-boolean v7, Lcom/htc/server/WirelessDisplayNotification;->JPN_SKU:Z

    if-eqz v7, :cond_0

    const v5, 0x30700ed

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.htc.wifidisplay.NOTIFICATION_CONFIGURE_TOOL"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    if-eq p1, v7, :cond_2

    const v3, 0x30700a1

    const v4, 0x30700e9

    sget-boolean v7, Lcom/htc/server/WirelessDisplayNotification;->JPN_SKU:Z

    if-eqz v7, :cond_1

    const v3, 0x30700a2

    const v4, 0x30700ea

    :cond_1
    iget v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    if-nez v7, :cond_5

    if-ne v10, p1, :cond_4

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_2
    :goto_1
    iget-wide v8, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    cmp-long v7, v12, v8

    if-nez v7, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    :cond_3
    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/16 v7, 0x20

    iput v7, v2, Landroid/app/Notification;->flags:I

    const/4 v7, 0x5

    iput v7, v2, Landroid/app/Notification;->priority:I

    iget v7, v2, Landroid/app/Notification;->flags:I

    const/high16 v8, -0x80000000

    or-int/2addr v7, v8

    iput v7, v2, Landroid/app/Notification;->flags:I

    return-object v2

    :pswitch_1
    const v7, 0x302008f

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v7, 0x30700ee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    :pswitch_2
    const v7, 0x3020093

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v7, 0x307009f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_5
    if-ne v10, p1, :cond_2

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getNotificationPreference(Landroid/content/Context;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x1

    const-string v2, "content://com.htc.wifidisplay.provider.setting"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    move v7, v6

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "WirelessDisplayNotification"

    const-string v3, "acquireContentProviderClient fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v2, "WirelessDisplayNotification"

    const-string v3, "null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move v7, v6

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-ne v12, v2, :cond_6

    const-string v2, "notification"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    move v6, v12

    :goto_1
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :goto_2
    move v7, v6

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    :try_start_2
    const-string v2, "WirelessDisplayNotification"

    const-string v3, "cursor.moveToFirst fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_3
    const-string v2, "WirelessDisplayNotification"

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v2
.end method


# virtual methods
.method public notifyFirmwareUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "WirelessDisplayNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notifyFirmwareUpdate] ip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Ver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.intent.DONGLE_FIRMWARE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.htc.wifidisplay.intent.extra.DONGLE_IP_ADDR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.htc.wifidisplay.intent.extra.DONGLE_VERSION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public updateNotification(ZIZLjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_0

    const-string v9, "WirelessDisplayNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateNotification() mirror = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dongles = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", wifi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preference = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    iget-boolean v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z

    if-nez v9, :cond_4

    :cond_3
    const v9, 0x302008f

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mContext:Landroid/content/Context;

    const-string v10, "wireless_display"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/service/WirelessDisplayManager;

    if-eqz v8, :cond_1

    const/4 v9, 0x1

    if-ne v9, p1, :cond_7

    invoke-virtual {v8}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v4

    const/4 v9, 0x2

    if-ne v4, v9, :cond_5

    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_1

    const-string v9, "WirelessDisplayNotification"

    const-string v10, "mirror=on, state=enabling"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v7, 0x4

    :cond_6
    :goto_1
    if-nez v7, :cond_10

    const v9, 0x302008f

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/DongleInfo;

    iget v9, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_9

    iget v9, v1, Lcom/htc/service/DongleInfo;->status:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    :cond_9
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_a

    const-string v9, "WirelessDisplayNotification"

    const-string v10, "unconfig dongle found!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v2, 0x1

    :cond_b
    if-nez v2, :cond_e

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/DongleInfo;

    iget-object v9, v1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/service/WirelessDisplayManager;->getDonglePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_d

    const-string v9, "WirelessDisplayNotification"

    const-string v10, "used dongle found!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v3, 0x1

    :cond_e
    const/4 v9, 0x1

    if-eq v9, v2, :cond_f

    const/4 v9, 0x1

    if-ne v9, v3, :cond_6

    :cond_f
    const/4 v7, 0x2

    goto :goto_1

    :cond_10
    invoke-direct {p0, v7}, Lcom/htc/server/WirelessDisplayNotification;->getNotification(I)Landroid/app/Notification;

    move-result-object v6

    iget v9, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    if-eq v7, v9, :cond_11

    const v9, 0x302008f

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_11
    const v9, 0x302008f

    invoke-virtual {v5, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iput v7, p0, Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I

    goto/16 :goto_0
.end method
