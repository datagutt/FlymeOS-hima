.class Lcom/android/server/ConnectivityService$MobileStatusObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileStatusObserver"
.end annotation


# instance fields
.field RequestUri:Landroid/net/Uri;

.field ResponseUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ConnectivityService$MobileStatusObserver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "content://com.htc.mobiledata/status/BLOCK_DATA_UNTIL_USER_CONFIRM"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService$MobileStatusObserver;->RequestUri:Landroid/net/Uri;

    const-string v0, "content://com.htc.mobiledata/status/BLOCK_DATA_USER_RESPONSE"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService$MobileStatusObserver;->ResponseUri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # setter for: Lcom/android/server/ConnectivityService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->access$5102(Lcom/android/server/ConnectivityService;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$MobileStatusObserver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$MobileStatusObserver;->ResponseUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/ConnectivityService$MobileStatusObserver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$MobileStatusObserver;->RequestUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileStatusObserver: onChange - ResponseSeqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/RequestSeqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1900(Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$MobileStatusObserver;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->notifyUserSelection()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;)V

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MobileStatusObserver: Exception e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1900(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ConnectivityService$MobileStatusObserver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$MobileStatusObserver;->ResponseUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ConnectivityService$MobileStatusObserver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
