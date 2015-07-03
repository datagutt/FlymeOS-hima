.class Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HtcAngleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShakeAwakeTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HtcAngleDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/display/HtcAngleDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;-><init>(Lcom/android/server/display/HtcAngleDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v0}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcAngleDetector"

    const-string v1, "ShakeAwakeTimeout: timeout."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsShakeAwake:Z
    invoke-static {v0, v1}, Lcom/android/server/display/HtcAngleDetector;->access$3602(Lcom/android/server/display/HtcAngleDetector;Z)Z

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v0}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    return-void
.end method
