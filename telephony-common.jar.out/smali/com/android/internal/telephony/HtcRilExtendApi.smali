.class public Lcom/android/internal/telephony/HtcRilExtendApi;
.super Ljava/lang/Object;
.source "HtcRilExtendApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcRilExtendApi$1;,
        Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;,
        Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;,
        Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MAX_WAITING_TIME:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "RilExt"

.field private static mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private static sInstance:Lcom/android/internal/telephony/HtcRilExtendApi;


# instance fields
.field private mThread:Landroid/os/HandlerThread;

.field private mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi;

    invoke-direct {v0}, Lcom/android/internal/telephony/HtcRilExtendApi;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HtcRilExtendApi;->sInstance:Lcom/android/internal/telephony/HtcRilExtendApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RilExt"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcRilExtendApi;->mThread:Landroid/os/HandlerThread;

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/HtcRilExtendApi;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v0, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcRilExtendApi;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;-><init>(Lcom/android/internal/telephony/HtcRilExtendApi;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcRilExtendApi;)Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcRilExtendApi;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public static getDefault(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/HtcRilExtendApi;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 78
    const-string v0, "RilExt"

    const-string v1, "getDefault: phone is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/HtcRilExtendApi;->sInstance:Lcom/android/internal/telephony/HtcRilExtendApi;

    return-object v0

    .line 82
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    check-cast p0, Lcom/android/internal/telephony/PhoneBase;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    sput-object p0, Lcom/android/internal/telephony/HtcRilExtendApi;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 108
    new-instance v1, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 109
    .local v1, "request":Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcRilExtendApi;->mThreadHandler:Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 110
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    monitor-enter v1

    .line 114
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 116
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    goto :goto_0

    .line 121
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    iget-object v2, v1, Lcom/android/internal/telephony/HtcRilExtendApi$ThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 121
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public rilFunctionMappingTable(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const-string v3, "methodName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "methodName":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "bundleResult":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcRilExtendApi$MethodEnum;->getIndex(Ljava/lang/String;)I

    move-result v1

    .line 100
    .local v1, "mapResult":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 102
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcRilExtendApi;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bundleResult":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 104
    .restart local v0    # "bundleResult":Landroid/os/Bundle;
    :cond_0
    return-object v0
.end method
