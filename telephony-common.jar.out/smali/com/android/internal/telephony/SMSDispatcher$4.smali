.class Lcom/android/internal/telephony/SMSDispatcher$4;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher;->showRetryMessageDialog(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;

.field final synthetic val$error:I

.field final synthetic val$smstracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V
    .locals 0

    .prologue
    .line 1924
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->val$smstracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iput p3, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1926
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1927
    const-string v0, "SMSDispatcher"

    const-string v1, "click YES of negbutton to resend sms"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->val$smstracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1937
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    # getter for: Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->access$100(Lcom/android/internal/telephony/SMSDispatcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1938
    return-void

    .line 1929
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 1931
    const-string v0, "SMSDispatcher"

    const-string v1, "click NO of negbutton to cancel"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->val$smstracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->val$error:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1935
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$4;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
