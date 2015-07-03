.class Lcom/android/internal/policy/impl/PhoneWindowManager$KillToast;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KillToast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KillToast;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KillToast;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    :try_start_0
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKillMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKillMessage:Ljava/lang/String;

    :cond_0
    return-void

    :catchall_0
    move-exception v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
