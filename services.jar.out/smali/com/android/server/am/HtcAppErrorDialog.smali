.class Lcom/android/server/am/HtcAppErrorDialog;
.super Landroid/app/Dialog;
.source "HtcAppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field private static final FEEDBACK_PACKAGE_NAME:Ljava/lang/String; = "com.htc.feedback"

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_AUTO_REPORT:I = 0x2

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcAppErrorDialog"


# instance fields
.field private final mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

.field private final mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

.field private mInit:Z

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mWindowTitle:Ljava/lang/String;

.field private final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 19

    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v15, Lcom/android/server/am/HtcAppErrorDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/am/HtcAppErrorDialog$1;-><init>(Lcom/android/server/am/HtcAppErrorDialog;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    :try_start_0
    const-string v15, "com.htc.feedback"

    invoke-virtual {v10, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isAutoSend(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Application Error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowTitle:Ljava/lang/String;

    new-instance v15, Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/am/HtcErrorDialogBase;-><init>(Landroid/content/Context;Lcom/android/server/am/HtcErrorDialogBase$Callback;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v0, p4

    iget-boolean v15, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v15, :cond_2

    const/16 v15, 0x7da

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    :goto_1
    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_3

    :goto_2
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    :goto_3
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/am/HtcErrorReportManager;->isCurrentUser(ILcom/android/server/am/ActivityManagerService;)Z

    move-result v15

    if-eqz v15, :cond_0

    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_6

    const-string v15, "com.htc.feedback"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_5

    const v15, 0x1040471

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    const v15, 0x1040478

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    const/4 v11, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    const v16, 0x1040470

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/HtcErrorDialogBase;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/HtcErrorDialogBase;->setCancelable(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v15, v4}, Lcom/android/server/am/HtcErrorDialogBase;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v15, v12, v11}, Lcom/android/server/am/HtcErrorDialogBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v15, v9, v8}, Lcom/android/server/am/HtcErrorDialogBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    const-wide/32 v16, 0x493e0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v3, v0, v1}, Lcom/android/server/am/HtcErrorDialogBase;->sendMessageDelayed(IJ)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    return-void

    :catch_0
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    goto/16 :goto_0

    :cond_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_5
    :try_start_2
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const v15, 0x1040472

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    const-string v15, "msg_app_crash_auto"

    const-string v16, "string"

    const-string v17, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "btn_close"

    const-string v16, "string"

    const-string v17, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    const/4 v11, 0x2

    goto/16 :goto_5

    :cond_7
    const-string v15, "msg_app_crash"

    const-string v16, "string"

    const-string v17, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "btn_dont_send"

    const-string v16, "string"

    const-string v17, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    const/4 v11, 0x0

    const-string v15, "btn_send_report"

    const-string v16, "string"

    const-string v17, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    const/4 v8, 0x1

    const/4 v6, 0x1

    goto/16 :goto_5

    :catch_1
    move-exception v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    invoke-virtual {v15, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    const-string v15, "HtcAppErrorDialog"

    const-string v16, "Constructor()"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/HtcAppErrorDialog;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/HtcAppErrorDialog;->generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method private generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 18

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    if-nez v12, :cond_0

    const/4 v12, 0x0

    monitor-exit v13

    :goto_0
    return-object v12

    :cond_0
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "dropboxTag"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "dropboxTag"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "entryTime"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Long;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "entryTime"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_3
    const-wide/16 v14, 0x0

    cmp-long v12, v4, v14

    if-gtz v12, :cond_4

    const/4 v12, 0x0

    :try_start_1
    monitor-exit v13

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "tombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "tombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    :cond_5
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "mediaServerTombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "mediaServerTombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :cond_6
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportKey"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, [B

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportKey"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v7, v0

    :cond_7
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportIv"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, [B

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportIv"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v6, v0

    :cond_8
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "oomPid"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Integer;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "oomPid"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    new-instance v2, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v12, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v12, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    iput-object v12, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    const/4 v14, 0x0

    iput-object v14, v12, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v8, :cond_e

    const-string v12, "dropboxTag"

    invoke-virtual {v8, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "tombstoneName"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    const-string v12, "mediaServerTombstoneName"

    invoke-virtual {v8, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    if-eqz v7, :cond_d

    if-eqz v6, :cond_d

    const-string v12, "errorReportKey"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v12, "errorReportIv"

    invoke-virtual {v8, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_d
    if-lez v10, :cond_e

    const-string v12, "oomPid"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_e
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v0}, Lcom/android/server/am/HtcErrorDialogBase;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    iget-object v1, p0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowTitle:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    const/4 v3, 0x0

    const/16 v4, 0x110

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/HtcErrorDialogBase;->show(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method
