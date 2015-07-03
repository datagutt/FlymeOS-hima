.class Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaInboundSmsHandler Intent Received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$000(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    const-string v0, "phoneinECMState"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1050
    .local v9, "isECM":Z
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_EMERGENCY_CALLBACK_MODE_CHANGED> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$100(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleCmasInEcmCallbackMode(Z)V

    .line 1065
    .end local v9    # "isECM":Z
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.action.ACTION_SPRINT_REASSEMBLE_SMS_DISPATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1054
    const-string v0, "address"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1055
    .local v10, "originatingAddress":Ljava/lang/String;
    const-string v0, "count"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1056
    .local v11, "sequenceCount":I
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchPendingSprintReassembleSms(Ljava/lang/String;I)V

    goto :goto_0

    .line 1057
    .end local v10    # "originatingAddress":Ljava/lang/String;
    .end local v11    # "sequenceCount":I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1062
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    # getter for: Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$200(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    move-object v1, p2

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
