.class Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessInfo"
.end annotation


# instance fields
.field public importance:I

.field public name:Ljava/lang/String;

.field public strImportance:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;->this$1:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;)V

    return-void
.end method
