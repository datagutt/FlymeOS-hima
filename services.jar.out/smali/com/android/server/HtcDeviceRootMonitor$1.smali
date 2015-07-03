.class Lcom/android/server/HtcDeviceRootMonitor$1;
.super Landroid/os/Handler;
.source "HtcDeviceRootMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcDeviceRootMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcDeviceRootMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/HtcDeviceRootMonitor;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/HtcDeviceRootMonitor$1;->this$0:Lcom/android/server/HtcDeviceRootMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.verizon.security.ROOT_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "status"

    const-string v2, "ro.td"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v4, -0x1

    :try_start_0
    invoke-static {v1, v2, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/android/server/HtcDeviceRootMonitor$1;->this$0:Lcom/android/server/HtcDeviceRootMonitor;

    # getter for: Lcom/android/server/HtcDeviceRootMonitor;->mPeriod:I
    invoke-static {v2}, Lcom/android/server/HtcDeviceRootMonitor;->access$000(Lcom/android/server/HtcDeviceRootMonitor;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/HtcDeviceRootMonitor$1;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HtcDeviceRootMonitor"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-wide/32 v4, 0xea60

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/HtcDeviceRootMonitor$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method
