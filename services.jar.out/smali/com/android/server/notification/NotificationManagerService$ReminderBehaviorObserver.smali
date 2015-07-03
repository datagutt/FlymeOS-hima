.class Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReminderBehaviorObserver"
.end annotation


# static fields
.field private static final KEY_ENABLED:Ljava/lang/String; = "htc_accessibility_notification_reminder_enabled"

.field private static final KEY_ENABLED_LIST:Ljava/lang/String; = "htc_notification_reminder_list"

.field private static final KEY_FREQUENCY:Ljava/lang/String; = "htc_accessibility_notification_reminder_frequency"


# instance fields
.field private componentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private registered:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->registered:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->componentList:Ljava/util/ArrayList;

    return-void
.end method

.method private updateReminderAppList()V
    .locals 9

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "htc_notification_reminder_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->componentList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    if-eqz v5, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "NotificationService"

    const-string v7, "reminderList:null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v6, "\\["

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\]"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v6, v2

    if-nez v6, :cond_3

    :cond_2
    const-string v6, "NotificationService"

    const-string v7, "reminderList:post-process null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->componentList:Ljava/util/ArrayList;

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->componentList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reminderList:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->componentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isPackageEnabled(Ljava/lang/String;)Z
    .locals 7

    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->isSupport10brand:Z

    if-nez v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->componentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    :cond_4
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remindPackageEnabled("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->registered:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->registered:Z

    const-string v2, "htc_accessibility_notification_reminder_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "htc_accessibility_notification_reminder_frequency"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->isSupport10brand:Z

    if-eqz v2, :cond_0

    const-string v2, "htc_notification_reminder_list"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    const-string v2, "NotificationService"

    const-string v3, "reminderChange:register"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v3, "htc_accessibility_notification_reminder_enabled"

    const/4 v4, 0x3

    invoke-static {v1, v3, v6, v4}, Lcom/android/internal/util/SettingsUtil;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v3

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$802(Lcom/android/server/notification/NotificationManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v3, "htc_accessibility_notification_reminder_frequency"

    const-wide/16 v4, 0x3a98

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mReminderFrequency:J
    invoke-static {v2, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$6102(Lcom/android/server/notification/NotificationManagerService;J)J

    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->isSupport10brand:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->updateReminderAppList()V

    :cond_2
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reminderChange(enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " frequency="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderFrequency:J
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " post="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderAlarmPost:Z
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateReminderAlarm(Z)V
    invoke-static {v2, v6}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->isSupport10brand:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderBehaviorObserver:Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v0

    :cond_5
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reminderChange(package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateReminderAlarm(Z)V
    invoke-static {v2, v6}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;Z)V

    goto :goto_0
.end method
