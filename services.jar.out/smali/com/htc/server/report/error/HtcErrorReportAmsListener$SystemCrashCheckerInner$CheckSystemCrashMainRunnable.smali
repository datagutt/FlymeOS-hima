.class final Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;
.super Ljava/lang/Object;
.source "HtcErrorReportAmsListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckSystemCrashMainRunnable"
.end annotation


# instance fields
.field checkSystemCrash:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;

.field final synthetic this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;


# direct methods
.method constructor <init>(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;

    iget-object v1, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;->this$1:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;

    invoke-direct {v0, v1}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;-><init>(Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner;)V

    iput-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;->checkSystemCrash:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemCrashMainRunnable;->checkSystemCrash:Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;

    invoke-virtual {v0}, Lcom/htc/server/report/error/HtcErrorReportAmsListener$SystemCrashCheckerInner$CheckSystemServerCrash;->run()V

    return-void
.end method
