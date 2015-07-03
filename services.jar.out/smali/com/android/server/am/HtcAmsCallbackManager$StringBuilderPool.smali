.class Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;
.super Ljava/lang/Object;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringBuilderPool"
.end annotation


# static fields
.field static mPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->mPool:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/lang/StringBuilder;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->mPool:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    sget-object v2, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->mPool:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    sget-object v2, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->mPool:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Allocate StringBuilder for thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "HtcAmsCallbackManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v2, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->mPool:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v1
.end method
