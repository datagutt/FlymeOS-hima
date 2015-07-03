.class Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;
.super Ljava/lang/Object;
.source "HtcShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object p2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcShutdownThread"

    const-string v1, "Dismissing shutdown screen"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->actionDone()V

    return-void
.end method
