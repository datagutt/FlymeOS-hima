.class Lcom/android/server/net/NetworkPolicyManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, -0x1

    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_UID_REMOVED for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateFilterRuleforUid(Ljava/lang/String;IZ)V
    invoke-static {v3, v0, v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;IZ)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
