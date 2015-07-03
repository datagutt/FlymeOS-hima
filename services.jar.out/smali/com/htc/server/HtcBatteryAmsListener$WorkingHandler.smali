.class Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;
.super Landroid/os/Handler;
.source "HtcBatteryAmsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcBatteryAmsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcBatteryAmsListener;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcBatteryAmsListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;->this$0:Lcom/htc/server/HtcBatteryAmsListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    # getter for: Lcom/htc/server/HtcBatteryAmsListener;->DEBUG_ON:Z
    invoke-static {}, Lcom/htc/server/HtcBatteryAmsListener;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    const-string v4, "HtcBatteryAmsListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Slow operation for msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :pswitch_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/HtcWrapProcessRecord;

    iget-object v4, p0, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;->this$0:Lcom/htc/server/HtcBatteryAmsListener;

    invoke-virtual {v4, v1}, Lcom/htc/server/HtcBatteryAmsListener;->updateBatteryUsage(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/htc/server/HtcBatteryAmsListener;->DEBUG_ON:Z
    invoke-static {}, Lcom/htc/server/HtcBatteryAmsListener;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "HtcBatteryAmsListener"

    const-string v5, "case MSG_TOP_APP_CHANGED Exception:"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
