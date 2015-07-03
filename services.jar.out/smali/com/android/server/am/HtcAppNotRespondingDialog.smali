.class Lcom/android/server/am/HtcAppNotRespondingDialog;
.super Landroid/app/Dialog;
.source "HtcAppNotRespondingDialog.java"


# static fields
.field private static final FEEDBACK_PACKAGE_NAME:Ljava/lang/String; = "com.htc.feedback"

.field static final FORCE_CLOSE:I = 0x1

.field static final FORCE_CLOSE_AND_AUTO_REPORT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HtcAppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_AUTO_REPORT:I = 0x5

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

.field private final mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

.field private mInit:Z

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mWindowTitle:Ljava/lang/String;

.field private final mWindowType:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v22, Lcom/android/server/am/HtcAppNotRespondingDialog$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/HtcAppNotRespondingDialog$1;-><init>(Lcom/android/server/am/HtcAppNotRespondingDialog;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Application Not Responding: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowTitle:Ljava/lang/String;

    new-instance v22, Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/HtcErrorDialogBase;-><init>(Landroid/content/Context;Lcom/android/server/am/HtcErrorDialogBase$Callback;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    if-eqz p5, :cond_4

    const/16 v22, 0x7da

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowType:I

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    :try_start_0
    const-string v22, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isAutoSend(Landroid/content/Context;)Z

    move-result v4

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    :goto_2
    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_7

    if-eqz v10, :cond_6

    :goto_3
    :try_start_1
    invoke-static/range {p2 .. p3}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/HtcErrorReportManager;->isCurrentUser(ILcom/android/server/am/ActivityManagerService;)Z

    move-result v22

    if-eqz v22, :cond_0

    if-eqz p3, :cond_e

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    const-string v22, "com.htc.feedback"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    :cond_0
    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    :goto_4
    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_b

    if-eqz v10, :cond_a

    const v21, 0x1040474

    :goto_5
    if-eqz v11, :cond_d

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    const v22, 0x1040478

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v17, 0x1

    const/4 v9, 0x1

    const v22, 0x104047a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v12, 0x2

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    const v23, 0x1040473

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/HtcErrorDialogBase;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/server/am/HtcErrorDialogBase;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/HtcErrorDialogBase;->setCancelable(Z)V

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v12}, Lcom/android/server/am/HtcErrorDialogBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    :cond_1
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v14}, Lcom/android/server/am/HtcErrorDialogBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    :cond_2
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/HtcErrorDialogBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_8
    return-void

    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowType:I

    goto/16 :goto_0

    :catch_0
    move-exception v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_6
    move-object v10, v11

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    if-eqz v10, :cond_8

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_a
    move-object v10, v11

    :try_start_2
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const v21, 0x1040476

    goto/16 :goto_5

    :cond_b
    if-eqz v10, :cond_c

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const v21, 0x1040475

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const v21, 0x1040477

    goto/16 :goto_5

    :cond_d
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    :cond_e
    if-eqz v4, :cond_f

    const-string v22, "msg_app_anr_auto"

    const-string v23, "string"

    const-string v24, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v22, "btn_close"

    const-string v23, "string"

    const-string v24, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v17, 0x4

    const/4 v9, 0x1

    const v22, 0x104047a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v12, 0x5

    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_f
    const-string v22, "msg_app_anr"

    const-string v23, "string"

    const-string v24, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v22, "btn_dont_send"

    const-string v23, "string"

    const-string v24, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v17, 0x1

    const/4 v9, 0x1

    const v22, 0x104047a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v4, :cond_10

    const/4 v12, 0x5

    :goto_9
    const/4 v7, 0x1

    const-string v22, "btn_send_report"

    const-string v23, "string"

    const-string v24, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    const/4 v14, 0x3

    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_10
    const/4 v12, 0x2

    goto :goto_9

    :catch_1
    move-exception v6

    const-string v22, "HtcAppNotRespondingDialog"

    const-string v23, "Constructor()"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAppNotRespondingDialog;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/HtcAppNotRespondingDialog;->generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method private generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 15

    const/4 v10, 0x0

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    if-nez v9, :cond_0

    monitor-exit v11

    move-object v9, v10

    :goto_0
    return-object v9

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v12, "dropboxTag"

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v12, "dropboxTag"

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_1
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v12, "entryTime"

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Long;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v12, "entryTime"

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    monitor-exit v11

    move-object v9, v10

    goto :goto_0

    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v9, v4, v12

    if-gtz v9, :cond_4

    monitor-exit v11

    move-object v9, v10

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v10, "errorReportKey"

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, [B

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v10, "errorReportKey"

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v6, v0

    :cond_5
    const/4 v3, 0x0

    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v10, "errorReportIv"

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, [B

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v10, "errorReportIv"

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v3, v0

    :cond_6
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v9, v10, v12, v13, v14}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iput-object v8, v9, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v7, :cond_7

    const-string v9, "dropboxTag"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    const-string v9, "errorReportKey"

    invoke-virtual {v7, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v9, "errorReportIv"

    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_7
    monitor-exit v11

    move-object v9, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v0}, Lcom/android/server/am/HtcErrorDialogBase;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    iget-object v1, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowTitle:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowType:I

    const/4 v3, 0x0

    const/16 v4, 0x110

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/HtcErrorDialogBase;->show(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method
