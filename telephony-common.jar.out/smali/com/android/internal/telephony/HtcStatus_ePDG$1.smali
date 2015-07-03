.class Lcom/android/internal/telephony/HtcStatus_ePDG$1;
.super Landroid/os/Handler;
.source "HtcStatus_ePDG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/HtcStatus_ePDG;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcStatus_ePDG;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 53
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->context:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.ACTION_IWLAN_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    new-instance v2, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;-><init>(Lcom/android/internal/telephony/HtcStatus_ePDG;Lcom/android/internal/telephony/HtcStatus_ePDG$1;)V

    # setter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->mRcvr:Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$002(Lcom/android/internal/telephony/HtcStatus_ePDG;Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;)Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;

    .line 60
    iget-object v1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # getter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->mRcvr:Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$000(Lcom/android/internal/telephony/HtcStatus_ePDG;)Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;

    move-result-object v2

    const-string v3, "com.htc.permission.APP_PLATFORM"

    iget-object v4, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # getter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->h:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$200(Lcom/android/internal/telephony/HtcStatus_ePDG;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 64
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # getter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->mRcvr:Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;
    invoke-static {v1}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$000(Lcom/android/internal/telephony/HtcStatus_ePDG;)Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # getter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->mRcvr:Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$000(Lcom/android/internal/telephony/HtcStatus_ePDG;)Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    iget-object v1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;->this$0:Lcom/android/internal/telephony/HtcStatus_ePDG;

    # setter for: Lcom/android/internal/telephony/HtcStatus_ePDG;->mRcvr:Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;
    invoke-static {v1, v4}, Lcom/android/internal/telephony/HtcStatus_ePDG;->access$002(Lcom/android/internal/telephony/HtcStatus_ePDG;Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;)Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
