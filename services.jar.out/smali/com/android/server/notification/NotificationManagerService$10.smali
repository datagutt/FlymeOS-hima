.class Lcom/android/server/notification/NotificationManagerService$10;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z
    invoke-static {v11}, Lcom/android/server/notification/NotificationManagerService;->access$000(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v11, v11, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-nez v11, :cond_1

    :cond_0
    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "skip all reminder effect cause from the reason("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z
    invoke-static {v11}, Lcom/android/server/notification/NotificationManagerService;->access$000(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDndEnabled:Z
    invoke-static {v11}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v11, v11, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->cancel()V

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J
    invoke-static {v12}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)[J

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "notification_sound"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    move v2, v9

    :goto_1
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    if-eqz v11, :cond_5

    move v3, v9

    :goto_2
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_1
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x1

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v7, v8, v9, v6, v0}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3
    :goto_3
    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reminderExecute(valid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " volume="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " focus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_4
    move v2, v10

    goto :goto_1

    :cond_5
    move v3, v10

    goto :goto_2

    :catch_0
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_1
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method
