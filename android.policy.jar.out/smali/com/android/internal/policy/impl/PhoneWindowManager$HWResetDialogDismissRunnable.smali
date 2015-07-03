.class Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HWResetDialogDismissRunnable"
.end annotation


# instance fields
.field dlg:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

.field final dlgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;->dlg:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;->dlg:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;->dlgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;->dlg:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;->dlg:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;->dlg:Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->dismiss()V

    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    const-string v0, "InputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HWResetDialogDismissRunnable;->dlgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dismiss()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
