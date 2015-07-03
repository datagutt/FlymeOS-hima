.class public Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper;
.super Ljava/lang/Object;
.source "AppWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;,
        Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;
    }
.end annotation


# static fields
.field public static final ACTION_KEYGUARD_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

.field public static final EXTRA_CATEGORY_FILTER:Ljava/lang/String; = "categoryFilter"

.field public static final EXTRA_CUSTOM_SORT:Ljava/lang/String; = "customSort"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindAppWidgetId(Landroid/appwidget/AppWidgetManager;ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static createAppWidgetHost(Landroid/content/Context;ILcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;)Landroid/appwidget/AppWidgetHost;
    .locals 3

    new-instance v0, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;

    invoke-direct {v0, p2}, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;-><init>(Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;)V

    new-instance v1, Landroid/appwidget/AppWidgetHost;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v0, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    return-object v1
.end method

.method public static getAppWidgetIds(Landroid/appwidget/AppWidgetHost;)[I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public static updateAppWidgetSize(Landroid/appwidget/AppWidgetHostView;Landroid/os/Bundle;IIIIZ)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    :cond_0
    return-void
.end method
