.class Lcom/android/server/MountService$FileLevelEncyrptionCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileLevelEncyrptionCallBack"
.end annotation


# instance fields
.field final encryption:Z

.field final password:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/MountService$FileLevelEncyrptionCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    iput-object p3, p0, Lcom/android/server/MountService$FileLevelEncyrptionCallBack;->password:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/MountService$FileLevelEncyrptionCallBack;->encryption:Z

    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 2

    invoke-super {p0}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    iget-boolean v0, p0, Lcom/android/server/MountService$FileLevelEncyrptionCallBack;->encryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/MountService$FileLevelEncyrptionCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$FileLevelEncyrptionCallBack;->password:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->enableFilesystemEncryptionCallBack(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService$FileLevelEncyrptionCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$FileLevelEncyrptionCallBack;->password:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->disableFilesystemEncryptionCallBack(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;)V

    goto :goto_0
.end method
