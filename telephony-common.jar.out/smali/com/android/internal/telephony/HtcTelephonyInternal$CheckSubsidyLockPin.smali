.class Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;
.super Ljava/lang/Thread;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephonyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSubsidyLockPin"
.end annotation


# static fields
.field private static final SUPPLY_SUBSIDY_LOCK_PIN_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mResult:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v0, 0x0

    .line 5240
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5231
    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mDone:Z

    .line 5232
    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mResult:Z

    .line 5241
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 5242
    return-void
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;
    .param p1, "x1"    # Z

    .prologue
    .line 5229
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mResult:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;
    .param p1, "x1"    # Z

    .prologue
    .line 5229
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkSubsidyPin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 5271
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 5273
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5274
    :catch_0
    move-exception v1

    .line 5275
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5271
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 5278
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 5280
    .local v0, "callback":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/telephony/IccCard;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 5282
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 5284
    :try_start_4
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5285
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 5286
    :catch_1
    move-exception v1

    .line 5288
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 5291
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5292
    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 5246
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 5247
    monitor-enter p0

    .line 5248
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin$1;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mHandler:Landroid/os/Handler;

    .line 5265
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5266
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5267
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 5268
    return-void

    .line 5266
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
