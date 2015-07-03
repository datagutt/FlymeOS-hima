.class final Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;
.super Landroid/os/Handler;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher$NlpSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitcherWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher$NlpSwitcher;


# direct methods
.method public constructor <init>(Lcom/android/server/ServiceWatcher$NlpSwitcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;->this$0:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleNlpSwitch()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;->this$0:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    # invokes: Lcom/android/server/ServiceWatcher$NlpSwitcher;->getNlpSettings()I
    invoke-static {v1}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->access$600(Lcom/android/server/ServiceWatcher$NlpSwitcher;)I

    move-result v0

    const-string v1, "NlpSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_NLP_SWITCH old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;->this$0:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    invoke-virtual {v3}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->getCurrentMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;->this$0:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    # invokes: Lcom/android/server/ServiceWatcher$NlpSwitcher;->setCurrentMode(I)V
    invoke-static {v1, v0}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->access$700(Lcom/android/server/ServiceWatcher$NlpSwitcher;I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;->handleNlpSwitch()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
