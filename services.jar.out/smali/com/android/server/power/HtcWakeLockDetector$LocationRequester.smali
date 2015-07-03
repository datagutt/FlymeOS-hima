.class public Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationRequester"
.end annotation


# instance fields
.field id:I

.field pid:I

.field processName:Ljava/lang/String;

.field provider:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HtcWakeLockDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector$LocationRequester;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
