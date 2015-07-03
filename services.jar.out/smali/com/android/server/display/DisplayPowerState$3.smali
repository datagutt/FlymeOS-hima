.class Lcom/android/server/display/DisplayPowerState$3;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # setter for: Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z
    invoke-static {v1, v0}, Lcom/android/server/display/DisplayPowerState;->access$202(Lcom/android/server/display/DisplayPowerState;Z)Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mScreenState:I
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$300(Lcom/android/server/display/DisplayPowerState;)I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$400(Lcom/android/server/display/DisplayPowerState;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$500(Lcom/android/server/display/DisplayPowerState;)I

    move-result v0

    :cond_0
    # getter for: Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mScreenState:I
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$300(Lcom/android/server/display/DisplayPowerState;)I

    move-result v1

    if-eq v1, v4, :cond_1

    const-string v1, "XAN-DPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSUR bn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerState;->access$500(Lcom/android/server/display/DisplayPowerState;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$700(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mScreenState:I
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerState;->access$300(Lcom/android/server/display/DisplayPowerState;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setState(II)Z

    move-result v1

    if-eqz v1, :cond_4

    # getter for: Lcom/android/server/display/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$800()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "XAN-DPS"

    const-string v2, "Screen ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # setter for: Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z
    invoke-static {v1, v4}, Lcom/android/server/display/DisplayPowerState;->access$902(Lcom/android/server/display/DisplayPowerState;Z)Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # invokes: Lcom/android/server/display/DisplayPowerState;->invokeCleanListenerIfNeeded()V
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$1000(Lcom/android/server/display/DisplayPowerState;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    # getter for: Lcom/android/server/display/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$800()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "XAN-DPS"

    const-string v2, "Screen not ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
