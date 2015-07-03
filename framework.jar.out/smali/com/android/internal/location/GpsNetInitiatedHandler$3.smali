.class Lcom/android/internal/location/GpsNetInitiatedHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$3;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.htc.location.HTC_NI_INTENT_CHECK_LOCATION_SETTING_COMPLETE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$3;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    # getter for: Lcom/android/internal/location/GpsNetInitiatedHandler;->mGpsNiNotifLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->access$000(Lcom/android/internal/location/GpsNetInitiatedHandler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$3;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    # getter for: Lcom/android/internal/location/GpsNetInitiatedHandler;->pendingGpsNotif:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    invoke-static {v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->access$100(Lcom/android/internal/location/GpsNetInitiatedHandler;)Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    move-result-object v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v2, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const-string v4, "com.htc.location.HTC_NI_INTENT_EXTRA_NI_REQUEST_ID"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_2

    const-string v4, "GpsNetInitiatedHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User respond to enable location: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v3, "com.htc.location.HTC_NI_INTENT_EXTRA_LOCATION_ENABLED"

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "yes"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$3;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->updateLocationMode()V

    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$3;->this$0:Lcom/android/internal/location/GpsNetInitiatedHandler;

    # invokes: Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    invoke-static {v3, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->access$200(Lcom/android/internal/location/GpsNetInitiatedHandler;Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    :cond_0
    :goto_1
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    const-string/jumbo v3, "no"

    goto :goto_0

    :cond_2
    const-string v3, "GpsNetInitiatedHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Repsonding intent ID does not match! pending: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.htc.location.HTC_NI_INTENT_EXTRA_NI_REQUEST_ID"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v3, "GpsNetInitiatedHandler"

    const-string v4, "Intent received but pendingGpsNotif got null instance!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v3, "GpsNetInitiatedHandler"

    const-string v4, "Unkwon intent received for VZW GPS customization!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
