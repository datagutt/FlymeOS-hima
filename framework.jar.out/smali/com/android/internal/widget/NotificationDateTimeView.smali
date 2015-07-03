.class public Lcom/android/internal/widget/NotificationDateTimeView;
.super Landroid/widget/DateTimeView;
.source "NotificationDateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationDateTimeView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationDateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected registerReceivers()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationDateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "date_format"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/NotificationDateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected unregisterReceivers()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationDateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/NotificationDateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
