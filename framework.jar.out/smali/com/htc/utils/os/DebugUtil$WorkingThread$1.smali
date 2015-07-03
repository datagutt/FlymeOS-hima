.class Lcom/htc/utils/os/DebugUtil$WorkingThread$1;
.super Ljava/lang/Object;
.source "DebugUtil.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/utils/os/DebugUtil$WorkingThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/utils/os/DebugUtil$WorkingThread;


# direct methods
.method constructor <init>(Lcom/htc/utils/os/DebugUtil$WorkingThread;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/utils/os/DebugUtil$WorkingThread$1;->this$0:Lcom/htc/utils/os/DebugUtil$WorkingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "dumpstate_partial"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
