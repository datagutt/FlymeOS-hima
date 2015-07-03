.class final Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;
.super Ljava/util/HashSet;
.source "PDPContextStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PDPContextStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 142
    const-string v0, "hipri"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method
