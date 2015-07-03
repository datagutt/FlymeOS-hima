.class Lcom/android/internal/telephony/HtcUiccPowerManager$2;
.super Ljava/lang/Object;
.source "HtcUiccPowerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcUiccPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcUiccPowerManager;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$2;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 433
    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trigger sim hot swap again!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$2;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    const/4 v1, -0x1

    # invokes: Lcom/android/internal/telephony/HtcUiccPowerManager;->waitSIMStateChange(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$600(Lcom/android/internal/telephony/HtcUiccPowerManager;I)V

    .line 435
    return-void
.end method
