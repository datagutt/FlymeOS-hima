.class Landroid/hardware/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/Camera;->notifyVTE(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/Camera;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Landroid/hardware/Camera;Z)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera$1;->this$0:Landroid/hardware/Camera;

    iput-boolean p2, p0, Landroid/hardware/Camera$1;->val$on:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v2, 0x0

    const-string v6, "VTE"

    const-string v7, "Start thread to notify VTE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const-string v7, "com.htc.vte"

    invoke-interface {v6, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasFeature com.htc.vte"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v6, "Camera"

    const-string v7, "Unable to check support VTE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/hardware/Camera$1;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraId:I
    invoke-static {v6}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)I

    move-result v6

    # getter for: Landroid/hardware/Camera;->sIndexOfFront:I
    invoke-static {}, Landroid/hardware/Camera;->access$100()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "VTE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notify VTE to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/hardware/Camera$1;->val$on:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for cameraId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/Camera$1;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraId:I
    invoke-static {v8}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", in pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    :try_start_1
    iget-boolean v6, p0, Landroid/hardware/Camera$1;->val$on:Z

    if-eqz v6, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.htc.camera.CameraStatusON"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v6, "CameraInfo"

    # getter for: Landroid/hardware/Camera;->sIndexOfFront:I
    invoke-static {}, Landroid/hardware/Camera;->access$100()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "IM_APP"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "IM_PID"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "com.htc.vte"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v6, p0, Landroid/hardware/Camera$1;->this$0:Landroid/hardware/Camera;

    iget-boolean v7, p0, Landroid/hardware/Camera$1;->val$on:Z

    # setter for: Landroid/hardware/Camera;->mVteEnable:Z
    invoke-static {v6, v7}, Landroid/hardware/Camera;->access$202(Landroid/hardware/Camera;Z)Z

    goto/16 :goto_1

    :cond_2
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.htc.camera.CameraStatusOFF"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_3
.end method
