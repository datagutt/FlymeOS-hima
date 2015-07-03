.class final Lcom/android/server/power/HtcDongleMode;
.super Ljava/lang/Object;
.source "HtcDongleMode.java"


# instance fields
.field private final ACTION_MIRROR_DISPLAY_STATE_CHANGED:Ljava/lang/String;

.field private final ACTION_MIRROR_LINK_MODE:Ljava/lang/String;

.field private final ACTION_MIRROR_LINK_MODE_ALIVE:Ljava/lang/String;

.field private final DEBUG_ON:Z

.field private final DONGLE_MODE_TIMEOUT:I

.field private final KEY_MIRROR_DISPLAY_STATUS:Ljava/lang/String;

.field private final KEY_MIRROR_LINK_CONNECTED:Ljava/lang/String;

.field private final MASTER_ENABLE:Z

.field private final MIRROR_DISPLAY_STATUS_DEFAULT:Z

.field private final MIRROR_LINK_CONNECTED_DEFAULT:Z

.field private final TAG:Ljava/lang/String;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private mContext:Landroid/content/Context;

.field private mDongleMode:Z

.field private final mDongleModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mDongleModeTimeoutTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMiracastMode:Z

.field private final mMirrorLinkModeReceiver:Landroid/content/BroadcastReceiver;

.field private mMirrorMode:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "HtcDongleMode"

    iput-object v2, p0, Lcom/android/server/power/HtcDongleMode;->TAG:Ljava/lang/String;

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v2, p0, Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/HtcDongleMode;->MASTER_ENABLE:Z

    const-string v2, "com.htc.HTCMirrorLinkServer.CONNECTION_ALIVE"

    iput-object v2, p0, Lcom/android/server/power/HtcDongleMode;->ACTION_MIRROR_LINK_MODE_ALIVE:Ljava/lang/String;

    const-string v2, "com.htc.HTCMirrorLinkServer.CONNECTION_STATE"

    iput-object v2, p0, Lcom/android/server/power/HtcDongleMode;->ACTION_MIRROR_LINK_MODE:Ljava/lang/String;

    const-string v2, "IsConnected"

    iput-object v2, p0, Lcom/android/server/power/HtcDongleMode;->KEY_MIRROR_LINK_CONNECTED:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/power/HtcDongleMode;->MIRROR_LINK_CONNECTED_DEFAULT:Z

    const-string v2, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    iput-object v2, p0, Lcom/android/server/power/HtcDongleMode;->ACTION_MIRROR_DISPLAY_STATE_CHANGED:Ljava/lang/String;

    const-string v2, "mirror_display_status"

    iput-object v2, p0, Lcom/android/server/power/HtcDongleMode;->KEY_MIRROR_DISPLAY_STATUS:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/power/HtcDongleMode;->MIRROR_DISPLAY_STATUS_DEFAULT:Z

    const v2, 0xea60

    iput v2, p0, Lcom/android/server/power/HtcDongleMode;->DONGLE_MODE_TIMEOUT:I

    iput-boolean v3, p0, Lcom/android/server/power/HtcDongleMode;->mDongleMode:Z

    iput-boolean v3, p0, Lcom/android/server/power/HtcDongleMode;->mMirrorMode:Z

    iput-boolean v3, p0, Lcom/android/server/power/HtcDongleMode;->mMiracastMode:Z

    new-instance v2, Lcom/android/server/power/HtcDongleMode$1;

    invoke-direct {v2, p0}, Lcom/android/server/power/HtcDongleMode$1;-><init>(Lcom/android/server/power/HtcDongleMode;)V

    iput-object v2, p0, Lcom/android/server/power/HtcDongleMode;->mMirrorLinkModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/power/HtcDongleMode$2;

    invoke-direct {v2, p0}, Lcom/android/server/power/HtcDongleMode$2;-><init>(Lcom/android/server/power/HtcDongleMode;)V

    iput-object v2, p0, Lcom/android/server/power/HtcDongleMode;->mDongleModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/power/HtcDongleMode$3;

    invoke-direct {v2, p0}, Lcom/android/server/power/HtcDongleMode$3;-><init>(Lcom/android/server/power/HtcDongleMode;)V

    iput-object v2, p0, Lcom/android/server/power/HtcDongleMode;->mDongleModeTimeoutTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/power/HtcDongleMode;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcDongleMode"

    const-string v3, "Constructor: MASTER_ENABLE=true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/HtcDongleMode;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/power/HtcDongleMode;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.htc.HTCMirrorLinkServer.CONNECTION_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/HtcDongleMode;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/HtcDongleMode;->mDongleModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.htc.HTCMirrorLinkServer.CONNECTION_ALIVE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/HtcDongleMode;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/HtcDongleMode;->mMirrorLinkModeReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.htc.permission.APP_DEFAULT"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/HtcDongleMode;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/power/HtcDongleMode;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/HtcDongleMode;->mDongleMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/power/HtcDongleMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcDongleMode;->enableDongleMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/HtcDongleMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcDongleMode;->enableMirrorMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcDongleMode;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcDongleMode;->enableMiracastMode(I)V

    return-void
