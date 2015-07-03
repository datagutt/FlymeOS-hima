.class Lcom/android/server/power/HtcWakeLockDetector$1;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/HtcWakeLockDetector;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockDetector;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcWakeLockDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector$1;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$1;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # operator++ for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$008(Lcom/android/server/power/HtcWakeLockDetector;)J

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$1;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsFirstFix:Z
    invoke-static {v0, v4}, Lcom/android/server/power/HtcWakeLockDetector;->access$102(Lcom/android/server/power/HtcWakeLockDetector;Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$1;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J
    invoke-static {v0, v2, v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$002(Lcom/android/server/power/HtcWakeLockDetector;J)J

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$1;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z
    invoke-static {v0, v4}, Lcom/android/server/power/HtcWakeLockDetector;->access$202(Lcom/android/server/power/HtcWakeLockDetector;Z)Z

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$1;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsFirstFix:Z
    invoke-static {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector;->access$102(Lcom/android/server/power/HtcWakeLockDetector;Z)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$1;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$200(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$1;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsFirstFix:Z
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$100(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$1;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # operator++ for: Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$308(Lcom/android/server/power/HtcWakeLockDetector;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$1;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z
    invoke-static {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector;->access$202(Lcom/android/server/power/HtcWakeLockDetector;Z)Z

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$1;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsFirstFix:Z
    invoke-static {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector;->access$102(Lcom/android/server/power/HtcWakeLockDetector;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
