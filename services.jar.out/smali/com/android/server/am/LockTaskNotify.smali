.class public Lcom/android/server/am/LockTaskNotify;
.super Ljava/lang/Object;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LockTaskNotify$1;,
        Lcom/android/server/am/LockTaskNotify$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockTaskNotify"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/LockTaskNotify$H;

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$1;)V

    iput-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/am/LockTaskNotify;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public handleShowToast(Z)V
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z

    move-result v0

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v3, 0x1040674

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    const v3, 0x30701fb

    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const v3, 0x30701fa

    goto :goto_1

    :cond_4
    const v3, 0x30701f6

    goto :goto_1

    :cond_5
    const v3, 0x30701f7

    goto :goto_2
.end method

.method public show(Z)V
    .locals 4

    const v0, 0x104067b

    if-eqz p1, :cond_0

    const v0, 0x104067a

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToast(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/LockTaskNotify$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
