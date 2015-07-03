.class public Lcom/htc/lockscreen/framework/wrapper/PendingIntentWrapper;
.super Ljava/lang/Object;
.source "PendingIntentWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static isActivity(Landroid/app/PendingIntent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    return v0
.end method
