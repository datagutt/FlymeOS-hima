.class final Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NlpSwitcherObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindBestPackage(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "NlpSwitcher"

    const-string v2, "unbind++"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # invokes: Lcom/android/server/ServiceWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)V

    const-string v0, "NlpSwitcher"

    const-string v2, "unbind--"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v3}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NlpSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Observer++, CurrentPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->bindBestPackage(Z)V

    :goto_0
    const-string v2, "NlpSwitcher"

    const-string v3, "Observer--"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # invokes: Lcom/android/server/ServiceWatcher;->isHtcNlp(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/android/server/ServiceWatcher;->access$400(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    move-result v0

    const-string v3, "NlpSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHtcNlp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;
    invoke-static {v5}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;)Lcom/android/server/ServiceWatcher$NlpSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->getCurrentMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/android/server/ServiceWatcher$NlpSwitcher;->DEFAULT_MODE:I

    iget-object v4, p0, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mNlpSwitcher:Lcom/android/server/ServiceWatcher$NlpSwitcher;
    invoke-static {v4}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;)Lcom/android/server/ServiceWatcher$NlpSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->getCurrentMode()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->bindBestPackage(Z)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/ServiceWatcher$NlpSwitcherObserver;->bindBestPackage(Z)V

    goto :goto_0
.end method
