.class Lcom/android/internal/telephony/TencentSecurityManager$ServiceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TencentSecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TencentSecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/TencentSecurityManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/TencentSecurityManager;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/TencentSecurityManager$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/TencentSecurityManager;Lcom/android/internal/telephony/TencentSecurityManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/TencentSecurityManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/TencentSecurityManager$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TencentSecurityManager$ServiceStateReceiver;-><init>(Lcom/android/internal/telephony/TencentSecurityManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    const-string v1, "com.tencent.qqpimsecureforhtc.SERVICE_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "SMS"

    const-string v2, "[TencentSecurityManager]: onReceive: com.tencent.qqpimsecureforhtc.SERVICE_START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 76
    .local v0, "isStarted":Z
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TencentSecurityManager]: isStarted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-eqz v0, :cond_1

    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/TencentSecurityManager;->bindTencentSecurityManager()Z

    .line 83
    .end local v0    # "isStarted":Z
    :cond_0
    :goto_0
    return-void

    .line 80
    .restart local v0    # "isStarted":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/TencentSecurityManager;->unbindTencentSecurityManager()V

    goto :goto_0
.end method
