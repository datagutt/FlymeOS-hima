.class Lcom/android/server/am/ActivityStackSupervisor$2;
.super Landroid/database/ContentObserver;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStackSupervisor;->initScreenShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$doneUri:Landroid/net/Uri;

.field final synthetic val$emptyValue:Landroid/content/ContentValues;

.field final synthetic val$enableUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$cr:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$enableUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$doneUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$emptyValue:Landroid/content/ContentValues;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$enableUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->onScreenShareStatusChange(Landroid/database/Cursor;)V
    invoke-static {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;Landroid/database/Cursor;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$doneUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$2;->val$emptyValue:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :cond_0
    :try_start_3
    const-string v0, "ActivityManager"

    const-string v1, "Unable to get ScrShare status"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v7

    const-string v0, "ActivityManager"

    const-string v1, "Failed to toggle ScrShare"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
