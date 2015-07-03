.class Lcom/android/server/power/HtcPMSExtension$1;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/HtcPMSExtension;->sendScreenStateChange(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcPMSExtension;

.field final synthetic val$sendIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcPMSExtension;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HtcPMSExtension$1;->this$0:Lcom/android/server/power/HtcPMSExtension;

    iput-object p2, p0, Lcom/android/server/power/HtcPMSExtension$1;->val$sendIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    # getter for: Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/HtcPMSExtension;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcPMSExtension"

    const-string v2, "send SSC Intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension$1;->this$0:Lcom/android/server/power/HtcPMSExtension;

    # getter for: Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/HtcPMSExtension;->access$300(Lcom/android/server/power/HtcPMSExtension;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPMSExtension$1;->val$sendIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    # getter for: Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/HtcPMSExtension;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HtcPMSExtension"

    const-string v2, "send SSC Intent E"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/HtcPMSExtension;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HtcPMSExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send Screen State Change Intent Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
