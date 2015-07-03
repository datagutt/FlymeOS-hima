.class public Lcom/google/android/mms/util/DrmConvertSession;
.super Ljava/lang/Object;
.source "DrmConvertSession.java"


# static fields
.field public static final PLUGIN_MIME_TYPE_OMA:Ljava/lang/String; = "application/x-android-drm-fl"

.field public static final SET_CONVERT_SESSION_ID:Ljava/lang/String; = "SessionID"

.field public static final SET_DEST_PATH_WITH_RIGHT:Ljava/lang/String; = "SetDestPathWithRight"

.field private static final TAG:Ljava/lang/String; = "DrmConvertSession"


# instance fields
.field private mConvertSessionId:I

.field private mDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method private constructor <init>(Landroid/drm/DrmManagerClient;I)V
    .locals 0
    .param p1, "drmClient"    # Landroid/drm/DrmManagerClient;
    .param p2, "convertSessionId"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 54
    iput p2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    .line 55
    return-void
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/mms/util/DrmConvertSession;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;

    move-result-object v0

    return-object v0
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v0, -0x1

    .line 80
    .local v0, "convertSessionId":I
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    :try_start_0
    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-direct {v2, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 84
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .local v2, "drmClient":Landroid/drm/DrmManagerClient;
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result v0

    .line 86
    if-eqz p2, :cond_0

    .line 87
    new-instance v4, Landroid/drm/DrmInfo;

    const/4 v6, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "application/vnd.oma.drm.message"

    invoke-direct {v4, v6, v7, v8}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    .line 89
    .local v4, "info":Landroid/drm/DrmInfo;
    const-string v6, "SetDestPathWithRight"

    invoke-virtual {v4, v6, p2}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v6, "SessionID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v2, v4}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v5

    .line 92
    .local v5, "result":I
    if-eqz v5, :cond_0

    .line 93
    const-string v6, "DrmConvertSession"

    const-string v7, "processDrmInfo error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    const/4 v0, -0x1

    .end local v4    # "info":Landroid/drm/DrmInfo;
    .end local v5    # "result":I
    :cond_0
    :goto_0
    move-object v1, v2

    .line 112
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    if-gez v0, :cond_3

    .line 113
    :cond_2
    const/4 v6, 0x0

    .line 115
    :goto_2
    return-object v6

    .line 98
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v6, "DrmConvertSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Conversion of Mimetype: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 104
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v1, v2

    .line 105
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    const-string v6, "DrmConvertSession"

    const-string v7, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 101
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :catch_2
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v6, "DrmConvertSession"

    const-string v7, "Could not access Open DrmFramework."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 107
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v3

    move-object v1, v2

    .line 108
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_4
    const-string v6, "DrmConvertSession"

    const-string v7, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    new-instance v6, Lcom/google/android/mms/util/DrmConvertSession;

    invoke-direct {v6, v1, v0}, Lcom/google/android/mms/util/DrmConvertSession;-><init>(Landroid/drm/DrmManagerClient;I)V

    goto :goto_2

    .line 107
    :catch_4
    move-exception v3

    goto :goto_4

    .line 104
    :catch_5
    move-exception v3

    goto :goto_3
.end method


# virtual methods
.method public close(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    const/16 v8, 0x1eb

    .line 239
    .local v8, "result":I
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "filename":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    if-ltz v9, :cond_2

    .line 242
    :try_start_0
    iget-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v10, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v9, v10}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_0

    iget v9, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    iget-object v9, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_3

    .line 246
    :cond_0
    const/16 v8, 0x196

    .line 301
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v9}, Landroid/drm/DrmManagerClient;->release()V

    .line 302
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 305
    :cond_2
    :goto_1
    return v8

    .line 248
    :cond_3
    const/4 v5, 0x0

    .line 249
    .local v5, "os":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 250
    .local v7, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 252
    .local v3, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, "c":Landroid/content/ContentResolver;
    const-string v9, "rw"

    invoke-virtual {v0, p1, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 254
    if-eqz v7, :cond_4

    .line 255
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 256
    iget v9, v1, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v10, v9

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v10, v11, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 257
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .local v6, "os":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v9, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    const/4 v10, 0x0

    iget-object v11, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    array-length v11, v11

    invoke-virtual {v6, v9, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 259
    const/16 v8, 0xc8

    move-object v5, v6

    .line 277
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    :cond_4
    if-eqz v5, :cond_5

    .line 279
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    :cond_5
    :goto_2
    if-eqz v7, :cond_1

    .line 288
    :try_start_4
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 291
    :try_start_5
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 297
    .end local v0    # "c":Landroid/content/ContentResolver;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .end local v7    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v2

    .line 298
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not close convertsession. Convertsession: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 301
    iget-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v9}, Landroid/drm/DrmManagerClient;->release()V

    .line 302
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    goto :goto_1

    .line 280
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "c":Landroid/content/ContentResolver;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v2

    .line 281
    .local v2, "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 282
    :try_start_7
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 301
    .end local v0    # "c":Landroid/content/ContentResolver;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .end local v7    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v10}, Landroid/drm/DrmManagerClient;->release()V

    .line 302
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    throw v9

    .line 262
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v2

    .line 263
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/16 v8, 0x1ec

    .line 264
    :try_start_8
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " could not be found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 277
    if-eqz v5, :cond_6

    .line 279
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 286
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_4
    if-eqz v7, :cond_1

    .line 288
    :try_start_a
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 289
    :catch_4
    move-exception v2

    .line 290
    .local v2, "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 291
    :try_start_b
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 280
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    .line 281
    .local v2, "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 282
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 265
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 266
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    const/16 v8, 0x1ec

    .line 267
    :try_start_c
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not access File: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 277
    if-eqz v5, :cond_7

    .line 279
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 286
    :cond_7
    :goto_6
    if-eqz v7, :cond_1

    .line 288
    :try_start_e
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 289
    :catch_7
    move-exception v2

    .line 290
    const/16 v8, 0x1ec

    .line 291
    :try_start_f
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 280
    :catch_8
    move-exception v2

    .line 281
    const/16 v8, 0x1ec

    .line 282
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_6

    .line 268
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 269
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :goto_7
    const/16 v8, 0x1ec

    .line 270
    :try_start_10
    const-string v9, "DrmConvertSession"

    const-string v10, "Could not open file in mode: rw"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 277
    if-eqz v5, :cond_8

    .line 279
    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 286
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_8
    :goto_8
    if-eqz v7, :cond_1

    .line 288
    :try_start_12
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 289
    :catch_a
    move-exception v2

    .line 290
    .local v2, "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 291
    :try_start_13
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 280
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :catch_b
    move-exception v2

    .line 281
    .local v2, "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 282
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_8

    .line 271
    .end local v2    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/SecurityException;
    :goto_9
    :try_start_14
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Access to File: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was denied denied by SecurityManager."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 277
    if-eqz v5, :cond_9

    .line 279
    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 286
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_9
    :goto_a
    if-eqz v7, :cond_1

    .line 288
    :try_start_16
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_0

    .line 289
    :catch_d
    move-exception v2

    .line 290
    .local v2, "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 291
    :try_start_17
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 280
    .local v2, "e":Ljava/lang/SecurityException;
    :catch_e
    move-exception v2

    .line 281
    .local v2, "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 282
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_a

    .line 274
    .end local v2    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v2

    .line 275
    .local v2, "e":Landroid/system/ErrnoException;
    :goto_b
    :try_start_18
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not seek File: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 277
    if-eqz v5, :cond_a

    .line 279
    :try_start_19
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 286
    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_a
    :goto_c
    if-eqz v7, :cond_1

    .line 288
    :try_start_1a
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_0

    .line 289
    :catch_10
    move-exception v2

    .line 290
    .local v2, "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 291
    :try_start_1b
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 280
    .local v2, "e":Landroid/system/ErrnoException;
    :catch_11
    move-exception v2

    .line 281
    .local v2, "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 282
    const-string v9, "DrmConvertSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open File:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_c

    .line 277
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :goto_d
    if-eqz v5, :cond_b

    .line 279
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 286
    :cond_b
    :goto_e
    if-eqz v7, :cond_c

    .line 288
    :try_start_1d
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 292
    :cond_c
    :goto_f
    :try_start_1e
    throw v9

    .line 280
    :catch_12
    move-exception v2

    .line 281
    .restart local v2    # "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 282
    const-string v10, "DrmConvertSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to open File:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 289
    .end local v2    # "e":Ljava/io/IOException;
    :catch_13
    move-exception v2

    .line 290
    .restart local v2    # "e":Ljava/io/IOException;
    const/16 v8, 0x1ec

    .line 291
    const-string v10, "DrmConvertSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to open File:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto :goto_f

    .line 277
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "c":Landroid/content/ContentResolver;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    goto :goto_d

    .line 274
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v2

    move-object v5, v6

    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .line 271
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    :catch_15
    move-exception v2

    move-object v5, v6

    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .line 268
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    :catch_16
    move-exception v2

    move-object v5, v6

    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 265
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    :catch_17
    move-exception v2

    move-object v5, v6

    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 262
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    :catch_18
    move-exception v2

    move-object v5, v6

    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method public close(Ljava/lang/String;)I
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    const/16 v2, 0x1eb

    .line 176
    .local v2, "result":I
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    if-ltz v5, :cond_2

    .line 178
    :try_start_0
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v5, v6}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v5, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    .line 182
    :cond_0
    const/16 v2, 0x196

    .line 218
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5}, Landroid/drm/DrmManagerClient;->release()V

    .line 219
    iput-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 222
    :cond_2
    :goto_1
    return v2

    .line 184
    :cond_3
    const/4 v3, 0x0

    .line 186
    .local v3, "rndAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v4, "rndAccessFile":Ljava/io/RandomAccessFile;
    :try_start_2
    iget v5, v0, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 188
    iget-object v5, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 189
    const/16 v2, 0xc8

    .line 203
    if-eqz v4, :cond_1

    .line 205
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/IOException;
    const/16 v2, 0x1ec

    .line 208
    :try_start_4
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close File:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 214
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not close convertsession. Convertsession: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 218
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5}, Landroid/drm/DrmManagerClient;->release()V

    .line 219
    iput-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    goto :goto_1

    .line 190
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v1

    .line 191
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/16 v2, 0x1ec

    .line 192
    :try_start_6
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 203
    if-eqz v3, :cond_1

    .line 205
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 206
    :catch_3
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/IOException;
    const/16 v2, 0x1ec

    .line 208
    :try_start_8
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close File:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 218
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6}, Landroid/drm/DrmManagerClient;->release()V

    .line 219
    iput-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    throw v5

    .line 193
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    const/16 v2, 0x1ec

    .line 195
    :try_start_9
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not access File: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 203
    if-eqz v3, :cond_1

    .line 205
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 206
    :catch_5
    move-exception v1

    .line 207
    const/16 v2, 0x1ec

    .line 208
    :try_start_b
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close File:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 196
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    const/16 v2, 0x1ec

    .line 198
    :try_start_c
    const-string v5, "DrmConvertSession"

    const-string v6, "Could not open file in mode: rw"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 203
    if-eqz v3, :cond_1

    .line 205
    :try_start_d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 206
    :catch_7
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/IOException;
    const/16 v2, 0x1ec

    .line 208
    :try_start_e
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close File:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/SecurityException;
    :goto_5
    :try_start_f
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Access to File: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " was denied denied by SecurityManager."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 203
    if-eqz v3, :cond_1

    .line 205
    :try_start_10
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 206
    :catch_9
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/IOException;
    const/16 v2, 0x1ec

    .line 208
    :try_start_11
    const-string v5, "DrmConvertSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close File:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 203
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :goto_6
    if-eqz v3, :cond_4

    .line 205
    :try_start_12
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 210
    :cond_4
    :goto_7
    :try_start_13
    throw v5

    .line 206
    :catch_a
    move-exception v1

    .line 207
    .restart local v1    # "e":Ljava/io/IOException;
    const/16 v2, 0x1ec

    .line 208
    const-string v6, "DrmConvertSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close File:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    .line 203
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 199
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v1

    move-object v3, v4

    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 196
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v1

    move-object v3, v4

    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_4

    .line 193
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_d
    move-exception v1

    move-object v3, v4

    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .line 190
    .end local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_e
    move-exception v1

    move-object v3, v4

    .end local v4    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_2
.end method

.method public convert([BI)[B
    .locals 7
    .param p1, "inBuffer"    # [B
    .param p2, "size"    # I

    .prologue
    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, "result":[B
    if-eqz p1, :cond_3

    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :try_start_0
    array-length v4, p1

    if-eq p2, v4, :cond_2

    .line 132
    new-array v0, p2, [B

    .line 133
    .local v0, "buf":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v4, v0, v5, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 134
    iget-object v4, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5, v0}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v1

    .line 140
    .end local v0    # "buf":[B
    :goto_0
    if-eqz v1, :cond_0

    .line 141
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertedStatus.statusCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ConvertSessionId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    if-eqz v1, :cond_1

    iget v4, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    if-eqz v4, :cond_1

    .line 148
    iget-object v3, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    .line 160
    :cond_1
    :goto_1
    return-object v3

    .line 136
    :cond_2
    iget-object v4, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5, p1}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buffer with data to convert is illegal. Convertsession: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 153
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v4, "DrmConvertSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not convert data. Convertsession: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 158
    .end local v1    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameter inBuffer is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
