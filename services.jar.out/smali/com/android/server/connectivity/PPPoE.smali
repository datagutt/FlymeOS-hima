.class public Lcom/android/server/connectivity/PPPoE;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "PPPoE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x0

.field private static final CMD_START_PPPOE:I = 0x1

.field private static final CMD_STOP_PPPOE:I = 0x2

.field private static final CMD_TIMEOUT_CHECK:I = 0x3

.field private static final DBG:Z = true

.field private static final DBG_DETAIL:Z

.field private static final EVENT_BASE:I = 0x64

.field private static final EVENT_IFACELINKSTATE_CHANGE:I = 0x65

.field private static final EVENT_IFACESTATE_CHANGE:I = 0x67

.field private static final EVENT_INTERFACE_CHANGE:I = 0x66

.field private static final EVENT_LIMIT_REACHED:I = 0x68

.field public static final EXTRA_PPPOE_STATE:Ljava/lang/String; = "pppoe_state"

.field public static final EXTRA_RESULT_ERROR_CODE:Ljava/lang/String; = "pppoe_result_error_code"

.field public static final EXTRA_RESULT_STATUS:Ljava/lang/String; = "pppoe_result_status"

.field private static final PATH:Ljava/lang/String; = "/data/misc/ppp-pppoe.pid"

.field private static final PPPOE_NETID:I = 0xffdc

.field public static final PPPoE_ALREADY_ONLINE:Ljava/lang/String; = "ALREADY_ONLINE"

.field public static final PPPoE_FAILURE:Ljava/lang/String; = "FAILURE"

.field private static final PPPoE_STATE_CONNECTED:I = 0x2

.field private static final PPPoE_STATE_CONNECTING:I = 0x1

.field private static final PPPoE_STATE_DISCONNECTED:I = 0x4

.field private static final PPPoE_STATE_DISCONNECTING:I = 0x3

.field private static final PPPoE_STATE_UNKNOWN:I = 0x5

.field public static final PPPoE_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final PROPIFACE:Ljava/lang/String; = "net.pppoe.interface"

.field private static final TAG:Ljava/lang/String; = "PPPoE"


# instance fields
.field private PPPoEIface:Ljava/lang/String;

.field private curPPPoEState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mContext:Landroid/content/Context;

.field private volatile mInitComplete:Z

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

.field private mPPPoESM:Lcom/android/internal/util/StateMachine;

.field private mThread:Landroid/os/HandlerThread;

.field private monline_start_time:J

.field private msgcount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/PPPoE;->curPPPoEState:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v4, p0, Lcom/android/server/connectivity/PPPoE;->mInitComplete:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/connectivity/PPPoE;->monline_start_time:J

    iput v4, p0, Lcom/android/server/connectivity/PPPoE;->msgcount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/connectivity/PPPoE;->mContext:Landroid/content/Context;

    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;

    new-instance v1, Landroid/net/wifi/PPPOEInfo;

    invoke-direct {v1}, Landroid/net/wifi/PPPOEInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    invoke-direct {p0}, Lcom/android/server/connectivity/PPPoE;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PPPoE;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/PPPoE;->initInThread()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/PPPoE;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/PPPoE;->msgcount:I

    return v0
.end method

.method static synthetic access$1104(Lcom/android/server/connectivity/PPPoE;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/PPPoE;->msgcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/PPPoE;->msgcount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/PPPoE;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/PPPoE;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->curPPPoEState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/PPPoE;)Landroid/net/wifi/PPPOEInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/PPPoE;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/connectivity/PPPoE;->monline_start_time:J

    return-wide p1
.end method

.method private init()V
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/PPPoE$1;

    const-string v1, "PPPoE"

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/PPPoE$1;-><init>(Lcom/android/server/connectivity/PPPoE;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/PPPoE;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const-string v1, "PPPoEStatMachine"

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;-><init>(Lcom/android/server/connectivity/PPPoE;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private initInThread()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE;->mThread:Landroid/os/HandlerThread;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/PPPoE;->mInitComplete:Z

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mThread:Landroid/os/HandlerThread;

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

.method private readPPPoEIface(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->getPPPoEStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aget-object v4, v3, v6

    const/4 v6, 0x1

    aget-object v5, v3, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_2

    sget-boolean v6, Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z

    if-eqz v6, :cond_0

    const-string v6, "PPPoE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " PID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", IFACE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v6, 0x14

    if-le v2, v6, :cond_3

    const-string v6, "PPPoE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read succees after try: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " times"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_1
    :goto_2
    return-object v4

    :catch_0
    move-exception v0

    const-string v6, "PPPoE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read-PPPoE-Iface ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    const/16 v6, 0x1f4

    if-ge v2, v6, :cond_1

    move v2, v1

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 6

    const-wide/16 v2, 0x0

    const-string v1, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPPPOEInfo PPoEIface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    iget-wide v4, p0, Lcom/android/server/connectivity/PPPoE;->monline_start_time:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/connectivity/PPPoE;->monline_start_time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    :cond_0
    iput-wide v2, v1, Landroid/net/wifi/PPPOEInfo;->online_time:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/net/wifi/PPPOEInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;

    invoke-direct {v1, v2}, Landroid/net/wifi/PPPOEInfo;-><init>(Landroid/net/wifi/PPPOEInfo;)V

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "PPPoE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to getPPPOEInfo(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized interfaceAdded(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ppp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v2, "PPPoE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interfaceLinkStateChanged PPPoEIface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", up: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/connectivity/PPPoE;->syncGetPPPoEState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const-string v2, "/data/misc/ppp-pppoe.pid"

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/PPPoE;->readPPPoEIface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    const/16 v4, 0x65

    if-eqz p2, :cond_2

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    const/16 v4, 0x65

    if-eqz p2, :cond_4

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public declared-synchronized interfaceRemoved(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PPPoE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceRemoved,state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/connectivity/PPPoE;->syncGetPPPoEStateByName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    const/16 v2, 0x66

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    const-string v0, "net.pppoe.interface"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ppp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PPPoE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ppp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v2, "PPPoE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interfaceStatusChanged PPPoEIface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", up: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/connectivity/PPPoE;->syncGetPPPoEState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const-string v2, "/data/misc/ppp-pppoe.pid"

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/PPPoE;->readPPPoEIface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    const/16 v4, 0x67

    if-eqz p2, :cond_2

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    const/16 v4, 0x67

    if-eqz p2, :cond_4

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 3

    const-string v0, "PPPoE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPPPOE PPoEIface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public stopPPPOE()V
    .locals 3

    const-string v0, "PPPoE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPPPOE PPoEIface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE;->mPPPoESM:Lcom/android/internal/util/StateMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public syncGetPPPoEState()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->curPPPoEState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetPPPoEStateByName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE;->curPPPoEState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "PPPOE_STATE_DISCONNECTED"

    goto :goto_0

    :pswitch_1
    const-string v0, "PPPOE_STATE_DISCONNECTING"

    goto :goto_0

    :pswitch_2
    const-string v0, "PPPOE_STATE_CONNECTING"

    goto :goto_0

    :pswitch_3
    const-string v0, "PPPOE_STATE_CONNECTED"

    goto :goto_0

    :pswitch_4
    const-string v0, "PPPOE_STATE_UNKNOWN"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
