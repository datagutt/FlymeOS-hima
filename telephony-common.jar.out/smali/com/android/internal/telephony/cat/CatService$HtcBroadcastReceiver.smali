.class Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.htc.intent.action.NOTIFY_ENTER_HOME"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/high16 v5, 0x40c00000    # 6.0f

    # invokes: Lcom/android/internal/telephony/cat/CatService;->supportSenseVersion(F)Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->notifyScreenIdle()V
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    # getter for: Lcom/android/internal/telephony/cat/CatService;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->access$200()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    const-string v4, "receive local change"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->notifyLocaleChanged()V
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->access$300(Lcom/android/internal/telephony/cat/CatService;)V

    goto :goto_0

    .line 168
    :cond_3
    const-string v4, "com.htc.intent.action.BROADCAST_KEYEVENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 169
    const-string v4, "EXTRA_KEY_KEYCODE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 173
    .local v3, "keycode":I
    if-eq v5, v3, :cond_0

    .line 174
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/cat/CatService;->notifyUserActivity(I)V

    goto :goto_0

    .line 178
    .end local v3    # "keycode":I
    :cond_4
    const-string v4, "com.htc.stk.fakecmd"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 179
    const-string v4, "raw_data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "data":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->access$400(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 182
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->access$400(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/cat/RilMessage;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 184
    .end local v1    # "data":Ljava/lang/String;
    :cond_5
    const-string v4, "com.htc.stk.fakenotify"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 185
    const-string v4, "raw_data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .restart local v1    # "data":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->access$400(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->access$400(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/cat/RilMessage;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 190
    .end local v1    # "data":Ljava/lang/String;
    :cond_6
    const-string v4, "com.htc.stk.fakesimrefresh"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$HtcBroadcastReceiver;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 193
    .local v2, "fakeMsg":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
