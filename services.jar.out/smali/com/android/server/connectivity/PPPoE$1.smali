.class Lcom/android/server/connectivity/PPPoE$1;
.super Landroid/os/HandlerThread;
.source "PPPoE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PPPoE;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PPPoE;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PPPoE;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/PPPoE$1;->this$0:Lcom/android/server/connectivity/PPPoE;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 1

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$1;->this$0:Lcom/android/server/connectivity/PPPoE;

    # invokes: Lcom/android/server/connectivity/PPPoE;->initInThread()V
    invoke-static {v0}, Lcom/android/server/connectivity/PPPoE;->access$000(Lcom/android/server/connectivity/PPPoE;)V

    return-void
.end method
