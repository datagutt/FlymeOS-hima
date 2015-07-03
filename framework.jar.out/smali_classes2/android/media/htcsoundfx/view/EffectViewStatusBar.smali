.class public Landroid/media/htcsoundfx/view/EffectViewStatusBar;
.super Ljava/lang/Object;
.source "EffectViewStatusBar.java"

# interfaces
.implements Landroid/media/htcsoundfx/view/EffectViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectViewStatusBar"


# instance fields
.field private mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

.field private mLock:Ljava/lang/Object;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mVisiable:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mLock:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->setIcon(Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V

    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-void
.end method

.method public static generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;
    .locals 2

    new-instance v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    new-instance v1, Landroid/media/htcsoundfx/view/EffectViewStatusBar;

    invoke-direct {v1}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;-><init>(Landroid/media/htcsoundfx/view/EffectViewStatusBar;)V

    iput-object p0, v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->slot:Ljava/lang/String;

    iput p1, v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->iconId:I

    iput p2, v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->iconLevel:I

    iput-object p3, v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->contentDescription:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    iget-object v1, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v0, "EffectViewStatusBar"

    const-string v2, "hide"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v2, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iget-object v2, v2, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->slot:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    return v0
.end method

.method public setIcon(Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "icon is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    if-ne v1, p1, :cond_1

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->hide()V

    :cond_2
    iput-object p1, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->show()V

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setView(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "view is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    invoke-virtual {p0, p1}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->setIcon(Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 6

    iget-object v1, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v0, "EffectViewStatusBar"

    const-string v2, "show"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v2, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iget-object v2, v2, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->slot:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iget v3, v3, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->iconId:I

    iget-object v4, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iget v4, v4, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->iconLevel:I

    iget-object v5, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iget-object v5, v5, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
