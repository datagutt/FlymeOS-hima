.class Landroid/appwidget/AppWidgetHost$UpdateHandler;
.super Landroid/os/Handler;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/appwidget/AppWidgetHost;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->onProvidersChanged()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;->viewDataChanged(II)V

    goto :goto_0

    :sswitch_4
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "AppWidgetHost"

    const-string v1, "backup appwidget, onBackupAppwidgetData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/appwidget/AppWidgetHost;->onBackupAppWidgetData(ILandroid/os/Bundle;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x7d0 -> :sswitch_4
    .end sparse-switch
.end method
