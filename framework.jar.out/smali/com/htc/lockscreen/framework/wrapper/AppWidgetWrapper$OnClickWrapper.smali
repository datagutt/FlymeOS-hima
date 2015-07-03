.class Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "AppWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnClickWrapper"
.end annotation


# instance fields
.field private mListener:Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    iput-object p1, p0, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$OnClickWrapper;->mListener:Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/lockscreen/framework/wrapper/AppWidgetWrapper$HtcOnWidgetClickInvocationHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
