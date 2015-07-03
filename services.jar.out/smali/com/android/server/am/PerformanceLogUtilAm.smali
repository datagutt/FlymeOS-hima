.class public Lcom/android/server/am/PerformanceLogUtilAm;
.super Ljava/lang/Object;
.source "PerformanceLogUtilAm.java"


# static fields
.field public static final Enabled:Z

.field public static LOG_HEADER:Ljava/lang/String; = null

.field public static PERFORMANCE_TEST_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "Perf"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/PerformanceLogUtilAm;->Enabled:Z

    const-string v0, ""

    sput-object v0, Lcom/android/server/am/PerformanceLogUtilAm;->LOG_HEADER:Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/am/PerformanceLogUtilAm;->PERFORMANCE_TEST_MODE:Z

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformanceTest()I

    move-result v0

    if-lez v0, :cond_1

    sput-boolean v2, Lcom/android/server/am/PerformanceLogUtilAm;->PERFORMANCE_TEST_MODE:Z

    const-string v0, "[AutoProf]("

    sput-object v0, Lcom/android/server/am/PerformanceLogUtilAm;->LOG_HEADER:Ljava/lang/String;

    :cond_1
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

.method public static logActivityStackStartPausingLocked(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 5

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {p0, v3, v4}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, p2, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {p0, v3, v4}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/PerformanceLogUtilAm;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "115) Pause activity record, curr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", next="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Perf"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logResumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 7

    sget-boolean v5, Lcom/android/server/am/PerformanceLogUtilAm;->PERFORMANCE_TEST_MODE:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, ""

    const-string v0, ""

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/am/PerformanceLogUtilAm;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "124) Resume top activity record, prev={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}, next={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Perf"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logStartActivityLocked(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 7

    sget-boolean v4, Lcom/android/server/am/PerformanceLogUtilAm;->PERFORMANCE_TEST_MODE:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x401

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v4, p1, p2, v5, v6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-static {v2, v4}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {v2, v4}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/PerformanceLogUtilAm;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "101) Starting activity {Label="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", FromPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Perf"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method
