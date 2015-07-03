.class public Landroid/media/MediaScannerConnection;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScannerConnection$ClientProxy;,
        Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;,
        Landroid/media/MediaScannerConnection$OnScanCompletedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerConnection"

.field private static mimeType_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static path_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/media/IMediaScannerListener$Stub;

.field private mService:Landroid/media/IMediaScannerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaScannerConnection$1;

    invoke-direct {v0, p0}, Landroid/media/MediaScannerConnection$1;-><init>(Landroid/media/MediaScannerConnection;)V

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mListener:Landroid/media/IMediaScannerListener$Stub;

    iput-object p1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaScannerConnection;)Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    return-object v0
.end method

.method private static processDirectory([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v7, p0

    if-ge v5, v7, :cond_5

    new-instance v1, Ljava/io/File;

    aget-object v7, p0, v5

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    aget-object v6, p1, v5

    :goto_1
    const/4 v4, 0x0

    :goto_2
    array-length v7, v2

    if-ge v4, v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "MediaScannerConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File paths = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "MediaScannerConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Directory paths = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v7, v11, [Ljava/lang/String;

    aput-object v3, v7, v10

    new-array v8, v11, [Ljava/lang/String;

    aput-object v6, v8, v10

    invoke-static {v7, v8}, Landroid/media/MediaScannerConnection;->processDirectory([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "MediaScannerConnection"

    const-string v8, "Not Directory"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static scanDirectory(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 3

    sget-object v2, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v2, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {p1, p2}, Landroid/media/MediaScannerConnection;->processDirectory([Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    sget-object v2, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    sget-object v2, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object v2, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p0, v1, v0, p3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    sget-object v2, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v2, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 2

    new-instance v0, Landroid/media/MediaScannerConnection$ClientProxy;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/MediaScannerConnection$ClientProxy;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, v0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/media/IMediaScannerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.media"

    const-string v3, "com.android.providers.media.MediaScannerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-interface {v0}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onMediaScannerConnected()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not connected to MediaScannerService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mListener:Landroid/media/IMediaScannerListener$Stub;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IMediaScannerService;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
