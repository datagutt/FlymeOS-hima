.class public Landroid/media/htcsoundfx/view/EffectViewNotification;
.super Ljava/lang/Object;
.source "EffectViewNotification.java"

# interfaces
.implements Landroid/media/htcsoundfx/view/EffectViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectViewNotification"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLargeIconId:I

.field private mLock:Ljava/lang/Object;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSmallIconId:I

.field private mUseLargeIcon:Z

.field private mVisiable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    iput-boolean v1, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mUseLargeIcon:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Landroid/media/htcsoundfx/view/EffectViewNotification;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Z)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Z)Landroid/app/Notification;
    .locals 8

    const-string v6, "EffectViewNotification"

    const-string v7, "createNotification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "HTC_EXTRA_SCROLL_TO_BOOMSOUND"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    if-eqz p6, :cond_1

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {p0, v6, p6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, p4, p5, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "com.htc.features"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    const-string v6, "com.htc.features"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    :cond_2
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public hide()V
    .locals 3

    iget-object v1, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v0, "EffectViewNotification"

    const-string v2, "hide"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    return v0
.end method

.method public setNotification(Landroid/app/Notification;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "notification is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "EffectViewNotification"

    const-string v3, "setNotification"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mNotification:Landroid/app/Notification;

    if-ne v1, p1, :cond_1

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/media/htcsoundfx/view/EffectViewNotification;->hide()V

    :cond_2
    iput-object p1, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/media/htcsoundfx/view/EffectViewNotification;->show()V

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setView(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "view is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Landroid/app/Notification;

    if-eqz v0, :cond_1

    const-string v0, "EffectViewNotification"

    const-string v1, "setView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/app/Notification;

    invoke-virtual {p0, p1}, Landroid/media/htcsoundfx/view/EffectViewNotification;->setNotification(Landroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 4

    iget-object v1, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v0, "EffectViewNotification"

    const-string v2, "show"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewNotification;->mVisiable:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
