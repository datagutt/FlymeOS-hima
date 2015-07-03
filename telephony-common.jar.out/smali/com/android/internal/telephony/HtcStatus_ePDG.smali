.class public Lcom/android/internal/telephony/HtcStatus_ePDG;
.super Ljava/lang/Object;
.source "HtcStatus_ePDG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_END:I = 0x2

.field private static final EVENT_INIT:I = 0x1

.field private static final IWLAN_STATE_INTENT_ACTION:Ljava/lang/String; = "com.htc.intent.action.ACTION_IWLAN_STATE_CHANGED"

.field private static final IWLAN_STATE_INTENT_EXTRA:Ljava/lang/String; = "iWLANStatus"

.field private static final IWLAN_STATE_INTENT_PERMISSION:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field private static final LOG_TAG:Ljava/lang/String; = "Phn_ePDG"


# instance fields
.field private ePDGmode:Ljava/lang/Integer;

.field private ePDGtime:J

.field private h:Landroid/os/Handler;

.field private mRcvr:Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcStatus_ePDG;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcStatus_ePDG;)Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcStatus_ePDG;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->mRcvr:Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/HtcStatus_ePDG;Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;)Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcStatus_ePDG;
    .param p1, "x1"    # Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->mRcvr:Lcom/android/internal/telephony/HtcStatus_ePDG$iWlanStateReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/HtcStatus_ePDG;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcStatus_ePDG;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/HtcStatus_ePDG;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcStatus_ePDG;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGmode:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/HtcStatus_ePDG;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcStatus_ePDG;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGmode:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/HtcStatus_ePDG;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcStatus_ePDG;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGtime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/HtcStatus_ePDG;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcStatus_ePDG;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGtime:J

    return-wide p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Lcom/android/internal/telephony/HtcStatus_ePDG$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/HtcStatus_ePDG$1;-><init>(Lcom/android/internal/telephony/HtcStatus_ePDG;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->h:Landroid/os/Handler;

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method private status()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGmode:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->ePDGmode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private terminate()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/HtcStatus_ePDG;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcStatus_ePDG;->terminate()V

    .line 28
    return-void
.end method

.method public getStatus()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcStatus_ePDG;->status()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
