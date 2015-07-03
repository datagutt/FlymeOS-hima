.class Lcom/android/server/display/HtcAutoBrightnessCtrl$9;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$9;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$9;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HABCtrl"

    const-string v1, "mBrighterOnlyTimeoutTask: Timeout!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$9;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    const/16 v1, 0x28

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->reset(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$2100(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)V

    return-void
.end method
