.class Lcom/android/server/AppOpsService$HintDialog$3;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService$HintDialog;->updateOpsMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AppOpsService$HintDialog;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$HintDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppOpsService$HintDialog$3;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog$3;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iget-object v1, v0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog$3;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v0}, Lcom/android/server/AppOpsService$HintDialog;->access$600(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v0

    iget v2, v0, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog$3;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v0}, Lcom/android/server/AppOpsService$HintDialog;->access$600(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v0

    iget v3, v0, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog$3;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v0}, Lcom/android/server/AppOpsService$HintDialog;->access$600(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog$3;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mResult:Z
    invoke-static {v0}, Lcom/android/server/AppOpsService$HintDialog;->access$700(Lcom/android/server/AppOpsService$HintDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
