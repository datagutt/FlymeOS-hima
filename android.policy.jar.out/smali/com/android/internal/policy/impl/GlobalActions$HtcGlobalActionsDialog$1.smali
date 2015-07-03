.class Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->dismiss()V

    return-void
.end method
