.class Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;
.super Landroid/database/ContentObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EPSSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_extreme_power_saver_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z
    invoke-static {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$202(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->WIFI_RESTRICT_ENABLED:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setWiFiRestrict(Z)V

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EPS mode changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", property="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->WIFI_RESTRICT_ENABLED:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "false"

    goto :goto_1
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "htc_extreme_power_saver_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$EPSSettingObserver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
