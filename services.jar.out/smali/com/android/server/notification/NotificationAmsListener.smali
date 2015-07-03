.class public Lcom/android/server/notification/NotificationAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "NotificationAmsListener.java"


# static fields
.field private static final CAMERA_PROCESS_NAME:Ljava/lang/String; = "com.htc.camera"

.field private static final DEBUG:Z

.field private static final MESSAGE_KILL_FLASHLIGHT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "NotificationAmsListener"

.field private static mAmsListener:Lcom/android/server/notification/NotificationAmsListener;

.field private static mLockObj:Ljava/lang/Object;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/notification/NotificationAmsListener;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/notification/NotificationAmsListener;->mAmsListener:Lcom/android/server/notification/NotificationAmsListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationAmsListener;->mLockObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/notification/NotificationAmsListener;
    .locals 2

    sget-object v1, Lcom/android/server/notification/NotificationAmsListener;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/notification/NotificationAmsListener;->mAmsListener:Lcom/android/server/notification/NotificationAmsListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/notification/NotificationAmsListener;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationAmsListener;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationAmsListener;->mAmsListener:Lcom/android/server/notification/NotificationAmsListener;

    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationAmsListener;->mAmsListener:Lcom/android/server/notification/NotificationAmsListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 5

    sget-object v2, Lcom/android/server/notification/NotificationAmsListener;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationAmsListener;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/server/notification/NotificationAmsListener;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "NotificationAmsListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topAppChange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    const-string v3, "com.htc.camera"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/NotificationAmsListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationAmsListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationAmsListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 4

    sget-object v1, Lcom/android/server/notification/NotificationAmsListener;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/notification/NotificationAmsListener;->mHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/android/server/notification/NotificationAmsListener;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAmsListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationAmsListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
