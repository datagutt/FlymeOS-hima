.class Lcom/android/server/MountService$3;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v3}, Lcom/android/server/MountService;->systemReady()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.htc.admin.ALLOW_STORAGE_CARD_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.htc.admin.extra.ALLOW_STATUS"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive(): get ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v6, :cond_2

    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v3}, Lcom/android/server/MountService;->isSdcardRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive(): get ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], status = allow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v3, v7}, Lcom/android/server/MountService;->setSdcardRestricted(Z)V

    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->mountUsbOTG()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v3}, Lcom/android/server/MountService;->isSdcardRestricted()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive(): get ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], status = disable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v3, v6}, Lcom/android/server/MountService;->setSdcardRestricted(Z)V

    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->unmountUsbOTG()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.MEMORY_CARD_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "SD_POLICY"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
