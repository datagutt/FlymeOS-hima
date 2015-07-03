.class Lcom/android/server/display/DisplayManagerService$1$1;
.super Landroid/database/ContentObserver;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayManagerService$1;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$1;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$1$1;->this$1:Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1$1;->this$1:Lcom/android/server/display/DisplayManagerService$1;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->updateColorTemperatureSettings()V
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4800(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method
