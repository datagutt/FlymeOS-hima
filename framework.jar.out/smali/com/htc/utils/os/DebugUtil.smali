.class public Lcom/htc/utils/os/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/utils/os/DebugUtil$WorkingThread;
    }
.end annotation


# static fields
.field private static final DIRECTORY_TO_SAVE_DUMPSTATE:Ljava/lang/String; = "/data/htclog/"

.field private static final MAX_FILE_NUMBER:I = 0xa

.field private static final PREFIX_OF_PATH_TO_SAVE_DUMPSTATE:Ljava/lang/String; = "dumpstate_partial"

.field private static final TAG:Ljava/lang/String; = "DebugUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpStateForBinder()V
    .locals 5

    :try_start_0
    sget-boolean v3, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "system_server"

    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Lcom/htc/utils/os/DebugUtil$WorkingThread;

    invoke-direct {v2, v1}, Lcom/htc/utils/os/DebugUtil$WorkingThread;-><init>(Ljava/util/Date;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "DebugUtil"

    const-string v4, "Error while dumpStateForBinder"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
