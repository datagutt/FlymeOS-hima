.class public Lcom/htc/internal/telephony/HtcSmsUtilsHandler;
.super Landroid/os/Handler;
.source "HtcSmsUtilsHandler.java"


# static fields
.field public static final EVENT_LOAD_SINGLE_SIMSMS_DONE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static sHandlers:[Lcom/htc/internal/telephony/HtcSmsUtilsHandler;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mSimSms:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->sHandlers:[Lcom/htc/internal/telephony/HtcSmsUtilsHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->mLock:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->mSimSms:[B

    return-void
.end method

.method public static getSmsUtilsHandler(Lcom/android/internal/telephony/PhoneBase;)Lcom/htc/internal/telephony/HtcSmsUtilsHandler;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 46
    sget-object v1, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->sHandlers:[Lcom/htc/internal/telephony/HtcSmsUtilsHandler;

    if-nez v1, :cond_0

    .line 47
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Lcom/htc/internal/telephony/HtcSmsUtilsHandler;

    sput-object v1, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->sHandlers:[Lcom/htc/internal/telephony/HtcSmsUtilsHandler;

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    .line 51
    .local v0, "phoneId":I
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v1, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->sHandlers:[Lcom/htc/internal/telephony/HtcSmsUtilsHandler;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->sHandlers:[Lcom/htc/internal/telephony/HtcSmsUtilsHandler;

    new-instance v2, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;

    invoke-direct {v2}, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;-><init>()V

    aput-object v2, v1, v0

    .line 55
    :cond_1
    sget-object v1, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->sHandlers:[Lcom/htc/internal/telephony/HtcSmsUtilsHandler;

    aget-object v1, v1, v0

    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 65
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 67
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, p0, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->mSimSms:[B

    .line 72
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :try_start_1
    const-string v1, "SMS"

    const-string v3, "Cannot load SIM SMS record"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->mSimSms:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->mSimSms:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 62
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
