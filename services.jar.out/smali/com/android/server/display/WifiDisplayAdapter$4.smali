.class Lcom/android/server/display/WifiDisplayAdapter$4;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayController;->getPeerExisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayController;->requestConnect(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "sendStatusChangedBroadcast: CONNECTING"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->sendStatusChangedBroadcast(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$400(Lcom/android/server/display/WifiDisplayAdapter;I)V

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "sendStatusChangedBroadcast: NOT_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$4;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->sendStatusChangedBroadcast(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$400(Lcom/android/server/display/WifiDisplayAdapter;I)V

    goto :goto_0
.end method
