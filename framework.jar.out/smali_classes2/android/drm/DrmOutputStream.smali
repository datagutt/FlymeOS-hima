.class public Landroid/drm/DrmOutputStream;
.super Ljava/io/OutputStream;
.source "DrmOutputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmOutputStream"


# instance fields
.field private final mClient:Landroid/drm/DrmManagerClient;

.field private final mFd:Ljava/io/FileDescriptor;

.field private final mPfd:Landroid/os/ParcelFileDescriptor;

.field private mSessionId:I


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    iput-object p1, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iput-object p2, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p3}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open DRM session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "DrmOutputStream"

    const-string v1, "Closing stream without finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void
.end method

.method public finish()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget v7, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {v6, v7}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v5

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v6, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    const-wide/16 v8, 0x0

    sget v7, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {v6, v8, v9, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v2

    iget-object v6, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v6, v2, v3}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v6, v5, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    :try_start_1
    iget-object v6, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget v7, v5, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v8, v7

    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v6, v8, v9, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v6, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget-object v7, v5, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    const/4 v8, 0x0

    iget-object v9, v5, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    array-length v9, v9

    invoke-static {v6, v7, v8, v9}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    const/4 v6, -0x1

    iput v6, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected DRM status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    array-length v2, p1

    if-ne p3, v2, :cond_0

    move-object v0, p1

    :goto_0
    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget v3, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {v2, v3, v0}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v1

    iget v2, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget-object v3, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    iget-object v4, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    array-length v4, v4

    invoke-static {v2, v3, v5, v4}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    return-void

    :cond_0
    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected DRM status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
