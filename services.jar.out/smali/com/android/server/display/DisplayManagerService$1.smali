.class Lcom/android/server/display/DisplayManagerService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService;->registerContentObserverForColorTempChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2200(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_temperature_setting"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/display/DisplayManagerService$1$1;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$4700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/display/DisplayManagerService$1$1;-><init>(Lcom/android/server/display/DisplayManagerService$1;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->updateColorTemperatureSettings()V
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4800(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method
