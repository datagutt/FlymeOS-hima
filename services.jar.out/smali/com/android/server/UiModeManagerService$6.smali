.class Lcom/android/server/UiModeManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->checkHtcAutomotiveInstalled(Landroid/content/Context;)Z
    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/android/server/UiModeManagerService;->mbIsHtcAutoMotiveInstalled:Z
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->access$902(Lcom/android/server/UiModeManagerService;Z)Z

    return-void
.end method
