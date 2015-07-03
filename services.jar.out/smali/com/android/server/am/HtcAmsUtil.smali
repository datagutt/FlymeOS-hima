.class final Lcom/android/server/am/HtcAmsUtil;
.super Ljava/lang/Object;
.source "HtcAmsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;
    }
.end annotation


# static fields
.field private static final DYING_PROCESSES_COLUMN_COUNT:I = 0x14

.field private static final DYING_PROCESSES_FORMAT:[I

.field static HIGH_MEM_MB_SIZE:I = 0x0

.field static final TAG:Ljava/lang/String; = "HtcAmsUtil"

.field static sCpuMaxFreq:J

.field static sFirstBgProcWhiteList:[Ljava/lang/String;

.field static sHasDynamicSwitch:Z

.field static sHasVzwLogger:Z

.field static final sHtcImportantProcesses:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sIsSupport3LM:Z

.field static sSkuId:I

.field static sTotalRamSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x14

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/am/HtcAmsUtil;->sIsSupport3LM:Z

    sput-boolean v3, Lcom/android/server/am/HtcAmsUtil;->sHasDynamicSwitch:Z

    sput-boolean v3, Lcom/android/server/am/HtcAmsUtil;->sHasVzwLogger:Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.process.acore"

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->sFirstBgProcWhiteList:[Ljava/lang/String;

    sput v3, Lcom/android/server/am/HtcAmsUtil;->sSkuId:I

    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:J

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    const/16 v1, 0x514

    sput v1, Lcom/android/server/am/HtcAmsUtil;->HIGH_MEM_MB_SIZE:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->sHtcImportantProcesses:Landroid/util/ArraySet;

    new-array v1, v4, [I

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    const/16 v2, 0x203a

    aput v2, v1, v0

    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x200a

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCpuMaxFreq()J
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    new-array v0, v7, [I

    const/16 v2, 0x2020

    aput v2, v0, v6

    new-array v1, v7, [J

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v2, v0, v8, v1, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v2, v1, v6

    sput-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    :cond_0
    const-string v2, "HtcAmsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpuinfo_max_freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    return-wide v2
.end method

.method static getTotalRamSize()J
    .locals 4

    sget-wide v0, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:J

    const-string v0, "HtcAmsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalRamStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-wide v0, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:J

    return-wide v0
.end method

.method static init()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->loadCustomizationConfig()V

    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->initHtcImportantProcesses()V

    return-void
.end method

.method static initHtcImportantProcesses()V
    .locals 6

    sget-object v0, Lcom/android/server/am/HtcAmsUtil;->sFirstBgProcWhiteList:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->sHtcImportantProcesses:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->isHighMemDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "HtcAmsUtil"

    const-string v5, "add camera into white list"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->sHtcImportantProcesses:Landroid/util/ArraySet;

    const-string v5, "com.android.camera"

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->sHtcImportantProcesses:Landroid/util/ArraySet;

    const-string v5, "com.htc.camera"

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static isDyingProcess(IJ)Z
    .locals 19

    const/16 v13, 0x14

    :try_start_0
    new-array v12, v13, [J

    const-string v13, "/proc/dying_processes"

    sget-object v14, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v14, v15, v12, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "HtcAmsUtil"

    const-string v14, "/proc/dying_processes not available"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    const/4 v13, 0x0

    aget-wide v14, v12, v13

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_1

    const-string v13, "HtcAmsUtil"

    const-string v14, "/proc/dying_processes no record"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/16 v13, 0x14

    if-ge v7, v13, :cond_4

    aget-wide v4, v12, v7

    move/from16 v0, p0

    int-to-long v14, v0

    cmp-long v13, v14, v4

    if-nez v13, :cond_3

    add-int/lit8 v13, v7, 0x1

    aget-wide v8, v12, v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v14, 0xa

    mul-long/2addr v14, v8

    sub-long v2, v10, v14

    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: deadTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " createTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v13, v2, p1

    if-lez v13, :cond_2

    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: dying proc="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: dead past proc="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_1

    :catch_0
    move-exception v6

    const-string v13, "HtcAmsUtil"

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method static isHighMemDevice()Z
    .locals 4

    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->getTotalRamSize()J

    move-result-wide v0

    sget v2, Lcom/android/server/am/HtcAmsUtil;->HIGH_MEM_MB_SIZE:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static loadCustomizationConfig()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v4, "HtcAmsUtil"

    const-string v5, "Cannot get HtcCustomizationManager instance"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v4, "Android_App_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "AMS_feature_FirstBackgroundProcess_white_list"

    sget-object v5, Lcom/android/server/am/HtcAmsUtil;->sFirstBgProcWhiteList:[Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sput-object v0, Lcom/android/server/am/HtcAmsUtil;->sFirstBgProcWhiteList:[Ljava/lang/String;

    :cond_1
    :goto_1
    const-string v4, "System"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "support_3lm"

    sget-boolean v5, Lcom/android/server/am/HtcAmsUtil;->sIsSupport3LM:Z

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/HtcAmsUtil;->sIsSupport3LM:Z

    const-string v4, "sku_id"

    sget v5, Lcom/android/server/am/HtcAmsUtil;->sSkuId:I

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/am/HtcAmsUtil;->sSkuId:I

    :goto_2
    const-string v4, "Android_Kernel"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "support_dynamic_switch"

    sget-boolean v5, Lcom/android/server/am/HtcAmsUtil;->sHasDynamicSwitch:Z

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/HtcAmsUtil;->sHasDynamicSwitch:Z

    :goto_3
    const-string v4, "VZWQualityLogger"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "support_quality_logger"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/HtcAmsUtil;->sHasVzwLogger:Z

    :goto_4
    const-string v4, "HtcAmsUtil"

    const-string v5, "loadCustomizationConfig completed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "HtcAmsUtil"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v4, "HtcAmsUtil"

    const-string v5, "Cannot get Android_App_Framework customization reader"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v4, "HtcAmsUtil"

    const-string v5, "Cannot get System customization reader"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v4, "HtcAmsUtil"

    const-string v5, "Cannot get Android_Kernel customization reader"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-string v4, "HtcAmsUtil"

    const-string v5, "Cannot get VZWQualityLogger reader"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method static notifyVzwLogger(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 5

    :try_start_0
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.VZW_LOGGER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.vzwqualitylogger"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "event_code"

    if-eqz v2, :cond_2

    const-string v3, "Q004"

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "Q006"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "HtcAmsUtil"

    const-string v4, "Failed to notify VzwLogger"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
