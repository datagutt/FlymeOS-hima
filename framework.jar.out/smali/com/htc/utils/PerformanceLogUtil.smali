.class public Lcom/htc/utils/PerformanceLogUtil;
.super Ljava/lang/Object;
.source "PerformanceLogUtil.java"


# static fields
.field public static final Enabled:Z

.field public static LOG_HEADER:Ljava/lang/String; = null

.field public static PERFORMANCE_TEST_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "Perf"

.field private static mCurRotatingAppTokenStr:Ljava/lang/String;

.field private static mInitedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastAnimationStopComponent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    const-string v0, ""

    sput-object v0, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    sput-boolean v1, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformanceTest()I

    move-result v0

    if-lez v0, :cond_1

    sput-boolean v2, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    const-string v0, "[AutoProf]("

    sput-object v0, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    :cond_1
    sput-object v3, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    sput-object v3, Lcom/htc/utils/PerformanceLogUtil;->mLastAnimationStopComponent:Ljava/lang/String;

    sput-object v3, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUsLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string v0, "NULL"

    return-object v0
.end method

.method public static getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    const-string v0, "NULL"

    return-object v0
.end method

.method public static logAddAppToken(Ljava/lang/String;)V
    .locals 3

    sget-boolean v1, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "103) Add new Window App Token { HistoryRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logCheckPendingRotate()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "220) Rotate animation stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "112) Back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Perf"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logDisplayActivity(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "133) Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logFinishDrawing(Landroid/content/Context;)V
    .locals 6

    sget-boolean v4, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {v2, v4}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "111) Finish drawing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", label="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Perf"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static logHandleConfigurationChangedEnd(J)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "214) Top app configuration change finished, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logHandleConfigurationChangedStart(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {v3, v5}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "212) Going to change top app configuration, orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "Perf"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logHomeKeyTriggered()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "114) Home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logHtcHandleRotateAnimation(F)V
    .locals 3

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "219) Rotate animation start, scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-object v1, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static logHtcHandleRotateAnimation(Landroid/view/IApplicationToken;I)V
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "219) Rotate animation start, token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logMoveAppTokensToTop(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "104) Move App tokens top, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/utils/PerformanceLogUtil;->parseComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logNoteStartWakeLock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v1, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "SCREEN_FROZEN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "partial"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "211) Start rotating, SCREEN_FROZEN partial wakelock held"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logNoteStopWakeLock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v1, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "SCREEN_FROZEN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "partial"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "215) Finish rotating, SCREEN_FROZEN partial wakelock released "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logOnCreateActivity(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    :cond_0
    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "107) First init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static logPerformConfigurationChange(Landroid/content/ComponentCallbacks;J)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, p1

    const-wide/16 v4, 0x32

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "213) Configutation change callback { Callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Perf"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logSetRotation(Landroid/view/IApplicationToken;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/utils/PerformanceLogUtil;->parseComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "224) Set rotation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logShowActionBarOverflowMenu()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "134) Show Action Bar Overflow Menu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logStartProcessLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    sget-boolean v1, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "102) Starting process { Process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ActivityName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "}, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logWindowAnimationStop(Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/htc/utils/PerformanceLogUtil;->parseComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/htc/utils/PerformanceLogUtil;->mLastAnimationStopComponent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sput-object v0, Lcom/htc/utils/PerformanceLogUtil;->mLastAnimationStopComponent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "130) Anim stop, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Perf"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static parseComponentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x20

    if-nez p0, :cond_0

    const-string v6, "NULL"

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_1
    if-ltz v3, :cond_3

    if-eqz v2, :cond_2

    aget-char v6, v5, v3

    if-ne v6, v7, :cond_1

    move v1, v3

    const/4 v2, 0x0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    aget-char v6, v5, v3

    if-ne v6, v7, :cond_1

    add-int/lit8 v0, v3, 0x1

    :cond_3
    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "(PARSING_FAIL)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
