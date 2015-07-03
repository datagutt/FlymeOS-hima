.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"

.field private static mDeleteCarrierPartition:Z

.field private static mDeleteData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/MasterClearReceiver;->mDeleteData:Z

    sput-boolean v0, Lcom/android/server/MasterClearReceiver;->mDeleteCarrierPartition:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/MasterClearReceiver;->mDeleteData:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/MasterClearReceiver;->mDeleteCarrierPartition:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "google.com"

    const-string v2, "from"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MasterClear"

    const-string v2, "Ignoring master clear request -- not from trusted server."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "shutdown"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v1, "android.intent.extra.REASON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "delete_data"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/MasterClearReceiver;->mDeleteData:Z

    const-string v1, "delete_carrier_partition"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/MasterClearReceiver;->mDeleteCarrierPartition:Z

    const-string v1, "MasterClear"

    const-string v2, "!!! FACTORY RESET !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    const-string v2, "Reboot"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
