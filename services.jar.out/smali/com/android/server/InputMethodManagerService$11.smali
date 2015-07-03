.class Lcom/android/server/InputMethodManagerService$11;
.super Landroid/os/FileObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->screenFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$1600(Lcom/android/server/InputMethodManagerService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManagerService"

    const-string v1, "screenStateFile created, use new mechanism!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->screenStateFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->screenObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mImmsBroadcastReceiver:Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1900(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
