.class public final Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;
.super Ljava/lang/Thread;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final FM_SERVICE_COMMAND:Ljava/lang/String; = "com.htc.fm.servicecommand"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x41

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_RESTART_WAIT_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_ANIMATION_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final NUM_CALL_STACK_LAYER:I = 0x5

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcShutdownThread"

.field private static htcpd:Landroid/app/ProgressDialog;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mResumeCount:I

.field private static mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

.field private static sIsAnimationCompleted:Z

.field private static sIsAnimationReady:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    sput-boolean v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    sput-boolean v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    sput v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mResumeCount:I

    new-instance v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$4;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$4;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "HtcShutdownThread"

    const-string v4, "Shutdown sequence begin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.SHUTDOWN_ANIMATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcShutdownThread"

    const-string v5, "User perform shutdown already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, "HtcShutdownThread"

    const-string v5, "Shutdown sequence already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-static {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->isUseAnimation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    const v4, 0x10400e9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    const v4, 0x10400ed

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    sput-boolean v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    sput-boolean v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    :goto_2
    const-string v3, "persist.sys.prev.powerdown"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "persist.sys.vzwlogger.zygote"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-direct {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;-><init>()V

    sput-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object p0, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_2
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "HtcShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_3
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_3
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "HtcShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_4
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    new-instance v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$3;

    invoke-direct {v4}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$3;-><init>()V

    iput-object v4, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->start()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    const-string v3, "HtcShutdownThread"

    const-string v4, "Can not launch Home Screen (Intent.CATEGORY_HOME)!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    const-string v3, "HtcShutdownThread"

    const-string v4, "start animation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    const v4, 0x1030005

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->setShutdownListener(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7e5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->setCancelable(Z)V

    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->show()V

    sput-boolean v5, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    goto/16 :goto_2

    :catch_1
    move-exception v1

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_6

    const-string v3, "HtcShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    :catch_2
    move-exception v1

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_7

    const-string v3, "HtcShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 7

    const-string v3, "HtcShutdownThread"

    const-string v4, "deviceRebootOrShutdown(), for A11 QCT 8916 API, requested by SSD"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.qti.server.power.ShutdownOem"

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v3, "rebootOrShutdown"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private static getVibrateDuration()I
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    const-string v4, "Android_Core_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v4, "shutdown_vibrate_ms"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v4, "HtcShutdownThread"

    const-string v5, "Read customization fail!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isUseAnimation(Landroid/content/Context;)Z
    .locals 27

    new-instance v14, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    invoke-direct {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;-><init>()V

    new-instance v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-direct {v13}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;-><init>()V

    const/16 v22, 0x0

    const-string v23, "ro.cid"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v18, "/carrier/default.xml"

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_7

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_0

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "omadm_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/system/customize/CID/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_7

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_1

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "omadm_cid_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_2

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_3

    const-string v23, "HtcShutdownThread"

    const-string v24, "htcshutdownthread, use omadm cid animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v23, 0x1

    :goto_0
    return v23

    :cond_4
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_5

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_6

    const-string v23, "HtcShutdownThread"

    const-string v24, "htcshutdownthread, use omadm animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v23, 0x1

    goto :goto_0

    :cond_7
    const-string v10, "/data/data/cw/animation.xml"

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_b

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_8

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "cw_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v14, v10}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_9

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_a

    const-string v23, "HtcShutdownThread"

    const-string v24, "htcshutdownthread, use cw animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v23, 0x1

    goto/16 :goto_0

    :cond_b
    const-string v2, "boot_anim_mns"

    const-string v23, "boot_anim_mns"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1c

    const/4 v5, 0x0

    const/16 v20, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/FileReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v20

    if-eqz v6, :cond_25

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v5, 0x0

    :cond_c
    :goto_1
    if-eqz v20, :cond_1b

    new-instance v19, Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_13

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_d

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "sim_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_e

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_f

    const-string v23, "HtcShutdownThread"

    const-string v24, "use sim animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/16 v23, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v12

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_10

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception closing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    move-object v5, v6

    goto/16 :goto_1

    :catch_1
    move-exception v12

    :goto_2
    :try_start_3
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_11

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception reading "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    if-eqz v5, :cond_c

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v5, 0x0

    goto/16 :goto_1

    :catch_2
    move-exception v12

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_c

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception closing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v23

    :goto_3
    if-eqz v5, :cond_12

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v5, 0x0

    :cond_12
    :goto_4
    throw v23

    :catch_3
    move-exception v12

    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_12

    const-string v24, "HtcShutdownThread"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception closing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_13
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_14

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " does not eixst"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_5
    if-eqz v21, :cond_22

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_15

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CID:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/system/customize/CID/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_16

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1f

    invoke-virtual {v14, v4}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_1e

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_17

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Parse "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "failed.  Use default.xml."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const-string v23, "/system/customize/CID/default.xml"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_1d

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_18

    const-string v23, "HtcShutdownThread"

    const-string v24, "Parse default.xml failed.  Use default dialog"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_6
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_19

    new-instance v11, Ljava/io/File;

    const-string v23, "/system/customize/resource/shutdown.zip"

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_19

    const/16 v22, 0x1

    :cond_19
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_1a

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move/from16 v23, v22

    goto/16 :goto_0

    :cond_1b
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_14

    const-string v23, "HtcShutdownThread"

    const-string v24, "Empty path"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1c
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_14

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " does not exist"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1d
    const/16 v22, 0x1

    goto :goto_6

    :cond_1e
    const/16 v22, 0x1

    goto :goto_6

    :cond_1f
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_20

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Can\'t load "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".  Use default.xml."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-string v23, "/system/customize/CID/default.xml"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_21

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_18

    const-string v23, "HtcShutdownThread"

    const-string v24, "Parse default.xml failed.  Use default dialog"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_21
    const/16 v22, 0x1

    goto/16 :goto_6

    :cond_22
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_23

    const-string v23, "HtcShutdownThread"

    const-string v24, "Can\'t find CID.  Use default.xml."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const-string v23, "/system/customize/CID/default.xml"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_24

    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_18

    const-string v23, "HtcShutdownThread"

    const-string v24, "Parse default.xml failed.  Use default dialog"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_24
    const/16 v22, 0x1

    goto/16 :goto_6

    :catchall_1
    move-exception v23

    move-object v5, v6

    goto/16 :goto_3

    :catch_4
    move-exception v12

    move-object v5, v6

    goto/16 :goto_2

    :cond_25
    move-object v5, v6

    goto/16 :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 11

    sget-object v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-boolean v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcShutdownThread"

    const-string v10, "Request to shutdown already running, returning."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    :goto_0
    return-void

    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x5

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "HtcShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caller = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_1

    const-string v8, "HtcShutdownThread"

    const-string v9, "Notifying thread to start shutdown"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_7

    sget-boolean v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    if-eqz v8, :cond_6

    sget-boolean v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v8, :cond_4

    const v5, 0x10400f0

    :goto_1
    sget-boolean v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v8, :cond_5

    const v2, 0x10400f1

    :goto_2
    const v4, 0x3070200

    const v3, 0x1040009

    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/htc/utils/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "HtcShutdownThread"

    const-string v9, "isInAllCapsLocale() = TRUE"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    :cond_2
    new-instance v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    sget-object v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    const v9, 0x30b0001

    invoke-direct {v8, p0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$2;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$1;

    invoke-direct {v9}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$1;-><init>()V

    invoke-virtual {v8, v6, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    sput-object v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    sget-object v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v8, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    sget-object v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    sget-object v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :cond_4
    const v5, 0x30701fe

    goto/16 :goto_1

    :cond_5
    const v2, 0x30701ff

    goto/16 :goto_2

    :cond_6
    const v5, 0x10400e9

    const v2, 0x10400ee

    const v4, 0x1040013

    const v3, 0x1040009

    goto/16 :goto_3

    :cond_7
    invoke-static {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dismissDialog(Landroid/app/Dialog;)V
    .locals 8

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;

    invoke-direct {v5, p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v2, v4, v6

    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v5

    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v2, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcShutdownThread"

    const-string v6, "Dismiss shutdown screen timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method dismissProgressDialog()V
    .locals 1

    sget-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method dismissShutdownScreen()V
    .locals 1

    sget-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public run()V
    .locals 52

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    const/16 v35, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_0
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v6, v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v9, "HtcShutdownThread-shutdown"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-instance v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$6;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v14

    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_2

    const-string v4, "persist.sys.safemode"

    const-string v6, "1"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v4, "HtcShutdownThread"

    const-string v6, "Sending shutdown broadcast..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x2710

    add-long v28, v6, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v6

    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v18, v28, v10

    const-wide/16 v10, 0x0

    cmp-long v4, v18, v10

    if-gtz v4, :cond_13

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_3

    const-string v4, "HtcShutdownThread"

    const-string v7, "Shutdown poweroff broadcast timed out"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "HtcShutdownThread"

    const-string v6, "Start to turn off modules"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "init.svc.zchgd_onmode"

    const-string v6, "stopped"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "stopped"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "ctl.stop"

    const-string v6, "zchgd_onmode"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x2710

    add-long v24, v6, v10

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v18, v24, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-gtz v4, :cond_14

    const-string v4, "HtcShutdownThread"

    const-string v6, "zchgd_onmode timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "zchgd_onmode status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "init.svc.zchgd_onmode"

    const-string v9, "stopped"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/telephony/TelephonyManager;

    const-string v4, "nfc"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v34

    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v37

    const-string v4, "bluetooth_manager"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v16

    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v41

    :goto_4
    if-nez v42, :cond_15

    const-string v4, "sys.shutdown.brightness"

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, v41

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    :try_start_3
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check NFC state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v34, :cond_6

    invoke-interface/range {v34 .. v34}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_16

    :cond_6
    const/16 v35, 0x1

    :goto_6
    if-nez v35, :cond_7

    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off NFC..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_7
    :goto_7
    :try_start_4
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check Bluetooth state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_18

    :cond_8
    const/16 v17, 0x1

    :goto_8
    if-nez v17, :cond_9

    const-string v4, "HtcShutdownThread"

    const-string v6, "Disabling Bluetooth..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_9
    :goto_9
    :try_start_5
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check Radio state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v37, :cond_a

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_a
    const/16 v39, 0x1

    :goto_a
    if-nez v39, :cond_b

    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off cellular radios..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_b
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    const-string v4, "HtcShutdownThread"

    const-string v6, "Stop FM"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v30, Landroid/content/Intent;

    const-string v4, "com.htc.fm.servicecommand"

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "command"

    const-string v6, "stop"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v4, "HtcShutdownThread"

    const-string v6, "Waiting for NFC, Bluetooth, Radio..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x1

    :goto_c
    const/16 v4, 0x41

    move/from16 v0, v31

    if-gt v0, v4, :cond_f

    if-nez v17, :cond_c

    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v4

    if-nez v4, :cond_1b

    const/16 v17, 0x1

    :goto_d
    if-eqz v17, :cond_c

    const-string v4, "HtcShutdownThread"

    const-string v6, "Bluetooth turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-nez v39, :cond_d

    :try_start_7
    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v4

    if-nez v4, :cond_1d

    const/16 v39, 0x1

    :goto_e
    if-eqz v39, :cond_d

    const-string v4, "HtcShutdownThread"

    const-string v6, "Radio turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-nez v35, :cond_e

    :try_start_8
    invoke-interface/range {v34 .. v34}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1e

    const/16 v35, 0x1

    :goto_f
    if-eqz v35, :cond_e

    const-string v4, "HtcShutdownThread"

    const-string v6, "NFC turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v39, :cond_20

    if-eqz v17, :cond_20

    if-eqz v35, :cond_20

    const-string v4, "HtcShutdownThread"

    const-string v6, "NFC, Radio, Bluetooth shutdown complete."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bluetoothOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nfcOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsAirplaneMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    const-string v4, "HtcShutdownThread"

    const-string v6, "check NFC state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v34, :cond_10

    invoke-interface/range {v34 .. v34}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_22

    :cond_10
    const/16 v35, 0x1

    :goto_10
    if-nez v35, :cond_11

    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off NFC..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_11
    :goto_11
    const/16 v31, 0x0

    :goto_12
    if-nez v35, :cond_26

    const/16 v4, 0x18

    move/from16 v0, v31

    if-ge v0, v4, :cond_26

    :try_start_a
    invoke-interface/range {v34 .. v34}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_24

    const/16 v35, 0x1

    :goto_13
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v31, v31, 0x1

    goto :goto_12

    :catch_0
    move-exception v20

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_12

    const-string v4, "HtcShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1

    :cond_13
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v4

    goto/16 :goto_2

    :catchall_0
    move-exception v4

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v4

    :cond_14
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_14

    :goto_14
    const-string v4, "init.svc.zchgd_onmode"

    const-string v6, "stopped"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "stopped"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_3

    :catch_2
    move-exception v20

    const/16 v41, 0x0

    goto/16 :goto_4

    :cond_15
    const-string v4, "sys.shutdown.brightness"

    const-string v6, "0"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    const/16 v35, 0x0

    goto/16 :goto_6

    :catch_3
    move-exception v21

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_17

    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/16 v35, 0x1

    goto/16 :goto_7

    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_8

    :catch_4
    move-exception v21

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_19

    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    const/16 v17, 0x1

    goto/16 :goto_9

    :cond_1a
    const/16 v39, 0x0

    goto/16 :goto_a

    :catch_5
    move-exception v21

    :try_start_e
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/16 v39, 0x1

    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catchall_1
    move-exception v4

    const-string v6, "HtcShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "radioOff = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v4

    :cond_1b
    const/16 v17, 0x0

    goto/16 :goto_d

    :catch_6
    move-exception v21

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1c

    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    const/16 v17, 0x1

    goto/16 :goto_d

    :cond_1d
    const/16 v39, 0x0

    goto/16 :goto_e

    :catch_7
    move-exception v21

    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v39, 0x1

    goto/16 :goto_e

    :cond_1e
    const/16 v35, 0x0

    goto/16 :goto_f

    :catch_8
    move-exception v21

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1f

    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/16 v35, 0x1

    goto/16 :goto_f

    :cond_20
    const/16 v4, 0x41

    move/from16 v0, v31

    if-ge v0, v4, :cond_21

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    :cond_21
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_c

    :cond_22
    const/16 v35, 0x0

    goto/16 :goto_10

    :catch_9
    move-exception v21

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_23

    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    const/16 v35, 0x1

    goto/16 :goto_11

    :cond_24
    const/16 v35, 0x0

    goto/16 :goto_13

    :catch_a
    move-exception v21

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_25

    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    const/16 v35, 0x1

    goto/16 :goto_13

    :cond_26
    if-nez v35, :cond_27

    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot disable NFC, nfcOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    new-instance v36, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$7;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$7;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;)V

    const-string v4, "HtcShutdownThread"

    const-string v6, "Shutting down MountService"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x4e20

    add-long v26, v6, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v6

    if-eqz v32, :cond_33

    :try_start_f
    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_28
    :goto_15
    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v18, v26, v10

    const-wide/16 v10, 0x0

    cmp-long v4, v18, v10

    if-gtz v4, :cond_34

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_29

    const-string v4, "HtcShutdownThread"

    const-string v7, "Shutdown wait timed out"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v15

    const-string v4, "HtcShutdownThread"

    const-string v6, "Shutting down activity manager..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_2a

    const/16 v4, 0x2710

    :try_start_11
    invoke-interface {v15, v4}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    :cond_2a
    :goto_16
    const-string v4, "HtcShutdownThread"

    const-string v6, "Waiting for shutdown animation complete..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x2710

    add-long v22, v6, v10

    :goto_17
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v18, v22, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-gtz v4, :cond_35

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2b

    const-string v4, "HtcShutdownThread"

    const-string v6, "Shutdown animation timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    if-eqz v4, :cond_2d

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2c

    const-string v4, "HtcShutdownThread"

    const-string v6, "reboot, setShutdownState true"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->setShutdownState(Z)V

    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rebooting, reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_12
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager;->lowLevelReboot_system(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    :cond_2d
    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2e
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v38

    new-instance v43, Ljava/lang/Object;

    invoke-direct/range {v43 .. v43}, Ljava/lang/Object;-><init>()V

    new-instance v45, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;

    const-string v4, "/data/system/screen_state"

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;Ljava/lang/String;Landroid/os/IPowerManager;Ljava/lang/Object;)V

    const/16 v44, 0x0

    :try_start_13
    invoke-interface/range {v38 .. v38}, Landroid/os/IPowerManager;->isActualScreenOn()Z

    move-result v44

    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pm.isActualScreenOn() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HtcShutdownThread"

    const-string v6, "Cleaning up power manager state..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v6, v7, v4, v9}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_f

    :goto_19
    if-eqz v44, :cond_30

    monitor-enter v43

    :try_start_14
    invoke-virtual/range {v45 .. v45}, Landroid/os/FileObserver;->startWatching()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x7d0

    add-long v50, v6, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v18, v50, v6

    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait screen off, delay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    const-wide/16 v6, 0x0

    cmp-long v4, v18, v6

    if-lez v4, :cond_2f

    :try_start_15
    move-object/from16 v0, v43

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_12
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :cond_2f
    :goto_1a
    :try_start_16
    monitor-exit v43
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    invoke-virtual/range {v45 .. v45}, Landroid/os/FileObserver;->stopWatching()V

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissProgressDialog()V

    const-string v4, "sys.shutdown.resume.count"

    new-instance v6, Ljava/lang/Integer;

    sget v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mResumeCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mResumeCount:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_31

    const-string v4, "HtcShutdownThread"

    const-string v6, "power off, setShutdownState true"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->setShutdownState(Z)V

    invoke-static {}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->getVibrateDuration()I

    move-result v33

    if-lez v33, :cond_32

    new-instance v48, Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    :try_start_17
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shutdown vibrate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v33

    int-to-long v6, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_10

    :goto_1b
    move/from16 v0, v33

    int-to-long v6, v0

    :try_start_18
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_13

    :cond_32
    :goto_1c
    const-string v46, "Performing low-level shutdown..."

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "(PowerOff)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    const-string v4, "HtcShutdownThread"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissShutdownScreen()V

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->lowLevelShutdown_system()V

    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    const/4 v4, 0x0

    :try_start_19
    sput-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    const/4 v4, 0x0

    sput-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    throw v4

    :cond_33
    :try_start_1a
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_28

    const-string v4, "HtcShutdownThread"

    const-string v7, "MountService unavailable for shutdown"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto/16 :goto_15

    :catch_b
    move-exception v20

    :try_start_1b
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_28

    const-string v4, "HtcShutdownThread"

    const-string v7, "Exception during MountService shutdown"

    move-object/from16 v0, v20

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    :catchall_3
    move-exception v4

    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    throw v4

    :cond_34
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    goto/16 :goto_15

    :catch_c
    move-exception v4

    goto/16 :goto_15

    :cond_35
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_d

    goto/16 :goto_17

    :catch_d
    move-exception v4

    goto/16 :goto_17

    :catch_e
    move-exception v20

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2d

    const-string v4, "HtcShutdownThread"

    const-string v6, "Reboot failed, will attempt shutdown instead"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    :catch_f
    move-exception v21

    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during goToSleepForShutdown"

    move-object/from16 v0, v21

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    :catchall_4
    move-exception v4

    :try_start_1e
    monitor-exit v43
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    throw v4

    :catch_10
    move-exception v20

    const-string v4, "HtcShutdownThread"

    const-string v6, "Failed to vibrate during shutdown."

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    :catch_11
    move-exception v4

    goto/16 :goto_16

    :catch_12
    move-exception v4

    goto/16 :goto_1a

    :catch_13
    move-exception v4

    goto/16 :goto_1c

    :catch_14
    move-exception v4

    goto/16 :goto_14
.end method
