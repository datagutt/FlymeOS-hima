.class final Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$2;
.super Ljava/lang/Object;
.source "HtcShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->access$100(Landroid/content/Context;)V

    return-void
.end method
