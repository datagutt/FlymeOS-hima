.class Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;
.super Landroid/database/ContentObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetheringPermissionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v0, :cond_0

    const-string v0, "Tethering"

    const-string v1, "htcSetupPermittedTether ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Tethering"

    const-string v1, "htcSetupPermittedTether: TetheringGuard not support"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
