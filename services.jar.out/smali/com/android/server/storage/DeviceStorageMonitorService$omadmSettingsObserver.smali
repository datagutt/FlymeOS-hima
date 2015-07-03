.class final Lcom/android/server/storage/DeviceStorageMonitorService$omadmSettingsObserver;
.super Landroid/database/ContentObserver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "omadmSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$omadmSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$omadmSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$omadmSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "omadm.fumo.storage.cap"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J
    invoke-static {v0, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$102(Lcom/android/server/storage/DeviceStorageMonitorService;J)J

    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New omadm storage threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$omadmSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mNewLowOmaDmMemThreshold:J
    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
