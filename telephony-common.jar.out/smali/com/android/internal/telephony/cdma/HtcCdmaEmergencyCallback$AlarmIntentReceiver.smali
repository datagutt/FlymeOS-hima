.class Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaEmergencyCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;
    .param p2, "x1"    # Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 336
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.telephony.waiting_ecm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    const-string v1, "tmr-out"

    # invokes: Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->dumpStatus(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->access$000(Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    # invokes: Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->cancelDelayReportingEmergencyCallStateEnding(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaEmergencyCallback;Ljava/lang/Boolean;)V

    .line 342
    :cond_0
    return-void
.end method
