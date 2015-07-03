.class Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;
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
    name = "GSensorTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HtcAngleDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/display/HtcAngleDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;-><init>(Lcom/android/server/display/HtcAngleDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGSensorTimeout:Z
    invoke-static {v0, v1}, Lcom/android/server/display/HtcAngleDetector;->access$802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    return-void
.end method
