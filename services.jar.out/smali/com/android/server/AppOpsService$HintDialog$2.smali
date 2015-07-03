.class Lcom/android/server/AppOpsService$HintDialog$2;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService$HintDialog;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$HintDialogData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AppOpsService$HintDialog;

.field final synthetic val$this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$HintDialog;Lcom/android/server/AppOpsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iput-object p2, p0, Lcom/android/server/AppOpsService$HintDialog$2;->val$this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/AppOpsService$HintDialog$2;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/server/AppOpsService$HintDialog;->updateOpsMode(Z)V
    invoke-static {v1, v0}, Lcom/android/server/AppOpsService$HintDialog;->access$300(Lcom/android/server/AppOpsService$HintDialog;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
