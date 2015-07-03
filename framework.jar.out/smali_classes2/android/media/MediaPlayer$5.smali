.class Landroid/media/MediaPlayer$5;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MediaPlayer"

    const-string v1, "get application context from main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    # setter for: Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->access$2802(Landroid/media/MediaPlayer;Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method
