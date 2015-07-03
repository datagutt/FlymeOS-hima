.class Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcErrorReportAmsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/report/error/HtcErrorReportAmsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemCrashCheckerInner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;,
        Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;
    }
.end annotation


# instance fields
.field private final SYSTEM_CRASH_ENTRY:Ljava/lang/String;

.field final SYSTEM_TERMINATE_LOG:Ljava/lang/String;

.field final SYSTEM_TERMINATE_MSG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field final synthetic this$0:Lcom/htc/server/report/error/HtcErrorReportAmsListener;


# direct methods
.method private constructor <init>(Lcom/htc/server/report/error/HtcErrorReportAmsListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->this$0:Lcom/htc/server/report/error/HtcErrorReportAmsListener;

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    const-string v0, "SystemCrashCheckerInner"

    iput-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->TAG:Ljava/lang/String;

    const-string v0, "/data/system/error_report/last_crash_msg"

    iput-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->SYSTEM_CRASH_ENTRY:Ljava/lang/String;

    const-string v0, "/data/system/error_report/last_terminate_msg"

    iput-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->SYSTEM_TERMINATE_MSG:Ljava/lang/String;

    const-string v0, "/data/system/error_report/last_terminate_log"

    iput-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->SYSTEM_TERMINATE_LOG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/report/error/HtcErrorReportAmsListener;Lcom/htc/server/report/error/HtcErrorReportAmsListener$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;-><init>(Lcom/htc/server/report/error/HtcErrorReportAmsListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->prepareFileForSystemTerminateCrash(Z)V

    return-void
.end method

.method private prepareFileForSystemTerminateCrash(Z)V
    .locals 6

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/system/error_report"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SystemCrashCheckerInner"

    const-string v5, "Make directory /data/system/error_report first time"

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/error_report/last_terminate_msg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/error_report/last_terminate_log"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v4, "SystemCrashCheckerInner"

    const-string v5, "prepareFileForSystemNativeCrash exception"

    invoke-static {v4, v5, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onFinishBooting()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;

    invoke-direct {v1, p0}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;-><init>(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;)V

    const-string v2, "CheckSystemCrash"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;->prepareFileForSystemTerminateCrash(Z)V

    return-void
.end method
