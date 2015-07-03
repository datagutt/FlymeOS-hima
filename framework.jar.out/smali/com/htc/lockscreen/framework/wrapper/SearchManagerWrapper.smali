.class public Lcom/htc/lockscreen/framework/wrapper/SearchManagerWrapper;
.super Ljava/lang/Object;
.source "SearchManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssistIntent(Landroid/app/SearchManager;Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
