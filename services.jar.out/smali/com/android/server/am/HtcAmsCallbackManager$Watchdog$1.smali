.class Lcom/android/server/am/HtcAmsCallbackManager$Watchdog$1;
.super Landroid/os/Handler;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

.field final synthetic val$this$0:Lcom/android/server/am/HtcAmsCallbackManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;Landroid/os/Looper;Lcom/android/server/am/HtcAmsCallbackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog$1;->this$1:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    iput-object p3, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog$1;->val$this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog$1;->this$1:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    iget-object v0, v0, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;
    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager;->access$400(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    :cond_0
    return-void
.end method
