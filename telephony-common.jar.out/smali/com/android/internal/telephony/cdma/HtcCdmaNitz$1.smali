.class Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaNitz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaNitz;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 713
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->sendEmptyMessage(I)Z

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
