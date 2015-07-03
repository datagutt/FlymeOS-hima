.class final Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayNotification;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayNotification;Lcom/htc/server/WirelessDisplayNotification$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;-><init>(Lcom/htc/server/WirelessDisplayNotification;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v8, 0x0

    const v7, 0x302008f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    # invokes: Lcom/htc/server/WirelessDisplayNotification;->getNotificationPreference(Landroid/content/Context;)Z
    invoke-static {v4, p1}, Lcom/htc/server/WirelessDisplayNotification;->access$200(Lcom/htc/server/WirelessDisplayNotification;Landroid/content/Context;)Z

    move-result v4

    # setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v3, v4}, Lcom/htc/server/WirelessDisplayNotification;->access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_2

    const-string v3, "WirelessDisplayNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preference="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    # getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    # getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v3}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    # setter for: Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I
    invoke-static {v3, v6}, Lcom/htc/server/WirelessDisplayNotification;->access$302(Lcom/htc/server/WirelessDisplayNotification;I)I

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    # setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J
    invoke-static {v3, v8, v9}, Lcom/htc/server/WirelessDisplayNotification;->access$402(Lcom/htc/server/WirelessDisplayNotification;J)J

    goto :goto_0

    :cond_3
    const-string v3, "com.htc.wifidisplay.NOTIFICATION_STATUS_UPDATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "notification"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-ne v5, v1, :cond_5

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    const-string v4, "notification"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v3, v4}, Lcom/htc/server/WirelessDisplayNotification;->access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z

    :goto_1
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_4

    const-string v4, "WirelessDisplayNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_6

    const-string v3, "notification="

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    # getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    # getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v3}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    # setter for: Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I
    invoke-static {v3, v6}, Lcom/htc/server/WirelessDisplayNotification;->access$302(Lcom/htc/server/WirelessDisplayNotification;I)I

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    # setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J
    invoke-static {v3, v8, v9}, Lcom/htc/server/WirelessDisplayNotification;->access$402(Lcom/htc/server/WirelessDisplayNotification;J)J

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    # invokes: Lcom/htc/server/WirelessDisplayNotification;->getNotificationPreference(Landroid/content/Context;)Z
    invoke-static {v4, p1}, Lcom/htc/server/WirelessDisplayNotification;->access$200(Lcom/htc/server/WirelessDisplayNotification;Landroid/content/Context;)Z

    move-result v4

    # setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v3, v4}, Lcom/htc/server/WirelessDisplayNotification;->access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z

    goto :goto_1

    :cond_6
    const-string v3, "Preference="

    goto :goto_2
.end method
