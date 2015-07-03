.class Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrighterOnlyOffTimeoutTask"
.end annotation


# instance fields
.field private mDelay:I

.field final synthetic this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->mDelay:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HABCtrl"

    const-string v1, "timeout to update BrightnessOnlyOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z
    invoke-static {v0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1802(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)Z

    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z
    invoke-static {v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1600(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HABCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: OFF, Skip. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z
    invoke-static {v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1600(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HABCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: OFF ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->mDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    iget v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;->mDelay:I

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->reset(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$2100(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)V

    goto :goto_0
.end method
