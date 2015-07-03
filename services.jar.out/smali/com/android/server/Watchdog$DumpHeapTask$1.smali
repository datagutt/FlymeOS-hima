.class Lcom/android/server/Watchdog$DumpHeapTask$1;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog$DumpHeapTask;->deleteAllHprof()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog$DumpHeapTask;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog$DumpHeapTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/Watchdog$DumpHeapTask$1;->this$0:Lcom/android/server/Watchdog$DumpHeapTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".syshprof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
