.class Lcom/android/server/pm/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->updateSettingsLI(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;[I[ZLcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    # setter for: Lcom/android/server/pm/PackageManagerService;->isHWAccDBChanged:Z
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->access$4402(Lcom/android/server/pm/PackageManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->isEnabledHWAcc:I
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;)I

    move-result v4

    if-lez v4, :cond_1

    :goto_0
    # invokes: Lcom/android/server/pm/PackageManagerService;->updateHWaccPackages(Z)V
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;Z)V

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data changed, update all Packages HW accelerate setting, time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
