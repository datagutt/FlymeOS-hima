.class Lcom/android/internal/telephony/dataconnection/DcTracker$3;
.super Ljava/lang/Thread;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 4917
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4919
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "roamingSettingLteNational"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getSPCSLTERoamingSetting(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteNationalRoaming:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$502(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 4920
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "roamingSettingLteInternational"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getSPCSLTERoamingSetting(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteInternationalRoaming:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$602(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 4921
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access db- LteNationalRomaing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteNationalRoaming:Z
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", LteInternationalRoaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteInternationalRoaming:Z
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4922
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mDbReloadThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$700(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1

    .line 4923
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mDbChangeDuringReload:Z
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$800(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4924
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mDbChangeDuringReload:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$802(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 4925
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v3, 0x42087

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4929
    :goto_0
    monitor-exit v1

    .line 4930
    return-void

    .line 4927
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v3, 0x42088

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4929
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
