.class Lcom/android/server/AlarmManagerService$2;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getNextAlarmClock"

    const/4 v6, 0x0

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-static {v0, p1}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 12

    if-eqz p9, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "AlarmManager.set"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-nez v1, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    return-void

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public setTime(J)Z
    .locals 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.SET_TIME"

    const-string v8, "setTime"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v6, v2, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignore time set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in setTime(); too close to current time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v6, v6, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    const-string v4, "AlarmManager"

    const-string v6, "Not setting time since no alarm driver is available."

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->notifyTimeZoneToRadio(Ljava/util/TimeZone;)V
    invoke-static {v6, v1}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;Ljava/util/TimeZone;)V

    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setTime() is invoked. time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v8, v8, Lcom/android/server/AlarmManagerService;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I
    invoke-static {v7, v8, v9, p1, p2}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;JJ)I

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.SET_TIME_ZONE"

    const-string v4, "setTimeZone"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startHibernate()V
    .locals 0

    return-void
.end method

.method public stopHibernate()V
    .locals 0

    return-void
.end method
