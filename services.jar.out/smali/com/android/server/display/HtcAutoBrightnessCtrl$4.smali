.class Lcom/android/server/display/HtcAutoBrightnessCtrl$4;
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

    iput-object p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$4;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "HABCtrl"

    const-string v1, "mTPEAlgorithmTimeoutTask: TPE algorithm. restore."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$4;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
    invoke-static {v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->forceBrightnessUpdate(I)V

    return-void
.end method
