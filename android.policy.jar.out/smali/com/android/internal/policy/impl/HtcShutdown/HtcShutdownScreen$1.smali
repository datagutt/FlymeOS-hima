.class Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;
.super Ljava/lang/Object;
.source "HtcShutdownScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->access$000(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->access$000(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onAnimationReady()V
    .locals 2

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcShutdownScreen"

    const-string v1, "onAnimationReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->access$000(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->access$000(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;->onReady()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->access$100(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->access$100(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->access$100(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
