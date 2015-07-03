.class Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;
.super Landroid/os/Handler;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;)V
    .locals 0

    .prologue
    .line 5330
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5333
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 5334
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 5356
    :goto_0
    return-void

    .line 5336
    :pswitch_0
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "SUPPLY_PIN_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5337
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;

    monitor-enter v2

    .line 5338
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mRetryCount:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->access$1802(Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;I)I

    .line 5339
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 5340
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v3, :cond_0

    .line 5343
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mResult:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->access$1902(Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;I)I

    .line 5350
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->access$2002(Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;Z)Z

    .line 5351
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5352
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 5353
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5345
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;

    const/4 v3, 0x2

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mResult:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->access$1902(Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;I)I

    goto :goto_1

    .line 5348
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->mResult:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->access$1902(Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5334
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
