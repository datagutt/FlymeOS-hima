.class Lcom/android/internal/policy/impl/GlobalActions$8;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;

.field final synthetic val$dialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->val$dialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->val$dialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/policy/impl/GlobalActions;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->val$dialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->dismiss()V

    return-void
.end method
