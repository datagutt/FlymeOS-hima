.class public Lcom/htc/server/HtcOOBEMonitorListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcOOBEMonitorListener.java"


# static fields
.field private static final ATT_OOBE_DCS_WIFI_SELECTOR_PAGE:Ljava/lang/String; = "com.synchronoss.dcs.att.r2g/com.synchronoss.dcs.DCSWifiNetworkSelector"

.field private static final DEBUG_ON:Z

.field private static final TAG:Ljava/lang/String; = "HtcOOBEML"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/HtcOOBEMonitorListener;->DEBUG_ON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    sget-boolean v0, Lcom/htc/server/HtcOOBEMonitorListener;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcOOBEML"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/am/HtcWrapActivityRecord;->shortComponentName:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "HtcOOBEML"

    const-string v3, "activity or shortComponentName is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p1, Lcom/android/server/am/HtcWrapActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v3, "com.synchronoss.dcs.att.r2g/com.synchronoss.dcs.DCSWifiNetworkSelector"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/htc/server/HtcOOBEMonitorListener;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    const-string v2, "HtcOOBEML"

    const-string v3, "find select page"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->informOOBEStatusChange(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HtcOOBEML"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "informOOBEStatusChange e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2

    iput-object p2, p0, Lcom/htc/server/HtcOOBEMonitorListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/server/HtcOOBEMonitorListener;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "HtcOOBEML"

    const-string v1, "mContext is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
