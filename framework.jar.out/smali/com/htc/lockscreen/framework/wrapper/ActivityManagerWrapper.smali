.class public Lcom/htc/lockscreen/framework/wrapper/ActivityManagerWrapper;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHighEndGfx()Z
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    return v0
.end method
