.class public Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;
.super Landroid/widget/ImageView;
.source "AnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$1;,
        Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;,
        Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;,
        Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;
    }
.end annotation


# static fields
.field private static final NEXT_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimationView"


# instance fields
.field private lastBitmap:Landroid/graphics/Bitmap;

.field private mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

.field private mBitmapQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapQueueL:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDecodeIndex:I

.field private mDisplay:Landroid/view/Display;

.field private mEntryList:Ljava/util/Enumeration;

.field private mEntryListL:Ljava/util/Enumeration;

.field private mFPS:I

.field private mImgCount:I

.field private mImgCountL:I

.field private mInterval:I

.field private mMaxWait:I

.field private mStartTime:J

.field private final mThreadNums:I

.field private mTimeout:I

.field private nFramesDrawn:I

.field private nFramesToDraw:I

.field private nowBitmap:Landroid/graphics/Bitmap;

.field private zipFile:Ljava/util/zip/ZipFile;

.field private zipLandFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesDrawn:I

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mThreadNums:I

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mCount:I

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDecodeIndex:I

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mInterval:I

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueue:Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueueL:Ljava/util/Vector;

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mTimeout:I

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mMaxWait:I

    iput-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mFPS:I

    iget v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mFPS:I

    if-lez v3, :cond_2

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mFPS:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mInterval:I

    :goto_0
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDisplay:Landroid/view/Display;

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "AnimationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image PNG = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AnimationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image PNG land = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AnimationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Shutdown_animation: FPS> \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mFPS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueue:Ljava/util/Vector;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->enqueDecodeFiles(Ljava/util/zip/ZipFile;Ljava/util/Vector;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mEntryList:Ljava/util/Enumeration;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueueL:Ljava/util/Vector;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->enqueDecodeFiles(Ljava/util/zip/ZipFile;Ljava/util/Vector;)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mEntryListL:Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueueL:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    iget v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    iget v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    if-le v3, v4, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    :goto_2
    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mCount:I

    iget v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mInterval:I

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mMaxWait:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->startMultiThreadDecode()V

    return-void

    :cond_2
    const-string v3, "AnimationView"

    const-string v4, "mFPS value is not valid  !!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    goto :goto_2
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueueL:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mEntryList:Ljava/util/Enumeration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDecodeIndex:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I
    .locals 2

    iget v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDecodeIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDecodeIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/zip/ZipFile;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mEntryListL:Ljava/util/Enumeration;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/zip/ZipFile;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    return-object v0
.end method

.method private controlFPS(JJ)V
    .locals 7

    sub-long v0, p3, p1

    iget v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mInterval:I

    long-to-int v5, v0

    sub-int v2, v4, v5

    if-lez v2, :cond_0

    int-to-long v4, v2

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string v4, "AnimationView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delay time fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mTimeout:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mTimeout:I

    goto :goto_0
.end method

.method private enqueDecodeFiles(Ljava/util/zip/ZipFile;Ljava/util/Vector;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v3, "AnimationView"

    const-string v4, "zip file doesn\'t exist, please check resource path."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "desc.txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$1;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v3, "AnimationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queue_count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private prepareDraw()V
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mTimeout:I

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mInterval:I

    if-lt v6, v7, :cond_0

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mTimeout:I

    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to next frame, because playback speed is slower "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "than normal which is effected by the system performance!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mStartTime:J

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v4, v5

    :cond_1
    if-nez v4, :cond_2

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    if-ge v6, v7, :cond_3

    :cond_2
    if-eqz v4, :cond_5

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    if-lt v6, v7, :cond_5

    :cond_3
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_4

    const-string v5, "AnimationView"

    const-string v6, "Notify HtcShutdownThread Shutdown_Animation Finished!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;->onAnimationFinished()V

    :goto_0
    return-void

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_6

    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nFramesDrawn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesDrawn:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nFramesToDraw="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    iput-object v9, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    if-ge v6, v7, :cond_8

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueue:Ljava/util/Vector;

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;

    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    if-ge v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueueL:Ljava/util/Vector;

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;

    :cond_9
    if-eqz v4, :cond_f

    if-eqz v3, :cond_f

    :goto_1
    iget-boolean v6, v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->ready:Z

    if-nez v6, :cond_a

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mMaxWait:I

    if-ge v1, v6, :cond_a

    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wait for land bitmap,delay time fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    iget-object v6, v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    iget-object v6, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_b

    iget-object v6, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v9, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    :cond_b
    :goto_3
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_c

    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maxTimes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mMaxWait:I

    if-lt v1, v6, :cond_d

    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")to next frame due to image decode timeout, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "which is effected by the system performance!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesDrawn:I

    if-ne v6, v5, :cond_e

    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;->onAnimationReady()V

    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_e

    const-string v5, "AnimationView"

    const-string v6, "Ok, HtcShutdownThread is running!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->invalidate()V

    goto/16 :goto_0

    :cond_f
    if-nez v4, :cond_b

    if-eqz v2, :cond_b

    :goto_4
    iget-boolean v6, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->ready:Z

    if-nez v6, :cond_10

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mMaxWait:I

    if-ge v1, v6, :cond_10

    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wait for bitmap,delay time fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_10
    iget-object v6, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    iget-object v6, v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_b

    iget-object v6, v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v9, v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3
.end method

.method private startMultiThreadDecode()V
    .locals 4

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "AnimationView"

    const-string v3, "startMultiThreadDecode ===>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    if-nez v2, :cond_2

    const-string v2, "AnimationView"

    const-string v3, "The png zip file doesn\'t exist, please check resource path."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    if-nez v2, :cond_3

    const-string v2, "AnimationView"

    const-string v3, "The png land zip file doesn\'t exist, please check resource path."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v1, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$1;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    const/16 v1, -0x10e

    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v1

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    sub-int v6, v5, v3

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v7, v5, v3

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v9, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-wide v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->controlFPS(JJ)V

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesDrawn:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesDrawn:I

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->prepareDraw()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v1, -0x5a

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setOnAnimationListener(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    return-void
.end method
