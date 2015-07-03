.class Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;
.super Ljava/lang/Object;
.source "HtcLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastRecord"
.end annotation


# instance fields
.field final intent:Landroid/content/Intent;

.field final receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/htc/lockscreen/framework/HtcLocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    return-void
.end method
