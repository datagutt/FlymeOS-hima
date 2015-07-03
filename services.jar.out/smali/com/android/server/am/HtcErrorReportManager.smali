.class public Lcom/android/server/am/HtcErrorReportManager;
.super Ljava/lang/Object;
.source "HtcErrorReportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcErrorReportManager$Log;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_FOR_FINALIZER_TIMEOUT:Ljava/lang/String; = "finalizer_timeout"

.field public static final EVENT_TYPE_FOR_HOME_RESTART:Ljava/lang/String; = "home_restart"

.field static final IS_SHIPPING_ROM:Z

.field public static final SYSTEM_CRASH_ENTRY:Ljava/lang/String; = "/data/system/error_report/last_crash_msg"

.field public static final SYSTEM_ERROR_REPORT_DIR:Ljava/lang/String; = "/data/system/error_report"

.field static final TAG:Ljava/lang/String;

.field static final htcDebugFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/am/HtcErrorReportManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    invoke-static {}, Lcom/htc/server/report/error/ReportConfig;->isShippingRom()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    return-void
.end method

.method static synthetic access$300(Ljava/io/OutputStreamWriter;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->writeKernelLog(Ljava/io/OutputStreamWriter;I)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->dumpPostInstalledHTCAppInfo(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addErrorToDropBoxForHTC(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 13

    move-object/from16 v0, p9

    invoke-static {v0, p1}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p10, :cond_2

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p10

    invoke-static {v2, v0}, Lcom/android/server/am/HtcErrorReportManager;->isCurrentUser(ILcom/android/server/am/ActivityManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v1, p0

    invoke-static/range {p8 .. p8}, Lcom/android/server/am/HtcErrorReportManager;->isFinalizerTimeoutMessageInner(Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "finalizer_timeout"

    :cond_3
    const/4 v11, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTCInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_0
.end method

.method private static addErrorToDropBoxForHTCInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;)V
    .locals 36

    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Begin---add error logs to dropbox"

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/HtcErrorReportManager;->isSystemServerProcrss(Lcom/android/server/am/ProcessRecord;)Z

    move-result v20

    invoke-static/range {p0 .. p1}, Lcom/android/server/am/HtcErrorReportManager;->generateTag(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "HTC_APP_CRASH"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HTC_APP_ANR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HTC_HOME_RESTART"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HTC_APP_NATIVE_CRASH"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {v5}, Lcom/htc/server/report/up/HtcSystemUPLogger;->addErrorCount(Ljava/lang/String;)V

    :cond_1
    const-string v3, "dropbox"

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/DropBoxManager;

    if-eqz v22, :cond_2

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v3, "native_crash"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz p1, :cond_a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v3, v12, v13, v0, v1}, Lcom/android/server/am/HtcErrorReportManager;->getTombstone(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v23

    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v3, :cond_9

    const-string v3, "mediaserver"

    const-wide/32 v12, 0x1b7740

    invoke-static {v3, v6, v7, v12, v13}, Lcom/android/server/am/HtcErrorReportManager;->getTombstone(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v24

    :goto_1
    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->getSecretKey()[B

    move-result-object v8

    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->getIV()[B

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Type: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v20, :cond_b

    const-string v3, "Process: system_server\n"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v3, "Time: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_10

    monitor-enter p11

    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "dropboxTag"

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "entryTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "tombstoneName"

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "mediaServerTombstoneName"

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "errorReportKey"

    invoke-virtual {v3, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "errorReportIv"

    invoke-virtual {v3, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v3, :cond_7

    const-string v3, "crash"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p8, :cond_7

    const-string v3, "java.lang.OutOfMemoryError"

    move-object/from16 v0, p8

    iget-object v4, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "oomPid"

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v27, v0

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v33

    const-string v3, "Flags: 0x"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v28, 0x0

    :goto_3
    :try_start_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_c

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    const-string v3, "Package: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v33, :cond_8

    const/4 v3, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v31

    if-eqz v31, :cond_8

    const-string v3, " v"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v3, " ("

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_4
    :try_start_3
    const-string v3, "\n"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_a
    const/16 v23, 0x0

    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_b
    const-string v3, "Process: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :catch_0
    move-exception v26

    :try_start_4
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting package info: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v26

    :try_start_5
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Error in get Package:"

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_17

    const-string v3, "Application Label: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_5
    and-int/lit8 v3, v27, 0x1

    if-eqz v3, :cond_e

    const-string v3, "System App: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v3, v27, 0x1

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_e
    if-eqz v33, :cond_f

    :try_start_6
    const-string v3, "Installed By: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_f
    :goto_7
    :try_start_7
    monitor-exit p11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_10
    if-eqz p3, :cond_11

    const-string v3, "Activity: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    if-eqz p4, :cond_12

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_12

    if-eqz p1, :cond_12

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v3, v4, :cond_12

    const-string v3, "Parent-Process: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-eqz p4, :cond_13

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_13

    const-string v3, "Parent-Activity: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-eqz p5, :cond_14

    const-string v3, "Subject: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v3, "Build: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Project Branch: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.build.project"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.build.buildline: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.build.buildline"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Changelist: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.build.changelist"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Release: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Number of hibernations: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sys.shutdown.resume.count"

    const-string v11, "0"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Time of resume from hibernation: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sys.shutdown.resume.timestamp"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Bootloader: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.bootloader"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Radio: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.baseband"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v3, :cond_15

    const-string v3, "Network: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.operator.alpha"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const/16 v35, 0x0

    if-eqz p1, :cond_16

    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v3, :cond_16

    const-string v3, "home_restart"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/am/HtcErrorReportManager;->createIntentForLMKHomeRestart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;J[B[B)Landroid/content/Intent;

    move-result-object v35

    :cond_16
    move-object/from16 v25, v35

    new-instance v10, Lcom/android/server/am/HtcErrorReportManager$1;

    move-object v11, v5

    move-object v12, v8

    move-object v13, v9

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p0

    move-object/from16 v19, p9

    move-object/from16 v21, p10

    invoke-direct/range {v10 .. v25}, Lcom/android/server/am/HtcErrorReportManager$1;-><init>(Ljava/lang/String;[B[BLjava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    if-nez p1, :cond_1b

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_17
    const/16 v30, 0x0

    :try_start_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v30

    if-eqz v30, :cond_d

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v3, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v3, :cond_18

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const-string v3, "Application Label: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    :catch_2
    move-exception v26

    :try_start_9
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting package label: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, "Application Label: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<ERROR>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :catchall_0
    move-exception v3

    monitor-exit p11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v3

    :cond_18
    :try_start_a
    const-string v3, "Application Label: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<UNKOWN>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    :cond_19
    :try_start_b
    const-string v3, "Application Label: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<MULTIPLE_PACKAGE>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_6

    :catch_3
    move-exception v26

    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting installer package: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catch_4
    move-exception v26

    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting installer package: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_7

    :cond_1b
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error dump: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public static canShowHtcDialog(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v0}, Lcom/android/server/am/HtcErrorReportManager;->isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method private static checkTombstone(Ljava/io/File;Ljava/lang/String;)Z
    .locals 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const/4 v9, 0x5

    if-ge v2, v9, :cond_4

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_3
    move-object v0, v1

    move-object v6, v7

    move-object v4, v5

    :goto_4
    return v9

    :catch_0
    move-exception v3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close BufferedReader"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close InputStreamReader"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close FileInputStream"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_5
    if-eqz v7, :cond_6

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_7
    move-object v0, v1

    move-object v6, v7

    move-object v4, v5

    :cond_8
    :goto_7
    const/4 v9, 0x0

    goto :goto_4

    :catch_3
    move-exception v3

    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close BufferedReader"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_4
    move-exception v3

    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close InputStreamReader"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_5
    move-exception v3

    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close FileInputStream"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v6, v7

    move-object v4, v5

    goto :goto_7

    :catch_6
    move-exception v3

    :goto_8
    :try_start_a
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "Exception in check tombstone exist "

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_9

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_9
    :goto_9
    if-eqz v6, :cond_a

    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_a
    :goto_a
    if-eqz v4, :cond_8

    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close FileInputStream"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_8
    move-exception v3

    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close BufferedReader"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_9
    move-exception v3

    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close InputStreamReader"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catchall_0
    move-exception v9

    :goto_b
    if-eqz v0, :cond_b

    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    :cond_b
    :goto_c
    if-eqz v6, :cond_c

    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :cond_c
    :goto_d
    if-eqz v4, :cond_d

    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    :cond_d
    :goto_e
    throw v9

    :catch_a
    move-exception v3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close BufferedReader"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catch_b
    move-exception v3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close InputStreamReader"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :catch_c
    move-exception v3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close FileInputStream"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :catchall_1
    move-exception v9

    move-object v4, v5

    goto :goto_b

    :catchall_2
    move-exception v9

    move-object v6, v7

    move-object v4, v5

    goto :goto_b

    :catchall_3
    move-exception v9

    move-object v0, v1

    move-object v6, v7

    move-object v4, v5

    goto :goto_b

    :catch_d
    move-exception v3

    move-object v4, v5

    goto :goto_8

    :catch_e
    move-exception v3

    move-object v6, v7

    move-object v4, v5

    goto :goto_8

    :catch_f
    move-exception v3

    move-object v0, v1

    move-object v6, v7

    move-object v4, v5

    goto :goto_8
.end method

.method private static final createIntentForLMKHomeRestart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;J[B[B)Landroid/content/Intent;
    .locals 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createIntentForLMKHomeRestart proc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", eventType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v3, p3, v6

    if-lez v3, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.htc.feedback"

    const-string v5, "com.htc.feedback.reportagent.receiver.ReportAgentReceiver"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/ApplicationErrorReport;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    iput-wide p3, v1, Landroid/app/ApplicationErrorReport;->time:J

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, v1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.APP_ERROR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.BUGREPORT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "fromDropBox"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "tag"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "time"

    invoke-virtual {v2, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    const-string v3, "errorReportKey"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v3, "errorReportIv"

    invoke-virtual {v2, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_2
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create intent tag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v4, v5

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v3

    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Error in closing BufferedReader br"

    invoke-static {v6, v7, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Error in closing FileWriter writer"

    invoke-static {v6, v7, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_2
    :try_start_4
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Error in storing log entry message"

    invoke-static {v6, v7, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_3
    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Error in closing FileWriter writer"

    invoke-static {v6, v7, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v3

    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Error in closing BufferedReader br"

    invoke-static {v6, v7, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
    :goto_6
    throw v6

    :catch_5
    move-exception v3

    sget-object v7, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v8, "Error in closing BufferedReader br"

    invoke-static {v7, v8, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_6
    move-exception v3

    sget-object v7, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v8, "Error in closing FileWriter writer"

    invoke-static {v7, v8, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method

.method public static dump(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .locals 3

    sget-boolean v1, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "HtcFeedback is dumping status information"

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string v1, "\n----- DEVICE STATUS -----"

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->sIsDataPartitionReadOnly(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->sGetPartitionInfo(Ljava/io/OutputStreamWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "dumping error"

    invoke-static {v1, v2, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static dumpHomeRestart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;)V
    .locals 12

    sget-object v0, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpHomeRestart, eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v9, p2

    move-object v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTCInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method private static dumpPostInstalledHTCAppInfo(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    const-string v1, "<UNKNOWN>"

    :try_start_0
    const-string v8, "\n----- POST-INSTALLED HTC APP -----\n"

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/android/server/am/HtcErrorReportManager;->isPostInstalledApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, v0, Landroid/content/pm/ApplicationInfo;->hasHtcSignature:Z

    if-eqz v8, :cond_2

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "PackageName="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v8, :cond_5

    move-object v8, v1

    :goto_3
    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v8, ",VersionName="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v8, :cond_6

    move-object v8, v1

    :goto_4
    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v8, ",VersionCode="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v8, ",InstallerPackageName="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    if-nez v4, :cond_4

    move-object v4, v1

    :cond_4
    invoke-virtual {p1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v2

    sget-object v8, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v9, "IOException in dumpPostInstalledHTCAppInfo"

    invoke-static {v8, v9, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    sget-object v8, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v9, "Exception in dumpPostInstalledHTCAppInfo"

    invoke-static {v8, v9, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static encryptFile(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/io/File;
    .locals 16

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/misc/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".dbox_tmp"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v12, 0x1

    :try_start_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v8, v12, v0, v1}, Lcom/htc/server/report/error/LogStream;->concatenateOutputStream(Ljava/io/OutputStream;Z[B[B)Ljava/io/OutputStream;

    move-result-object v9

    const/16 v12, 0x400

    new-array v2, v12, [B

    :goto_0
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v12, 0x0

    invoke-virtual {v9, v2, v12, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v5, v6

    move-object v7, v8

    :goto_1
    :try_start_3
    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception in encryptFile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_3
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_4
    return-object v11

    :cond_0
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_5
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_6
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    move-object v5, v6

    move-object v7, v8

    goto :goto_4

    :catch_1
    move-exception v4

    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in fis.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_2
    move-exception v4

    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in os.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_3
    move-exception v4

    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in fos.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    move-object v7, v8

    goto :goto_4

    :catch_4
    move-exception v4

    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in fis.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_5
    move-exception v4

    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in os.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_6
    move-exception v4

    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in fos.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catchall_0
    move-exception v12

    :goto_7
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :goto_8
    :try_start_b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :goto_9
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :goto_a
    throw v12

    :catch_7
    move-exception v4

    sget-object v13, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v14, "IOException in fis.close()"

    invoke-static {v13, v14, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catch_8
    move-exception v4

    sget-object v13, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v14, "IOException in os.close()"

    invoke-static {v13, v14, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_9
    move-exception v4

    sget-object v13, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v14, "IOException in fos.close()"

    invoke-static {v13, v14, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catchall_1
    move-exception v12

    move-object v5, v6

    goto :goto_7

    :catchall_2
    move-exception v12

    move-object v5, v6

    move-object v7, v8

    goto :goto_7

    :catch_a
    move-exception v4

    goto/16 :goto_1

    :catch_b
    move-exception v4

    move-object v5, v6

    goto/16 :goto_1
.end method

.method private static generateTag(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_3

    :cond_0
    const-string v0, "crash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "native_crash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "watchdog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "finalizer_timeout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "others"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "SYSTEM_CRASH"

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYSTEM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->isHtcLauncher(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "crash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "home_restart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "native_crash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "HTC_HOME_RESTART"

    goto :goto_0

    :cond_5
    const-string v0, "finalizer_timeout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "HTC_APP_CRASH"

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_APP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getReadableSize(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v2, 0x400

    const-string v0, "K"

    div-long/2addr p0, v2

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    div-long/2addr p0, v2

    const-string v0, "M"

    :cond_0
    const-string v1, "%4d%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTombstone(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 15

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/tombstones/"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    new-instance v11, Lcom/android/server/am/HtcErrorReportManager$2;

    invoke-direct {v11}, Lcom/android/server/am/HtcErrorReportManager$2;-><init>()V

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2

    :try_start_0
    new-instance v11, Lcom/android/server/am/HtcErrorReportManager$3;

    invoke-direct {v11}, Lcom/android/server/am/HtcErrorReportManager$3;-><init>()V

    invoke-static {v5, v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    move-object v0, v5

    array-length v7, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v3, v0, v6

    const/16 v11, 0xa

    if-ge v1, v11, :cond_2

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v12, 0x0

    cmp-long v11, p1, v12

    if-lez v11, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v11, p3, v12

    if-lez v11, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    sub-long v8, p1, v12

    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-ltz v11, :cond_0

    cmp-long v11, v8, p3

    if-lez v11, :cond_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3, p0}, Lcom/android/server/am/HtcErrorReportManager;->checkTombstone(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :cond_2
    :goto_1
    return-object v4

    :catch_0
    move-exception v2

    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "ClassCastException in sorting tombstone files"

    invoke-static {v11, v12, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "error in checking tombstone files"

    invoke-static {v11, v12, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static isCurrentUser(ILcom/android/server/am/ActivityManagerService;)Z
    .locals 6

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    if-ne p0, v3, :cond_0

    const/4 v4, 0x1

    monitor-exit p1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v4, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v5, "The app is not running under the current user"

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z
    .locals 6

    const/4 v3, 0x0

    const-string v4, "ro.factorytest"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    sget-boolean v4, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v5, "Disable Error Report by local property (profiler.force_disable_err_rpt=1)"

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return v3

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v4, "profiler.force_disable_err_rpt"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "send_htc_error_report"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v5, "Disable Error Report by uncheck error report"

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v4, "com.htc.feedback"

    invoke-static {p0, v4}, Lcom/htc/server/report/error/HtcErrorReportUtils;->hasHtcSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v5, "Disable Error Report by UDove doesn\'t have htc signature"

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public static isEnableHomeRestartReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->isHtcLauncher(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isAutoSend(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v1, "Enable Home Restart Report"

    invoke-static {v0, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFinalizerTimeoutMessageInner(Landroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 3

    const-string v0, ".finalize() timed out after "

    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    const-string v2, ".finalize() timed out after "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "[isFinalizerTimeoutMessage]: True"

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isGMSPackageName(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHandledByHtc(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p9, p1}, Lcom/android/server/am/HtcErrorReportManager;->logMarketAppInfo(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    const-string v1, "crash"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "anr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "native_crash"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "watchdog"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "others"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->isSystemServerProcrss(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p9, v1}, Lcom/android/server/am/HtcErrorReportManager;->isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_1

    move v7, v8

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8

    move v3, v7

    :goto_1
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_9

    move v5, v7

    :goto_2
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_a

    move v2, v7

    :goto_3
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_b

    move v4, v7

    :goto_4
    if-eqz v3, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    if-nez v4, :cond_4

    :cond_3
    iget-boolean v9, p1, Landroid/content/pm/ApplicationInfo;->hasHtcSignature:Z

    if-nez v9, :cond_0

    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->isGMSPackageName(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_4
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v9, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_5
    iget-boolean v9, p1, Landroid/content/pm/ApplicationInfo;->hasHtcSignature:Z

    if-eqz v9, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_5
    if-nez v5, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->isGMSPackageName(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_7
    move v7, v8

    goto :goto_0

    :cond_8
    move v3, v8

    goto :goto_1

    :cond_9
    move v5, v8

    goto :goto_2

    :cond_a
    move v2, v8

    goto :goto_3

    :cond_b
    move v4, v8

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "Fail to get installer"

    invoke-static {v9, v10, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private static isHtcLauncher(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "com.htc.launcher"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPostInstalledApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v0, v4

    :goto_0
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    move v2, v4

    :goto_1
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    move v1, v4

    :goto_2
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_4

    move v3, v4

    :goto_3
    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    :cond_0
    :goto_4
    return v5

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    move v5, v4

    goto :goto_4

    :cond_6
    if-nez v1, :cond_0

    move v5, v4

    goto :goto_4
.end method

.method private static isSystemServerProcrss(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logMarketAppInfo(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v3}, Lcom/android/server/am/HtcErrorReportManager;->isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/server/am/HtcErrorReportManager;->isGMSPackageName(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Market AP] processName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isSystem="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", installer="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isHtcApp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v5}, Lcom/android/server/am/HtcErrorReportManager;->isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Fail to get installer"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "proc or proc.info or pm is null"

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    .locals 12

    const/4 v3, 0x0

    if-nez p2, :cond_1

    const/4 v7, 0x0

    :goto_0
    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v9, v10, :cond_0

    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v0, v9

    :cond_0
    invoke-interface {v7, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    add-int/2addr v0, v9

    goto :goto_3

    :cond_1
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    :cond_2
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_4
    if-eqz p3, :cond_3

    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    :goto_5
    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_6
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_4
    :goto_7
    return-void

    :cond_5
    if-nez v7, :cond_7

    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :goto_8
    if-eqz v4, :cond_6

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_6
    :goto_9
    move-object v3, v4

    goto :goto_7

    :catch_1
    move-exception v2

    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_7
    :goto_a
    :try_start_c
    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v9

    move-object v3, v4

    :goto_b
    :try_start_d
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :goto_c
    if-eqz v3, :cond_8

    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :cond_8
    :goto_d
    throw v9

    :cond_9
    :try_start_f
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    :goto_e
    if-eqz v4, :cond_a

    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    move-object v3, v4

    goto :goto_7

    :catch_2
    move-exception v2

    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_3
    move-exception v9

    move-object v3, v4

    goto :goto_7

    :catch_4
    move-exception v2

    :try_start_11
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "Error running process"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v9

    goto :goto_b

    :catch_5
    move-exception v2

    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_6
    move-exception v2

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "flush exception"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_7
    move-exception v9

    goto :goto_9

    :catch_8
    move-exception v9

    goto :goto_7

    :catch_9
    move-exception v10

    goto :goto_d

    :catch_a
    move-exception v1

    goto/16 :goto_4

    :catch_b
    move-exception v9

    goto/16 :goto_2

    :catch_c
    move-exception v9

    goto/16 :goto_1

    :cond_a
    move-object v3, v4

    goto/16 :goto_7
.end method

.method private static logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v5

    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v5

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_2
.end method

.method private static logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_3

    const/16 v5, 0x800

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v0, v5, :cond_0

    const-string v5, "\n\n[[TRUNCATED]]"

    invoke-virtual {p1, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v5, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    throw v5

    :catch_3
    move-exception v6

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :cond_5
    move-object v2, v3

    goto :goto_1
.end method

.method public static sGetPartitionInfo(Ljava/io/OutputStreamWriter;)V
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const-string v3, "Filesystem               Size     Used     Free   Blksize\n"

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v3, "%-20s  "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager;->getReadableSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager;->getReadableSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager;->getReadableSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v3, "   "

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get the path of data directory"

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "IOException in sGetPartitionInfo"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Exception in sGetPartitionInfo"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sIsDataPartitionReadOnly(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".testReadOnly.tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    move-object v1, v2

    :cond_0
    :goto_0
    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    const-string v6, "\n/data read-only=true\n"

    invoke-virtual {p1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :goto_1
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "sIsDataPartitionReadOnly error: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Can\'t write: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "sIsDataPartitionReadOnly error: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_5
    throw v6

    :catch_3
    move-exception v0

    sget-object v7, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v8, "sIsDataPartitionReadOnly error: "

    invoke-static {v7, v8, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_3
    const-string v6, "\n/data read-only=false\n"

    invoke-virtual {p1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v0

    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "error: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v4, v5

    goto :goto_3

    :cond_4
    move-object v4, v5

    move-object v1, v2

    goto :goto_0
.end method

.method private static writeKernelLog(Ljava/io/OutputStreamWriter;I)V
    .locals 13

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    const/4 v10, 0x5

    if-ge v2, v10, :cond_0

    :try_start_1
    new-instance v10, Landroid/net/LocalSocketAddress;

    const-string v11, "htc_dk"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v10, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v9, v10}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v9}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_0
    invoke-virtual {v9}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Cannot connect to socket!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V

    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    move-object v8, v9

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_4
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Connect socket fail, wait 1 second..."

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    :try_start_5
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[writeKernelLog] Connect!, fd = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v0, 0x0

    :cond_7
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_7

    const-string v10, "\n\n[[TRUNCATED]]"

    invoke-virtual {p0, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_9

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_9

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_9
    :goto_4
    if-eqz v9, :cond_f

    :try_start_8
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V

    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_a

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_a
    move-object v4, v5

    move-object v8, v9

    goto/16 :goto_3

    :catch_2
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_3
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    move-object v8, v9

    goto/16 :goto_3

    :catch_4
    move-exception v6

    :goto_5
    :try_start_9
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v4, :cond_b

    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_b

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_b
    :goto_6
    if-eqz v8, :cond_3

    :try_start_b
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_6
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_7
    move-exception v3

    :goto_7
    :try_start_c
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v4, :cond_c

    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_c

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_c
    :goto_8
    if-eqz v8, :cond_3

    :try_start_e
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_3

    :catch_8
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_9
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catchall_0
    move-exception v10

    :goto_9
    if-eqz v4, :cond_d

    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    sget-boolean v11, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v11, :cond_d

    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog] Close input stream success!"

    invoke-static {v11, v12}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    :cond_d
    :goto_a
    if-eqz v8, :cond_e

    :try_start_10
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    sget-boolean v11, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v11, :cond_e

    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog] Close localSocket success!"

    invoke-static {v11, v12}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    :cond_e
    :goto_b
    throw v10

    :catch_a
    move-exception v6

    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog]"

    invoke-static {v11, v12, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catch_b
    move-exception v6

    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog]"

    invoke-static {v11, v12, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :catchall_1
    move-exception v10

    move-object v8, v9

    goto :goto_9

    :catchall_2
    move-exception v10

    move-object v4, v5

    move-object v8, v9

    goto :goto_9

    :catch_c
    move-exception v3

    move-object v8, v9

    goto :goto_7

    :catch_d
    move-exception v3

    move-object v4, v5

    move-object v8, v9

    goto :goto_7

    :catch_e
    move-exception v6

    move-object v8, v9

    goto/16 :goto_5

    :catch_f
    move-exception v6

    move-object v4, v5

    move-object v8, v9

    goto/16 :goto_5

    :cond_f
    move-object v4, v5

    move-object v8, v9

    goto/16 :goto_3
.end method


# virtual methods
.method public isFinalizerTimeoutMessage(Landroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
