.class public final Lcom/android/server/HtcLogChecker;
.super Ljava/lang/Object;
.source "HtcLogChecker.java"


# static fields
.field public static final DEBUG_FLAG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/server/HtcLogChecker;->getflag()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/HtcLogChecker;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getflag()Z
    .locals 2

    const-string v0, "ro.build.type"

    const-string v1, "userdebug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
