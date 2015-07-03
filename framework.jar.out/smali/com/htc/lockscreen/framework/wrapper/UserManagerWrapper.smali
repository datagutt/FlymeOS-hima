.class public Lcom/htc/lockscreen/framework/wrapper/UserManagerWrapper;
.super Ljava/lang/Object;
.source "UserManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUsers(Landroid/os/UserManager;Z)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isUserSwitcherEnabled(Landroid/os/UserManager;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    return v0
.end method
