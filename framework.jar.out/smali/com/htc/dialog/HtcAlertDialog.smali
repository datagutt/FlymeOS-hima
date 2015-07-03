.class public Lcom/htc/dialog/HtcAlertDialog;
.super Landroid/app/Dialog;
.source "HtcAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertDialog$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "HtcAlertDialog"


# instance fields
.field protected mAlert:Lcom/htc/dialog/HtcAlertController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/dialog/HtcAlertDialog;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    new-instance v0, Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/htc/dialog/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertController;->setTitleCenterEnabled(Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    new-instance v0, Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/htc/dialog/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertController;->setTitleCenterEnabled(Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/dialog/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/htc/dialog/HtcAlertDialog;->setCancelable(Z)V

    invoke-virtual {p0, p3}, Lcom/htc/dialog/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/htc/dialog/HtcAlertDialog;->DEBUG:Z

    return v0
.end method

.method public static getDefaultListItemHeight(Landroid/content/Context;Z)I
    .locals 9

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "com.htc.widget.HtcAlertDialog"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getDefaultListItemHeight"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string v5, "HtcAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultListItemHegiht: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "HtcAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultListItemHegiht: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v5, "HtcAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultListItemHegiht: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v5, "HtcAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultListItemHegiht: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getPadding1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertController;->getPadding1()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPadding3()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertController;->getPadding3()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckBoxChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertController;->isCheckBoxChecked()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertController;->installContent()V

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-boolean v2, Lcom/htc/dialog/HtcAlertDialog;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcAlertDialog"

    const-string v3, "[onCreate] auto launch SIP."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dialog/HtcAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dialog/HtcAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setCheckBoxChecked(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setCheckBoxChecked(Z)V

    return-void
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setCheckBoxEnabled(Z)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertController;->setIcon(I)V

    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setInverseBackgroundForced(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;)V

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;IIII)V

    return-void
.end method