.end method

.method private enableDongleMode(Z)V
    .locals 6

    iget-boolean v1, p0, Lcom/android/server/power/HtcDongleMode;->mDongleMode:Z

    if-eq p1, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/HtcDongleMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/HtcDongleMode;->mDongleModeTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/HtcDongleMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/HtcDongleMode;->mDongleModeTimeoutTask:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/android/server/power/HtcDongleMode;->mDongleMode:Z

    iget-object v1, p0, Lcom/android/server/power/HtcDongleMode;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-boolean v2, p0, Lcom/android/server/power/HtcDongleMode;->mDongleMode:Z

    invoke-interface {v1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->enableDongleMode(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    const-string v1, "HtcDongleMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDongleMode: mDongleMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/HtcDongleMode;->mDongleMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", statusChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableMiracastMode(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/power/HtcDongleMode;->mMiracastMode:Z

    if-nez p1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/HtcDongleMode;->mMiracastMode:Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/HtcDongleMode;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/HtcDongleMode;->mMiracastMode:Z

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/HtcDongleMode;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-boolean v2, p0, Lcom/android/server/power/HtcDongleMode;->mMiracastMode:Z

    invoke-interface {v1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->enableMiracastMode(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    const-string v1, "HtcDongleMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableMiracastMode: preMiracastMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nowMiracastMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/HtcDongleMode;->mMiracastMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/HtcDongleMode;->mMiracastMode:Z

    goto :goto_0
.end method

.method private enableMirrorMode(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/power/HtcDongleMode;->mMirrorMode:Z

    iput-boolean p1, p0, Lcom/android/server/power/HtcDongleMode;->mMirrorMode:Z

    iget-object v1, p0, Lcom/android/server/power/HtcDongleMode;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/HtcDongleMode;->mMirrorMode:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/HtcDongleMode;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-boolean v2, p0, Lcom/android/server/power/HtcDongleMode;->mMirrorMode:Z

    invoke-interface {v1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->enableMirrorMode(Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcDongleMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableMirrorMode: preMirrorMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nowMirrorMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/HtcDongleMode;->mMirrorMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method protected getCtrlWakeLockState(Ljava/lang/String;II)I
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/HtcDongleMode;->mDongleMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcDongleMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Remove bit."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr p2, v0

    :cond_1
    return p2
.end method

.method protected isDongleMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/HtcDongleMode;->mDongleMode:Z

    return v0
.end method

.method protected isMiracastMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/HtcDongleMode;->mMiracastMode:Z

    return v0
.end method

.method protected isMirrorMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/HtcDongleMode;->mMirrorMode:Z

    return v0
.end method
