.class final Lcom/android/server/power/HtcPMSExtension;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcPMSExtension$LogRecord;,
        Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;,
        Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;
    }
.end annotation


# static fields
.field private static final DEBUG_ON:Z

.field private static final PROHIBITION_WAKELOCK_TAG_RILJ:Ljava/lang/String; = "RILJ"

.field private static final TAG:Ljava/lang/String; = "HtcPMSExtension"

.field private static mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;


# instance fields
.field private final mActualScreenOffIntent:Landroid/content/Intent;

.field private final mActualScreenOnIntent:Landroid/content/Intent;

.field private final mBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLogRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/HtcPMSExtension$LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

.field private final mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/high16 v2, 0x50000000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;-><init>(Lcom/android/server/power/HtcPMSExtension;Lcom/android/server/power/HtcPMSExtension$1;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    new-instance v0, Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;-><init>(Lcom/android/server/power/HtcPMSExtension;Lcom/android/server/power/HtcPMSExtension$1;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    new-instance v0, Lcom/android/server/power/HtcPMSExtension$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/HtcPMSExtension$2;-><init>(Lcom/android/server/power/HtcPMSExtension;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HPE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOnIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.server.HtcPMSExtension.ACTUAL_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOffIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/HtcPMSExtension;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcPMSExtension;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcPMSExtension;->writeScreenStateHelper(Z)V

    return-void
.end method

.method protected static canPrintWakeLockLog(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0xffff

    and-int/2addr v1, p0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "RILJ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getHtcCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    :try_start_0
    sget-object v1, Lcom/android/server/power/HtcPMSExtension;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/HtcPMSExtension;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    :cond_0
    sget-object v1, Lcom/android/server/power/HtcPMSExtension;->mHtcCustomizationManager:Lcom/htc/customization/HtcCustomizationManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcPMSExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHtcCustomizationReader: Exception caught. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getWakeLockTypeInfo(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const v1, 0xffff

    and-int/2addr v1, p0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK"

    goto :goto_0

    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK"

    goto :goto_0

    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK"

    goto :goto_0

    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK"

    goto :goto_0

    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    goto :goto_0

    :sswitch_5
    const-string v0, "CPU_PERF_WAKE_LOCK"

    goto :goto_0

    :sswitch_6
    const-string v0, "CPU_MAX_FREQ"

    goto :goto_0

    :sswitch_7
    const-string v0, "CPU_MIN_FREQ"

    goto :goto_0

    :sswitch_8
    const-string v0, "CPU_MAX_NUM"

    goto :goto_0

    :sswitch_9
    const-string v0, "CPU_MIN_NUM"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_7
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_9
    .end sparse-switch
.end method

.method private writeScreenStateHelper(Z)V
    .locals 12

    const-string v1, "system"

    const-string v0, "screen_state"

    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_0

    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeSS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "system"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v9, "screen_state"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_2

    const-string v9, "HtcPMSExtension"

    const-string v10, "writeScreenState: creating screen_state file."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_3

    const-string v9, "HtcPMSExtension"

    const-string v10, "writeScreenState: screen_state created."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_6

    :try_start_2
    const-string v9, "1"

    :goto_0
    invoke-virtual {v5, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_e

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v4, 0x0

    :goto_1
    if-eqz v7, :cond_d

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    const/4 v6, 0x0

    :cond_4
    :goto_2
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_5

    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeSS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " E"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    :try_start_5
    const-string v9, "0"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v9

    move-object v4, v5

    :goto_3
    move-object v6, v7

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_4
    :try_start_6
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_7

    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: could not write to file. Skip. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    :cond_8
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v6, 0x0

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_5
    :try_start_8
    sget-boolean v9, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v9, :cond_9

    const-string v9, "HtcPMSExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeScreenState: exception occurred. Skip. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_9
    if-eqz v4, :cond_a

    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    :cond_a
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v6, 0x0

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v4, :cond_b

    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v4, 0x0

    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    const/4 v6, 0x0

    :cond_c
    :goto_7
    throw v9

    :catch_3
    move-exception v10

    goto :goto_7

    :catchall_1
    move-exception v9

    move-object v6, v7

    goto :goto_6

    :catchall_2
    move-exception v9

    move-object v4, v5

    move-object v6, v7

    goto :goto_6

    :catch_4
    move-exception v9

    goto/16 :goto_2

    :catch_5
    move-exception v2

    move-object v6, v7

    goto :goto_5

    :catch_6
    move-exception v2

    move-object v4, v5

    move-object v6, v7

    goto :goto_5

    :catch_7
    move-exception v9

    goto/16 :goto_2

    :catch_8
    move-exception v2

    move-object v6, v7

    goto :goto_4

    :catch_9
    move-exception v2

    move-object v4, v5

    move-object v6, v7

    goto :goto_4

    :catch_a
    move-exception v9

    goto/16 :goto_3

    :cond_d
    move-object v6, v7

    goto/16 :goto_2

    :cond_e
    move-object v4, v5

    goto/16 :goto_1
.end method


# virtual methods
.method protected isAMOLED()Z
    .locals 10

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    sget-boolean v5, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "hardware.LCD.AMOLED"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    sget-boolean v5, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    const-wide/16 v8, 0x1f4

    cmp-long v5, v0, v8

    if-lez v5, :cond_2

    const-string v5, "HtcPMSExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAMOLED takes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v4

    :catch_0
    move-exception v2

    sget-boolean v5, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v5, :cond_1

    const-string v5, "HtcPMSExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAMOLED: Exception caught: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyActualScreenState(Z)V
    .locals 9

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcPMSExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyASS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/HtcPMSExtension;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    sget-boolean v0, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcPMSExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyASS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mActualScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/HtcPMSExtension;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcPMSExtension$LogRecord;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/power/HtcPMSExtension$LogRecord;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/power/HtcPMSExtension$LogRecord;-><init>(Lcom/android/server/power/HtcPMSExtension;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/HtcPMSExtension$LogRecord;->check(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendScreenStateChange(IJI)V
    .locals 4

    sget-boolean v1, Lcom/android/server/power/HtcPMSExtension;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcPMSExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSSC: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.server.HtcPMSExtension.SCREEN_CHANGE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state_change"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "act_time"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "event_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/HtcPMSExtension$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/HtcPMSExtension$1;-><init>(Lcom/android/server/power/HtcPMSExtension;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected writeScreenState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOnTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOnTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension;->mWriteScreenOffTask:Lcom/android/server/power/HtcPMSExtension$WriteScreenOffTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
