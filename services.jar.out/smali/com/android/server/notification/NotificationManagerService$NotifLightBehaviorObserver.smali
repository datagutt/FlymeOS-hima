.class Lcom/android/server/notification/NotificationManagerService$NotifLightBehaviorObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifLightBehaviorObserver"
.end annotation


# static fields
.field public static final ALWAYS_FLASH:I = 0x0

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "htc_notification_light_behavior"


# instance fields
.field private registered:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightBehaviorObserver;->registered:Z

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightBehaviorObserver;->registered:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightBehaviorObserver;->registered:Z

    const-string v1, "htc_notification_light_behavior"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "htc_notification_light_behavior"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mAlwaysFlash:Z
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->access$6002(Lcom/android/server/notification/NotificationManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotifLightBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mAlwaysFlash:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeNotificationLightOptionChanged(I)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
