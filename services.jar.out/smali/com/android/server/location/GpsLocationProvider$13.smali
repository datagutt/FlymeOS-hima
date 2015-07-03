.class Lcom/android/server/location/GpsLocationProvider$13;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->reportHTCStatus(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$13;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$13;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[reportHTCStatus] HTC_GPS_STATUS_SET_PRIVACY_LOCK fail: retry after 1 second, GPS Setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$13;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$3700(Lcom/android/server/location/GpsLocationProvider;I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "GpsLocationProvider"

    const-string v3, "[reportHTCStatus] HTC_GPS_STATUS_SET_PRIVACY_LOCK InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$13;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_set_privacy_lock(I)V
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$3700(Lcom/android/server/location/GpsLocationProvider;I)V

    goto :goto_1
.end method
