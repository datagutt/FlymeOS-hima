.class Lcom/android/server/power/HtcDongleMode$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcDongleMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcDongleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcDongleMode;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcDongleMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HtcDongleMode$1;->this$0:Lcom/android/server/power/HtcDongleMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_1

    const-string v1, "HtcDongleMode"

    const-string v2, "onReceive: intent = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.HTCMirrorLinkServer.CONNECTION_ALIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/HtcDongleMode$1;->this$0:Lcom/android/server/power/HtcDongleMode;

    # getter for: Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z
    invoke-static {v1}, Lcom/android/server/power/HtcDongleMode;->access$000(Lcom/android/server/power/HtcDongleMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HtcDongleMode"

    const-string v2, "onReceive: MIRROR_LINK_MODE_ALIVE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/HtcDongleMode$1;->this$0:Lcom/android/server/power/HtcDongleMode;

    # getter for: Lcom/android/server/power/HtcDongleMode;->mDongleMode:Z
    invoke-static {v1}, Lcom/android/server/power/HtcDongleMode;->access$100(Lcom/android/server/power/HtcDongleMode;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "HtcDongleMode"

    const-string v2, "Something wrong in MIRROR LINK"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/power/HtcDongleMode$1;->this$0:Lcom/android/server/power/HtcDongleMode;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/power/HtcDongleMode;->enableDongleMode(Z)V
    invoke-static {v1, v2}, Lcom/android/server/power/HtcDongleMode;->access$200(Lcom/android/server/power/HtcDongleMode;Z)V

    goto :goto_0
.end method
