.class Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Candidate"
.end annotation


# instance fields
.field public heldTime:J

.field public id:I

.field public importance:I

.field public packageName:Ljava/lang/String;

.field public pid:I

.field public pkgList:[Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

.field public uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->this$1:Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;)V

    return-void
.end method
