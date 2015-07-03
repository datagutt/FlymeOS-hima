.class Lcom/android/server/AppOpsService$HintDialog$1;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/server/AppOpsService$HintDialog$1;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    iput-object p2, p0, Lcom/android/server/AppOpsService$HintDialog$1;->val$this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog$1;->this$1:Lcom/android/server/AppOpsService$HintDialog;

    # setter for: Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z
    invoke-static {v0, p2}, Lcom/android/server/AppOpsService$HintDialog;->access$202(Lcom/android/server/AppOpsService$HintDialog;Z)Z

    return-void
.end method
