.class public Lcom/htc/lockscreen/framework/wrapper/BroadcastReceiverWrapper;
.super Ljava/lang/Object;
.source "BroadcastReceiverWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastReceiverWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSendingUserId(Landroid/content/BroadcastReceiver;)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    :cond_0
    return v0
.end method
