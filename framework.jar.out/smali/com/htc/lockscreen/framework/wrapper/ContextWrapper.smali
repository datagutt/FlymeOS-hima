.class public Lcom/htc/lockscreen/framework/wrapper/ContextWrapper;
.super Ljava/lang/Object;
.source "ContextWrapper.java"


# static fields
.field public static final STATUS_BAR_SERVICE:Ljava/lang/String; = "statusbar"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/lockscreen/framework/wrapper/ContextWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/ContextWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
