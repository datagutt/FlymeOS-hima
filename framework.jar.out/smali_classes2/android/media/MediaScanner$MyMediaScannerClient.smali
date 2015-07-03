.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/HtcMediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHasLocation:Z

.field private mHeight:I

.field private mIsDrm:Z

.field private mIsSlowMotion:Z

.field private mLastModified:J

.field private mLatitude:D

.field private mLongitude:D

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTakenTime:J

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field private mZoeTag:J

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private IsVoiceRecordFile(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const-string v0, "/My Documents/My Recordings/"

    const-string v3, "/.voicerecorder/voices/"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v6, v4, v6, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v0, v6, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v3, v6, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v7

    const-string v4, "title"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_2

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v4, "title"

    move-object/from16 v0, v33

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/media/MediaScanner$FileEntry;->mParentChanged:Z

    if-eqz v4, :cond_4

    const-string v4, "parent"

    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/media/MediaScanner$FileEntry;->mParentId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-wide/16 v4, 0x0

    cmp-long v4, v30, v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_1f

    :cond_5
    const-string v4, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->IsVoiceRecordFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "is_music"

    const-string v5, "0"

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v4, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExistHTCColumn:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mInsertProcess:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rowId : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " update customize column"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz p2, :cond_7

    const-string v4, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_7
    if-eqz p3, :cond_8

    const-string v4, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_8
    if-eqz p4, :cond_9

    const-string v4, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->IsVoiceRecordFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string v4, "is_music"

    const-string v5, "0"

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    if-eqz p6, :cond_b

    const-string v4, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_b
    const-string v4, "MediaScanner"

    const-string v5, "Update audio releated columns"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    const-string v4, "format"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update format from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " because insert_process is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/media/MediaScanner$FileEntry;->mInsertProcess:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mInsertProcess:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_e

    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert_process is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/media/MediaScanner$FileEntry;->mInsertProcess:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ,and reset insert_process to 1"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "insert_process"

    const-string v5, "1"

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v32

    :cond_f
    :goto_3
    const/4 v6, 0x0

    const/16 v27, 0x0

    const-wide/16 v4, 0x0

    cmp-long v4, v30, v4

    if-nez v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v5}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    move/from16 v17, v0

    if-nez v17, :cond_11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    :cond_11
    const-string v4, "format"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_14

    if-eqz p3, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    const/16 v27, 0x1

    :cond_14
    :goto_4
    if-eqz v22, :cond_18

    # getter for: Landroid/media/MediaScanner;->mNotifyGalleryChange:I
    invoke-static {}, Landroid/media/MediaScanner;->access$3300()I

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mInsertImageCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mInsertVideoCount:I
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3500(Landroid/media/MediaScanner;)I

    move-result v5

    add-int/2addr v4, v5

    # getter for: Landroid/media/MediaScanner;->mNotifyGalleryChange:I
    invoke-static {}, Landroid/media/MediaScanner;->access$3300()I

    move-result v5

    if-lt v4, v5, :cond_16

    # getter for: Landroid/media/MediaScanner;->mNotifyGalleryChange:I
    invoke-static {}, Landroid/media/MediaScanner;->access$3300()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_15

    const/4 v4, 0x0

    # setter for: Landroid/media/MediaScanner;->mNotifyGalleryChange:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3302(I)I

    :cond_15
    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[endFile] Notify Chage for Gallery, flushAll() : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mInsertImageCount:I
    invoke-static {v8}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mInsertVideoCount:I
    invoke-static {v9}, Landroid/media/MediaScanner;->access$3500(Landroid/media/MediaScanner;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaInserter;->flushAll()V

    :cond_16
    # getter for: Landroid/media/MediaScanner;->mNotifyTotalChange:I
    invoke-static {}, Landroid/media/MediaScanner;->access$3600()I

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mInsertTotalCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3700(Landroid/media/MediaScanner;)I

    move-result v4

    # getter for: Landroid/media/MediaScanner;->mNotifyTotalChange:I
    invoke-static {}, Landroid/media/MediaScanner;->access$3600()I

    move-result v5

    if-lt v4, v5, :cond_18

    # getter for: Landroid/media/MediaScanner;->mNotifyTotalChange:I
    invoke-static {}, Landroid/media/MediaScanner;->access$3600()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_3b

    const/16 v4, 0xfa

    # setter for: Landroid/media/MediaScanner;->mNotifyTotalChange:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3602(I)I

    :cond_17
    :goto_5
    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[endFile] Notify Chage for Total, flushAll() : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mInsertTotalCount:I
    invoke-static {v8}, Landroid/media/MediaScanner;->access$3700(Landroid/media/MediaScanner;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaInserter;->flushAll()V

    :cond_18
    if-eqz v22, :cond_19

    if-eqz v27, :cond_3c

    :cond_19
    if-eqz v22, :cond_1a

    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaInserter;->flushAll()V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3900(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-interface {v4, v5, v0, v7}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    :goto_6
    if-eqz v6, :cond_1b

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_42

    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-eq v4, v5, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mInsertTotalCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3708(Landroid/media/MediaScanner;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mInsertVideoCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3508(Landroid/media/MediaScanner;)I

    :cond_1c
    :goto_7
    if-eqz v27, :cond_1d

    if-eqz p3, :cond_4f

    const-string v4, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$2702(Landroid/media/MediaScanner;Z)Z

    :cond_1d
    :goto_8
    return-object v6

    :cond_1e
    const-string v4, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_2e

    const/4 v14, 0x0

    :try_start_0
    new-instance v15, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v15, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v15

    :goto_9
    if-eqz v14, :cond_6

    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "latitude"

    const/4 v5, 0x0

    aget v5, v24, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v4, "longitude"

    const/4 v5, 0x1

    aget v5, v24, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_20
    invoke-virtual {v14}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v34

    const-wide/16 v4, -0x1

    cmp-long v4, v34, v4

    if-eqz v4, :cond_2c

    const-string v4, "datetaken"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_21
    :goto_a
    const-string v4, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v14, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v28

    const/4 v4, -0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_22

    packed-switch v28, :pswitch_data_0

    :pswitch_0
    const/4 v11, 0x0

    :goto_b
    const-string v4, "orientation"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_22
    const-wide/16 v20, 0x0

    const-string v4, "DualCam"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_23

    const-wide/16 v4, 0x20

    or-long v20, v20, v4

    :cond_23
    const-string v4, "DualHasDepth"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_24

    const-wide/16 v4, 0x100

    or-long v20, v20, v4

    :cond_24
    const-string v4, "DualHasFace"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_25

    const-wide/16 v4, 0x200

    or-long v20, v20, v4

    :cond_25
    const-string v4, "DualIsProcessed"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_26

    const-wide/16 v4, 0x400

    or-long v20, v20, v4

    :cond_26
    const-string v4, "Bokeh"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v23

    if-eqz v23, :cond_27

    const-wide/16 v4, 0x80

    or-long v20, v20, v4

    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isSenseAbove60()Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string v4, "PanoPlus"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v29

    if-eqz v29, :cond_28

    const-wide/16 v4, 0x8

    or-long v20, v20, v4

    :cond_28
    const-string v4, "Macro3D"

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_29

    const-wide/16 v4, 0x40

    or-long v20, v20, v4

    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExistHTCColumn:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "htc_type"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExistHTCColumn:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v4, v30, v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mInsertProcess:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2a

    const-string v4, "insert_process"

    const-string v5, "1"

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mHTCTypeChangeCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mInsertProcess:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mHTCTypeChangeCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_2b

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mHTCTypeChangeCache:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_2c
    invoke-virtual {v14}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v34

    const-wide/16 v4, -0x1

    cmp-long v4, v34, v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    sub-long v4, v4, v34

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-ltz v4, :cond_21

    const-string v4, "datetaken"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_a

    :pswitch_1
    const/16 v11, 0x5a

    goto/16 :goto_b

    :pswitch_2
    const/16 v11, 0xb4

    goto/16 :goto_b

    :pswitch_3
    const/16 v11, 0x10e

    goto/16 :goto_b

    :cond_2d
    const-string v4, "MediaScanner"

    const-string v5, "[endFile] database version incorrect"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mZoeTag:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_30

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mZoeTag:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasLocation:Z

    if-eqz v4, :cond_2f

    const-string v4, "latitude"

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLatitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v4, "longitude"

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLongitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_2f
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExistHTCColumn:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "htc_type"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_e
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTakenTime:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTakenTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-ltz v4, :cond_32

    const-string v4, "datetaken"

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTakenTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsSlowMotion:Z

    if-eqz v4, :cond_2f

    const-wide/16 v20, 0x4

    goto :goto_d

    :cond_31
    const-string v4, "MediaScanner"

    const-string v5, "[endFile] database version incorrect"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_32
    const-string v4, "datetaken"

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v36, 0x3e8

    mul-long v8, v8, v36

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    :cond_33
    if-eqz p5, :cond_a

    const-string v4, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    :cond_34
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isHtcInkFileType(I)Z

    move-result v4

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mHtcInkUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v32

    goto/16 :goto_3

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v32

    goto/16 :goto_3

    :cond_36
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v32

    goto/16 :goto_3

    :cond_37
    if-eqz p2, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3000(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3000(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_38
    const/16 v27, 0x1

    goto/16 :goto_4

    :cond_39
    if-eqz p4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3200(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3200(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_3a
    const/16 v27, 0x1

    goto/16 :goto_4

    :cond_3b
    # getter for: Landroid/media/MediaScanner;->mNotifyTotalChange:I
    invoke-static {}, Landroid/media/MediaScanner;->access$3600()I

    move-result v4

    const/16 v5, 0xfa

    if-ne v4, v5, :cond_17

    const/4 v4, 0x0

    # setter for: Landroid/media/MediaScanner;->mNotifyTotalChange:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3602(I)I

    goto/16 :goto_5

    :cond_3c
    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-ne v4, v5, :cond_3d

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_6

    :cond_3d
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_6

    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mHtcInkUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    if-eq v0, v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_40

    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mInsertImageCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3408(Landroid/media/MediaScanner;)I

    goto/16 :goto_7

    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mInsertAudioCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4008(Landroid/media/MediaScanner;)I

    goto/16 :goto_7

    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mInsertOtherCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4108(Landroid/media/MediaScanner;)I

    goto/16 :goto_7

    :cond_42
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-eq v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mInsertTotalCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3708(Landroid/media/MediaScanner;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mInsertOtherCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4108(Landroid/media/MediaScanner;)I

    goto/16 :goto_7

    :cond_43
    move-object/from16 v0, v32

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_47

    const/16 v26, 0x2

    :cond_44
    :goto_f
    const-string v4, "media_type"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_45
    if-nez v26, :cond_46

    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const v5, 0xba05

    if-ne v4, v5, :cond_46

    const-string v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[endFile] skip update wmp playlist media_type rowId: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "media_type"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3900(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_4e

    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-eq v4, v5, :cond_4e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mUpdateVideoCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4208(Landroid/media/MediaScanner;)I

    goto/16 :goto_7

    :cond_47
    invoke-static/range {v16 .. v16}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_48

    const/16 v26, 0x3

    goto :goto_f

    :cond_48
    invoke-static/range {v16 .. v16}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_49

    const/16 v26, 0x1

    goto :goto_f

    :cond_49
    invoke-static/range {v16 .. v16}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_44

    const/16 v26, 0x4

    goto/16 :goto_f

    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mHtcInkUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    if-eq v0, v4, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_4c

    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mUpdateImageCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4308(Landroid/media/MediaScanner;)I

    goto/16 :goto_7

    :cond_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mUpdateAudioCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4408(Landroid/media/MediaScanner;)I

    goto/16 :goto_7

    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mUpdateOtherCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4508(Landroid/media/MediaScanner;)I

    goto/16 :goto_7

    :cond_4e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-eq v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # operator++ for: Landroid/media/MediaScanner;->mUpdateOtherCount:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$4508(Landroid/media/MediaScanner;)I

    goto/16 :goto_7

    :cond_4f
    if-eqz p2, :cond_50

    const-string v4, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$2902(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_8

    :cond_50
    if-eqz p4, :cond_1d

    const-string v4, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$3102(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_8

    :catch_0
    move-exception v4

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 6

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$4700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v4, Landroid/drm/DrmManagerClient;

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$4600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    # setter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3, v4}, Landroid/media/MediaScanner;->access$4702(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$4700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$4700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$4700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    :cond_3
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto :goto_0
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8

    const/16 v7, 0x39

    const/16 v6, 0x30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p2, v1, :cond_0

    :goto_0
    return p3

    :cond_0
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, -0x30

    :goto_1
    if-ge v3, v1, :cond_5

    add-int/lit8 p2, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    goto :goto_1

    :cond_5
    move p2, v3

    move p3, v2

    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$4600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$4600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Pop"

    const-string v1, "Pop"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(Pop"

    const-string v1, "Pop"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_data"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date_modified"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_size"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "mime_type"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_drm"

    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    const-string v2, "width"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "height"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_1

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v1, :cond_1

    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    const-string v2, "<unknown>"

    goto :goto_0

    :cond_3
    const-string v2, "<unknown>"

    goto :goto_1

    :cond_4
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album_artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "composer"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "genre"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_5

    const-string v2, "year"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    const-string v2, "track"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "compilation"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_6
    const-string v2, "<unknown>"

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    const-string v2, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 25

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileEntry;

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->doMakeEntryFor:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez p7, :cond_1

    const-string v6, "DCIM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    const-string v6, "Download"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v5

    :cond_2
    if-nez p7, :cond_6

    if-nez p8, :cond_3

    # invokes: Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$400(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 p8, 0x1

    :cond_3
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-eqz p2, :cond_4

    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    :cond_4
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v6, :cond_5

    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v19

    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    iget v6, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v6, :cond_5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    :cond_6
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/MediaScanner$FileEntry;

    if-eqz v20, :cond_b

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v22, v0

    :goto_0
    const/16 v6, 0x2f

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    if-eqz v5, :cond_7

    iget-wide v6, v5, Landroid/media/MediaScanner$FileEntry;->mParentId:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    const-wide/16 v6, -0x1

    cmp-long v6, v22, v6

    if-eqz v6, :cond_c

    iget-wide v6, v5, Landroid/media/MediaScanner$FileEntry;->mParentId:J

    cmp-long v6, v6, v22

    if-eqz v6, :cond_c

    move-wide/from16 v0, v22

    iput-wide v0, v5, Landroid/media/MediaScanner$FileEntry;->mParentId:J

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileEntry;->mParentChanged:Z

    :cond_7
    if-eqz v5, :cond_e

    iget-wide v6, v5, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v16, p3, v6

    :goto_1
    const-wide/16 v6, 0x1

    cmp-long v6, v16, v6

    if-gtz v6, :cond_8

    const-wide/16 v6, -0x1

    cmp-long v6, v16, v6

    if-gez v6, :cond_f

    :cond_8
    const/16 v24, 0x1

    :goto_2
    if-eqz v5, :cond_9

    if-eqz v24, :cond_a

    :cond_9
    if-eqz v5, :cond_10

    move-wide/from16 v0, p3

    iput-wide v0, v5, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    :goto_3
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :goto_4
    return-object v5

    :cond_b
    const-wide/16 v22, -0x1

    goto :goto_0

    :cond_c
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileEntry;->mParentChanged:Z

    iget-wide v6, v5, Landroid/media/MediaScanner$FileEntry;->mParentId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v4, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/media/MediaScanner$FileEntry;->mParentId:J

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/media/MediaScanner$FileEntry;->mParentChanged:Z

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_e
    const-wide/16 v16, 0x0

    goto :goto_1

    :cond_f
    const/16 v24, 0x0

    goto :goto_2

    :cond_10
    new-instance v5, Landroid/media/MediaScanner$FileEntry;

    const-wide/16 v6, 0x0

    if-eqz p7, :cond_11

    const/16 v11, 0x3001

    :goto_6
    const-wide/16 v12, -0x1

    const/4 v14, 0x1

    move-object/from16 v8, p1

    move-wide/from16 v9, p3

    invoke-direct/range {v5 .. v14}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JIJI)V

    goto :goto_3

    :cond_11
    const/4 v11, 0x0

    goto :goto_6

    :cond_12
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mZoeTag:J

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTakenTime:J

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasLocation:Z

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLatitude:D

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLongitude:D

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsSlowMotion:Z

    goto/16 :goto_4
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 23

    const/16 v21, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p9

    :try_start_0
    invoke-virtual/range {v5 .. v13}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const-wide/16 v12, 0x0

    iput-wide v12, v5, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    :cond_0
    if-eqz v5, :cond_4

    iget-boolean v4, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v4, :cond_1

    if-nez p8, :cond_1

    iget v4, v5, Landroid/media/MediaScanner$FileEntry;->mInsertProcess:I

    const/4 v11, 0x2

    if-lt v4, v11, :cond_4

    :cond_1
    iget-boolean v4, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v4, :cond_2

    if-eqz p8, :cond_3

    :cond_2
    iget v4, v5, Landroid/media/MediaScanner$FileEntry;->mInsertProcess:I

    const/4 v11, 0x3

    if-ne v4, v11, :cond_3

    const/4 v4, -0x1

    iput v4, v5, Landroid/media/MediaScanner$FileEntry;->mInsertProcess:I

    :cond_3
    if-eqz p9, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v21

    :cond_4
    :goto_0
    return-object v21

    :cond_5
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    const-string v4, "/ringtones/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_c

    const/4 v6, 0x1

    :goto_1
    const-string v4, "/notifications/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_d

    const/4 v7, 0x1

    :goto_2
    const-string v4, "/alarms/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_e

    const/4 v8, 0x1

    :goto_3
    const-string v4, "/podcasts/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_f

    const/4 v10, 0x1

    :goto_4
    const-string v4, "/music/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_6

    if-nez v6, :cond_10

    if-nez v7, :cond_10

    if-nez v8, :cond_10

    if-nez v10, :cond_10

    :cond_6
    const/4 v9, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v17

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v19

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v18

    if-nez v17, :cond_7

    if-nez v19, :cond_7

    if-eqz v18, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalIsEmulated:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 p1, v14

    :cond_8
    if-nez v17, :cond_9

    if-eqz v19, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    # invokes: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v4, v0, v1, v2}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    :cond_a
    if-eqz v18, :cond_b

    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_5

    :catch_0
    move-exception v15

    const-string v4, "MediaScanner"

    const-string v11, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v4, v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    const/16 v10, 0xff

    if-nez p1, :cond_1

    move-object p1, v7

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x28

    if-ne v8, v9, :cond_2

    const/4 v4, 0x1

    :cond_2
    :goto_1
    if-ge v4, v5, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-ge v4, v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x29

    if-ne v8, v9, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    if-ge v4, v5, :cond_5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_2
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    if-ltz v3, :cond_0

    # getter for: Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$1500()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v3, v8, :cond_6

    # getter for: Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$1500()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    if-eqz v8, :cond_6

    # getter for: Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$1500()[Ljava/lang/String;

    move-result-object v7

    aget-object p1, v7, v3

    goto :goto_0

    :cond_5
    const/16 v1, 0x20

    goto :goto_2

    :cond_6
    if-ne v3, v10, :cond_7

    move-object p1, v7

    goto :goto_0

    :cond_7
    if-ge v3, v10, :cond_9

    if-ge v4, v5, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_8

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v7, "MediaScanner"

    const-string v8, "NumberFormatException in MediaScanner.getGenreName()"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    const-string v11, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "title;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v11, "artist"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "artist;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v11, "albumartist"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "albumartist;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "band"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "band;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v11, "album"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "album;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v11, "composer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "composer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v11}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "genre"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "genre;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v11, "year"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "year;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    :cond_d
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    :cond_e
    const-string v11, "tracknumber"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "tracknumber;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_f
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v11, v11, 0x3e8

    mul-int/lit16 v11, v11, 0x3e8

    add-int/2addr v11, v6

    move-object/from16 v0, p0

    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    :cond_10
    const-string v11, "discnumber"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "set"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "set;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_11
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v6

    mul-int/lit16 v11, v6, 0x3e8

    move-object/from16 v0, p0

    iget v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v12, v12, 0x3e8

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    :cond_12
    const-string v11, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    :cond_13
    const-string v11, "writer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_14

    const-string v11, "writer;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    :cond_14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string v11, "compilation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    :cond_16
    const-string v11, "isdrm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    const/4 v11, 0x0

    goto :goto_1

    :cond_18
    const-string v11, "width"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    :cond_19
    const-string v11, "height"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0

    :cond_1a
    const-string v11, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    if-eqz p2, :cond_1b

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasLocation:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v11, 0x2

    new-array v5, v11, [D

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p2

    # invokes: Landroid/media/MediaScanner;->convertRationalLatLonToDouble(Ljava/lang/String;[D)Z
    invoke-static {v11, v0, v5}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;Ljava/lang/String;[D)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v11, 0x0

    aget-wide v12, v5, v11

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLatitude:D

    const/4 v11, 0x1

    aget-wide v12, v5, v11

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLongitude:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasLocation:Z

    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[handleStringTag] location exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1b
    const/4 v11, 0x0

    goto :goto_2

    :cond_1c
    const/4 v11, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHasLocation:Z

    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[handleStringTag] unsupported location format: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-wide v14, v5, v13

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-wide v14, v5, v13

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_1d
    const-string v11, "taken"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e

    :try_start_2
    const-string v11, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v11, v9

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1

    const/4 v11, 0x3

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTakenTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[handleStringTag] taken exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1e
    const-string v11, "isZoe"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_20

    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mZoeTag:J

    const-wide/16 v14, 0x1

    or-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mZoeTag:J

    :try_start_3
    const-string v11, ";"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v4, 0x0

    :goto_3
    array-length v11, v10

    if-ge v4, v11, :cond_1

    aget-object v11, v10, v4

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v11, -0x1

    if-ne v8, v11, :cond_1f

    const/4 v11, 0x2

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_1

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mZoeTag:J

    const-wide/16 v14, 0x10

    or-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mZoeTag:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v3

    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[handleStringTag] ZoeTag exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    const/4 v11, 0x2

    if-gt v8, v11, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_20
    const-string v11, "isDLenZoe"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_21

    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mZoeTag:J

    const-wide/16 v14, 0x20

    or-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mZoeTag:J

    goto/16 :goto_0

    :cond_21
    const-string v11, "isSlowMotion"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz p2, :cond_22

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsSlowMotion:Z

    goto/16 :goto_0

    :cond_22
    const/4 v11, 0x0

    goto :goto_4
.end method

.method public htcScanFile(Ljava/lang/String;JJZZ)Z
    .locals 12

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mStopScanning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 12

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2

    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
