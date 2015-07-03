.class public Lcom/htc/lockscreen/framework/wrapper/AccountManagerWrapper;
.super Ljava/lang/Object;
.source "AccountManagerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountManagerWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static confirmCredentialsAsUser(Landroid/accounts/AccountManager;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getAccountsByTypeAsUser(Landroid/accounts/AccountManager;Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    :cond_0
    return-object v0
.end method
