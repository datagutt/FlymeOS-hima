.class Lcom/android/server/location/GpsLocationProvider$9;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field final synthetic val$wakeLockXTRA:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$9;->val$wakeLockXTRA:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x6

    new-instance v4, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$3100(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    invoke-virtual {v4}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # ++operator for: Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$3204(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v3

    if-eqz v0, :cond_1

    const-string v5, "GpsLocationProvider"

    const-string v6, "[handleDownloadXtraData] calling native_inject_xtra_data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mXLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    array-length v7, v0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V
    invoke-static {v5, v0, v7}, Lcom/android/server/location/GpsLocationProvider;->access$3400(Lcom/android/server/location/GpsLocationProvider;[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mXLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$3300(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v5

    if-gez v5, :cond_5

    const-string v5, "GpsLocationProvider"

    const-string v6, " [handleDownloadXtraData]inject done."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I
    invoke-static {v5, v11}, Lcom/android/server/location/GpsLocationProvider;->access$3202(Lcom/android/server/location/GpsLocationProvider;I)I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v6

    invoke-virtual {v5, v10, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->sendMessageDelayed(IJ)V

    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/16 v6, 0xb

    const/4 v7, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v5, v6, v11, v7}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_7

    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " [handleDownloadXtraData]download failure, retry count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-wide/32 v6, 0x493e0

    invoke-virtual {v5, v10, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->sendMessageDelayed(IJ)V

    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->val$wakeLockXTRA:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->val$wakeLockXTRA:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v5, "GpsLocationProvider"

    const-string v7, "[handleDownloadXtraData] inject return wait exception"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :cond_4
    const-wide/16 v8, 0x2710

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_5
    const-string v5, "GpsLocationProvider"

    const-string v7, "[handleDownloadXtraData] inject retry wait exception"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$3200(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I
    invoke-static {v5, v3}, Lcom/android/server/location/GpsLocationProvider;->access$3202(Lcom/android/server/location/GpsLocationProvider;I)I

    :cond_6
    const-string v5, "GpsLocationProvider"

    const-string v6, " [handleDownloadXtraData] inject failure , give up retry"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const-string v5, "GpsLocationProvider"

    const-string v6, "[handleDownloadXtraData] download failure, give up retry."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mXtraInjRetryCount:I
    invoke-static {v5, v11}, Lcom/android/server/location/GpsLocationProvider;->access$3202(Lcom/android/server/location/GpsLocationProvider;I)I

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$9;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->XTRA_INTERVAL:J
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$3500(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v6

    invoke-virtual {v5, v10, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->sendMessageDelayed(IJ)V

    goto :goto_3
.end method
