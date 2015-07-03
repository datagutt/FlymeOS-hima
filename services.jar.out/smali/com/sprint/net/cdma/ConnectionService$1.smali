.class Lcom/sprint/net/cdma/ConnectionService$1;
.super Landroid/telephony/PhoneStateListener;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/cdma/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/net/cdma/ConnectionService;


# direct methods
.method constructor <init>(Lcom/sprint/net/cdma/ConnectionService;)V
    .locals 0

    iput-object p1, p0, Lcom/sprint/net/cdma/ConnectionService$1;->this$0:Lcom/sprint/net/cdma/ConnectionService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    iget-object v0, p0, Lcom/sprint/net/cdma/ConnectionService$1;->this$0:Lcom/sprint/net/cdma/ConnectionService;

    iput-object p1, v0, Lcom/sprint/net/cdma/ConnectionService;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/sprint/net/cdma/ConnectionService$1;->this$0:Lcom/sprint/net/cdma/ConnectionService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged CdmaRoamingIndicator ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionService$1;->this$0:Lcom/sprint/net/cdma/ConnectionService;

    iget-object v2, v2, Lcom/sprint/net/cdma/ConnectionService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sprint/net/cdma/ConnectionService;->access$000(Lcom/sprint/net/cdma/ConnectionService;Ljava/lang/String;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    iget-object v0, p0, Lcom/sprint/net/cdma/ConnectionService$1;->this$0:Lcom/sprint/net/cdma/ConnectionService;

    iput-object p1, v0, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/sprint/net/cdma/ConnectionService$1;->this$0:Lcom/sprint/net/cdma/ConnectionService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged rsrp ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionService$1;->this$0:Lcom/sprint/net/cdma/ConnectionService;

    iget-object v2, v2, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rsrq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionService$1;->this$0:Lcom/sprint/net/cdma/ConnectionService;

    iget-object v2, v2, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionService$1;->this$0:Lcom/sprint/net/cdma/ConnectionService;

    iget-object v2, v2, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sprint/net/cdma/ConnectionService;->access$000(Lcom/sprint/net/cdma/ConnectionService;Ljava/lang/String;)V

    return-void
.end method
