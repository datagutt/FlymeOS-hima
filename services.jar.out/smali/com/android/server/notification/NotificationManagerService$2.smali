.class Lcom/android/server/notification/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG_INTERNAL:Z

    if-eqz v2, :cond_0

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v16, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v28, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v19, 0x1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_3

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_3
    const/16 v25, 0x0

    if-eqz v26, :cond_5

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v27, 0x1

    :goto_1
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    :goto_2
    if-eqz v25, :cond_b

    move-object/from16 v0, v25

    array-length v2, v0

    if-lez v2, :cond_b

    move-object/from16 v18, v25

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    aget-object v5, v18, v21

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$200()I

    move-result v3

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$300()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v28, :cond_a

    const/4 v8, 0x1

    :goto_4
    const/4 v9, -0x1

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_5
    const/16 v27, 0x0

    goto :goto_1

    :cond_6
    if-eqz v28, :cond_7

    const-string v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    goto :goto_2

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v30

    if-eqz v30, :cond_1

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz v23, :cond_9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_8

    if-nez v20, :cond_9

    :cond_8
    const/16 v19, 0x0

    :cond_9
    :goto_5
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v2, 0x0

    aput-object v5, v25, v2

    goto :goto_2

    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    move/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    move/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$602(Lcom/android/server/notification/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserPresent:Z
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$602(Lcom/android/server/notification/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mUserPresent:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$702(Lcom/android/server/notification/NotificationManagerService;Z)Z

    goto/16 :goto_0

    :cond_e
    const-string v2, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_6
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mInCall:I
    invoke-static {v3, v2}, Lcom/android/server/notification/NotificationManagerService;->access$1002(Lcom/android/server/notification/NotificationManagerService;I)I

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    :cond_10
    const-string v2, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    if-ltz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$200()I

    move-result v7

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$300()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    goto/16 :goto_0

    :cond_11
    const-string v2, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mUserPresent:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$702(Lcom/android/server/notification/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_0

    :cond_12
    const-string v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserSwitched()V

    goto/16 :goto_0

    :cond_13
    const-string v2, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_14
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p2

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateBatteryState(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_15
    const-string v2, "com.htc.action.REMINDER_TIME_TICK"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mReminderAlarmPost:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$1302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_17

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_18

    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->isSupport10brand:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderBehaviorObserver:Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v24

    :goto_8
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reminderAlarm(alarm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_16

    if-eqz v24, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateReminderAlarm(Z)V
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;Z)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderRun:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderRun:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_18
    const/16 v24, 0x1

    goto :goto_8

    :catch_0
    move-exception v2

    goto/16 :goto_5
.end method
