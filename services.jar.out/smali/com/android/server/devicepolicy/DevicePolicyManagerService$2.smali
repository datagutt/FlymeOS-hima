.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14

    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v9, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;I)I

    move-result v5

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;I)I

    move-result v0

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;I)I

    move-result v2

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;I)I

    move-result v1

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;I)I

    move-result v4

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;I)I

    move-result v3

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v9, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    iget-object v9, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v9, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    if-eqz v6, :cond_0

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v11

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    invoke-static {v9, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    :cond_0
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    invoke-static {v9, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;I)I

    move-result v9

    if-eq v5, v9, :cond_1

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v11, "com.htc.admin.ALLOW_WIFI_CHANGE"

    iget-object v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;I)I

    move-result v12

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v9, v11, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_1
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;I)I

    move-result v9

    if-eq v0, v9, :cond_2

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v11, "com.htc.admin.ALLOW_BT_CHANGE"

    iget-object v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;I)I

    move-result v12

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v9, v11, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_2
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;I)I

    move-result v9

    if-eq v2, v9, :cond_3

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v11, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    iget-object v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;I)I

    move-result v12

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v9, v11, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_3
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;I)I

    move-result v9

    if-eq v1, v9, :cond_4

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v11, "com.htc.admin.ALLOW_BROWSER_CHANGE"

    iget-object v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;I)I

    move-result v12

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v9, v11, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_4
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;I)I

    move-result v9

    if-eq v4, v9, :cond_5

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v11, "com.htc.admin.ALLOW_TEXT_MESSAGING_CHANGE"

    iget-object v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;I)I

    move-result v12

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v9, v11, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_5
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;I)I

    move-result v9

    if-eq v3, v9, :cond_6

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v11, "com.htc.admin.ALLOW_STORAGE_CARD_CHANGE"

    iget-object v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;I)I

    move-result v12

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->broadcastAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v9, v11, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    :cond_6
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method
