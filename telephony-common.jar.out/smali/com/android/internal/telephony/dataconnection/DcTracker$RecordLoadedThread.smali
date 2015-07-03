.class Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordLoadedThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 8002
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8005
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->UnsyncConnectionCheck()V

    .line 8006
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "onRecordsLoaded: createAllApnList"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 8007
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    .line 8009
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$900(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 8011
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->updateProfile(I)V
    invoke-static {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1000(Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    .line 8013
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mSimLoaded:Z
    invoke-static {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$002(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z

    .line 8015
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->copyApnSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1100(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOldAllApnSettings:Ljava/util/ArrayList;

    .line 8016
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOldPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 8017
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredDunApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1200(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOldPreferredDunApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 8020
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->getPdpLimit()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1300(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 8022
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1400(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIwlanState:Z

    if-eqz v0, :cond_1

    .line 8023
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->setPdpLimit()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$1500(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 8026
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8027
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "onRecordsLoaded: notifying data availability"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 8028
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "simLoaded"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 8032
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v1, "onRecordsLoaded: Send EVENT_TRY_SETUP_DATA Mesg to setupDataOnConnectableApns"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 8033
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RecordLoadedThread;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const v2, 0x42003

    const-string v3, "simLoaded"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 8034
    return-void
.end method
