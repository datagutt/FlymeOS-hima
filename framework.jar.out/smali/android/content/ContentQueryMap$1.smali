.class Landroid/content/ContentQueryMap$1;
.super Landroid/database/ContentObserver;
.source "ContentQueryMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/ContentQueryMap;->setKeepUpdated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentQueryMap;


# direct methods
.method constructor <init>(Landroid/content/ContentQueryMap;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v2, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {v2}, Landroid/content/ContentQueryMap;->countObservers()I

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {v2}, Landroid/content/ContentQueryMap;->requery()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "ContentQueryMap"

    const-string v3, "SQLiteDiskIOException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    # invokes: Landroid/content/ContentQueryMap;->shouldSkipWhileShutdown(Landroid/database/sqlite/SQLiteException;)Z
    invoke-static {v2, v1}, Landroid/content/ContentQueryMap;->access$000(Landroid/content/ContentQueryMap;Landroid/database/sqlite/SQLiteException;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ContentQueryMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException while shutting down, skip it, reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    iget-object v2, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    const/4 v3, 0x1

    # setter for: Landroid/content/ContentQueryMap;->mDirty:Z
    invoke-static {v2, v3}, Landroid/content/ContentQueryMap;->access$102(Landroid/content/ContentQueryMap;Z)Z

    goto :goto_0
.end method
