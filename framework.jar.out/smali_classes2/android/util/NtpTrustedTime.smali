.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private final NTP_SERVER_A:Ljava/lang/String;

.field private final NTP_SERVER_ANDROID:Ljava/lang/String;

.field private final NTP_SERVER_HTC:Ljava/lang/String;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "timeasia.htc.com"

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->NTP_SERVER_HTC:Ljava/lang/String;

    const-string v0, "asia.pool.ntp.org"

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->NTP_SERVER_ANDROID:Ljava/lang/String;

    const-string v0, "time.asia.apple.com"

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->NTP_SERVER_A:Ljava/lang/String;

    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11

    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v7, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const v7, 0x1040034

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v7, 0x10e0065

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v2, v7

    const-string v7, "ntp_server"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "ntp_timeout"

    invoke-static {v4, v7, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v5, :cond_1

    move-object v6, v5

    :goto_0
    new-instance v7, Landroid/util/NtpTrustedTime;

    invoke-direct {v7, v6, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    :cond_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v7

    :cond_1
    move-object v6, v0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7
.end method

.method private static isChinaSKU()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "region"

    invoke-static {v1, v0}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v6, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    invoke-static {}, Landroid/util/NtpTrustedTime;->isChinaSKU()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "timeasia.htc.com"

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v3, "asia.pool.ntp.org"

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v2, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v3, "time.asia.apple.com"

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v1, v2

    goto/16 :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
