.class public Lcom/htc/server/report/error/HtcErrorReportUtils;
.super Ljava/lang/Object;
.source "HtcErrorReportUtils.java"


# static fields
.field private static final IS_SHIPPING_ROM:Z

.field private static final TAG:Ljava/lang/String; = "HtcErrorReport"

.field private static final htcDebugFlag:Z

.field private static mHtcSignature:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsAutoSend:Ljava/lang/reflect/Method;

.field private static volatile sIsInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/report/error/HtcErrorReportUtils;->htcDebugFlag:Z

    invoke-static {}, Lcom/htc/server/report/error/ReportConfig;->isShippingRom()Z

    move-result v0

    sput-boolean v0, Lcom/htc/server/report/error/HtcErrorReportUtils;->IS_SHIPPING_ROM:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHtcClassByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v7, 0x40

    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v5, v4}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isSignedHtcKey(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-boolean v7, Lcom/htc/server/report/error/HtcErrorReportUtils;->htcDebugFlag:Z

    if-eqz v7, :cond_0

    const-string v7, "HtcErrorReport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stop reflection. The package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not signed HTC key"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "HtcErrorReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package name not found - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v6, v0

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    :try_start_1
    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static {p2, v6, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v6, "HtcErrorReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "class name not found - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v6, "HtcErrorReport"

    const-string v7, "other exception - "

    invoke-static {v6, v7, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static hasHtcSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v1, 0x0

    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->hasHtcSignature:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "HtcErrorReport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in hasHtcSignature, can\'t find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static declared-synchronized init(Landroid/content/Context;)V
    .locals 7

    const-class v3, Lcom/htc/server/report/error/HtcErrorReportUtils;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "com.htc.feedback"

    const-string v4, "com.htc.feedback.framework.ErrorReport"

    invoke-static {p0, v2, v4}, Lcom/htc/server/report/error/HtcErrorReportUtils;->getHtcClassByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :cond_1
    :try_start_2
    sget-object v2, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsAutoSend:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    const-string v2, "isAutoSend"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsAutoSend:Ljava/lang/reflect/Method;

    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsInit:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "HtcErrorReport"

    const-string v4, "Stop reflection by exception "

    invoke-static {v2, v4, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized initHtcSignature(Landroid/content/pm/PackageManager;)V
    .locals 12

    const-class v8, Lcom/htc/server/report/error/HtcErrorReportUtils;

    monitor-enter v8

    const/4 v7, 0x7

    :try_start_0
    new-array v0, v7, [[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "platform"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "android"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "shared"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.android.providers.contacts"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "media"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.android.providers.media"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "testkey"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.htc.provider.CustomizationSettings"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "testkey"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.android.providers.calendar"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "hms"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.htc.sense.hsp"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "hms"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.htc.launcher"

    aput-object v11, v9, v10

    aput-object v9, v0, v7

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/htc/server/report/error/HtcErrorReportUtils;->mHtcSignature:Ljava/util/HashMap;

    move-object v1, v0

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v1, v3

    sget-object v7, Lcom/htc/server/report/error/HtcErrorReportUtils;->mHtcSignature:Ljava/util/HashMap;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/htc/server/report/error/HtcErrorReportUtils;->htcDebugFlag:Z

    if-eqz v7, :cond_0

    const-string v7, "HtcErrorReport"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[initHtcSignature] Not add "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " because short key name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has been added before"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v6, v7

    const/16 v9, 0x40

    invoke-virtual {p0, v7, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_2

    :try_start_2
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/htc/server/report/error/HtcErrorReportUtils;->mHtcSignature:Ljava/util/HashMap;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_0
    move-exception v2

    :try_start_3
    const-string v7, "HtcErrorReport"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[initHtcSignature] can\'t find package info of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    const-string v7, "HtcErrorReport"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[initHtcSignature] Signature of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit v8

    return-void
.end method

.method public static isAutoSend(Landroid/content/Context;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/htc/server/report/error/HtcErrorReportUtils;->init(Landroid/content/Context;)V

    :try_start_0
    sget-object v4, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsAutoSend:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/htc/server/report/error/HtcErrorReportUtils;->sIsAutoSend:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v4, "HtcErrorReport"

    const-string v5, "Result of isAutoSend is null or not Boolean"

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_error_report_auto_send"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    sget-boolean v2, Lcom/htc/server/report/error/HtcErrorReportUtils;->htcDebugFlag:Z

    if-eqz v2, :cond_3

    const-string v2, "HtcErrorReport"

    const-string v4, "Tell HTC is not Auto Send"

    invoke-static {v2, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    sget-boolean v4, Lcom/htc/server/report/error/HtcErrorReportUtils;->htcDebugFlag:Z

    if-eqz v4, :cond_2

    const-string v4, "HtcErrorReport"

    const-string v5, "sIsAutoSend is null"

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "HtcErrorReport"

    const-string v4, "Stop isAutoSend by exception "

    invoke-static {v2, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto :goto_0
.end method

.method public static isSignedHtcKey(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 9

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    sget-object v6, Lcom/htc/server/report/error/HtcErrorReportUtils;->mHtcSignature:Ljava/util/HashMap;

    if-nez v6, :cond_2

    invoke-static {p0}, Lcom/htc/server/report/error/HtcErrorReportUtils;->initHtcSignature(Landroid/content/pm/PackageManager;)V

    :cond_2
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v6, :cond_3

    const-string v6, "HtcErrorReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pi.signatures is null, pi.packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v6, v5

    if-nez v4, :cond_4

    const-string v6, "HtcErrorReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "targetAppSignature is null, pi.packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/htc/server/report/error/HtcErrorReportUtils;->mHtcSignature:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    invoke-virtual {v4, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-boolean v5, Lcom/htc/server/report/error/HtcErrorReportUtils;->htcDebugFlag:Z

    if-eqz v5, :cond_6

    const-string v6, "HtcErrorReport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is signed HTC key: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_0
.end method
