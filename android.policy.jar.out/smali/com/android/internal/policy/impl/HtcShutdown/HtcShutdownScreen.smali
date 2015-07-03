.class public Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;
.super Landroid/app/Dialog;
.source "HtcShutdownScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcShutdownScreen"


# instance fields
.field private mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

.field mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

.field private mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

.field private mSilentMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mSilentMode:Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    new-instance v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$1;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private initAudio()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v2, v2, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->audio:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcShutdownScreen"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcShutdownScreen"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcShutdownScreen"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcShutdownScreen"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initLayout()V
    .locals 7

    const/16 v4, 0x18

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v2, v2, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v5, v5, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngLandPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget v6, v6, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->fps:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->setOnAnimationListener(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->setContentView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/customize/resource/shutdown.zip"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    const-string v3, "/system/customize/resource/shutdown.zip"

    iput-object v3, v2, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    const/16 v3, 0xf

    iput v3, v2, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->fps:I

    new-instance v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget-object v5, v5, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngLandPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    iget v6, v6, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->fps:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->setOnAnimationListener(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mAnimationView:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v0, "HtcShutdownScreen"

    const-string v1, "cancel - stop media"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onActivityResult()V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v0, "HtcShutdownScreen"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28

    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance v22, Ljava/io/File;

    const-string v24, "system/etc/customer/shutdown.gif"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_7

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_0

    const-string v24, "HtcShutdownScreen"

    const-string v25, "Operator specific resource."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v24, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    const-string v25, "system/etc/customer/shutdown.gif"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    const-string v25, "system/etc/customer/shutdown.mp3"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->audio:Ljava/lang/String;

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->audio:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1e

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->audio:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "mode_ringer"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_3

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    :cond_3
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mSilentMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :cond_4
    :goto_2
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_5

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "image ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bgPath ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->bgPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cust_Shutdown_animation: ZIP> \""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "pngLandPath = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->pngLandPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cust_Shutdown_animation: Audio> \""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->audio:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "screenX ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->screenX:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "screenY ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->screenY:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v25, "HtcShutdownScreen"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cust_Shutdown_animation: useAudio> \""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z

    move/from16 v24, v0

    if-eqz v24, :cond_20

    const-string v24, "Yes"

    :goto_3
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, "\""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mSilentMode ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mSilentMode:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mSilentMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->initAudio()V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->initLayout()V

    return-void

    :cond_7
    :try_start_2
    new-instance v24, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    const-string v24, "ro.cid"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/4 v4, 0x0

    const-string v18, "/carrier/default.xml"

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_a

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_8

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "omadm_config_path:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_13

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "/system/customize/CID/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_a

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_9

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "omadm_cid_config_path:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    const/4 v4, 0x1

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_a

    const-string v24, "HtcShutdownScreen"

    const-string v25, "htcshutdownscreen, use omadm cid animation"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    if-nez v4, :cond_1

    const/4 v3, 0x0

    const-string v13, "/data/data/cw/animation.xml"

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_c

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_b

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cw_config_path:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    const/4 v3, 0x1

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_c

    const-string v24, "HtcShutdownScreen"

    const-string v25, "htcshutdownscreen, use cw animation"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-nez v3, :cond_1

    const-string v11, "/data/data/com.htc.CustomizationSetup/files/boot_anim_mns"

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v24

    if-eqz v24, :cond_19

    const/4 v8, 0x0

    const/16 v21, 0x0

    :try_start_3
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/FileReader;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v21

    if-eqz v9, :cond_21

    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v8, 0x0

    :cond_d
    :goto_5
    if-eqz v21, :cond_18

    :try_start_6
    new-instance v20, Ljava/io/File;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_17

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_e

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sim_config_path:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    const/4 v5, 0x1

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_f

    const-string v24, "HtcShutdownScreen"

    const-string v25, "use sim animation"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    if-nez v5, :cond_1

    if-eqz v23, :cond_1c

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_10

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CID:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "/system/customize/CID/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_11

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "config_path:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_12

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Parse "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "failed.  Use default.xml."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    const-string v25, "/system/customize/CID/default.xml"

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v14

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_2

    const-string v24, "HtcShutdownScreen"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    const/4 v4, 0x1

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_a

    const-string v24, "HtcShutdownScreen"

    const-string v25, "htcshutdownscreen, use omadm animation"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_1
    move-exception v14

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_14

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception closing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_14
    move-object v8, v9

    goto/16 :goto_5

    :catch_2
    move-exception v14

    :goto_7
    :try_start_8
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_15

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception reading "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_15
    if-eqz v8, :cond_d

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    const/4 v8, 0x0

    goto/16 :goto_5

    :catch_3
    move-exception v14

    :try_start_a
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_d

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception closing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_5

    :catchall_0
    move-exception v24

    :goto_8
    if-eqz v8, :cond_16

    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    const/4 v8, 0x0

    :cond_16
    :goto_9
    :try_start_c
    throw v24

    :catch_4
    move-exception v14

    sget-boolean v25, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v25, :cond_16

    const-string v25, "HtcShutdownScreen"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception closing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :cond_17
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_f

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " does not eixst"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_18
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_f

    const-string v24, "HtcShutdownScreen"

    const-string v25, "Empty path"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_19
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_f

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " does not exist"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1a
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_1b

    const-string v24, "HtcShutdownScreen"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Can\'t load "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".  Use default.xml."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    const-string v25, "/system/customize/CID/default.xml"

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    const-string v25, "/system/customize/CID/default.xml"

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mReader:Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mData:Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1

    :cond_1f
    const/16 v24, 0x0

    :try_start_d
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mSilentMode:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v14

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_4

    const-string v24, "HtcShutdownScreen"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_20
    const-string v24, "No"

    goto/16 :goto_3

    :catchall_1
    move-exception v24

    move-object v8, v9

    goto/16 :goto_8

    :catch_6
    move-exception v14

    move-object v8, v9

    goto/16 :goto_7

    :cond_21
    move-object v8, v9

    goto/16 :goto_5
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v0, "HtcShutdownScreen"

    const-string v1, "onStop - stop media"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShutdownListener(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    return-void
.end method
