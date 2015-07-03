.class public Landroid/mtp/MtpDatabase$FileCache;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileCache"
.end annotation


# instance fields
.field mRowId:I

.field miAdded:J

.field miDuration:J

.field miFormat:I

.field miModified:J

.field miOriginalReleaseDate:I

.field miParent:I

.field miSize:J

.field miStorageId:I

.field miTrack:I

.field mszAlbum:Ljava/lang/String;

.field mszAlbumArtist:Ljava/lang/String;

.field mszArtist:Ljava/lang/String;

.field mszComposer:Ljava/lang/String;

.field mszDescription:Ljava/lang/String;

.field mszDisplayName:Ljava/lang/String;

.field mszFullPath:Ljava/lang/String;

.field mszGenre:Ljava/lang/String;

.field mszTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(IIIILjava/lang/String;JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/mtp/MtpDatabase$FileCache;->mRowId:I

    iput p2, p0, Landroid/mtp/MtpDatabase$FileCache;->miStorageId:I

    iput-object p5, p0, Landroid/mtp/MtpDatabase$FileCache;->mszFullPath:Ljava/lang/String;

    iput-wide p8, p0, Landroid/mtp/MtpDatabase$FileCache;->miModified:J

    iput p3, p0, Landroid/mtp/MtpDatabase$FileCache;->miFormat:I

    iput-wide p6, p0, Landroid/mtp/MtpDatabase$FileCache;->miSize:J

    iput p4, p0, Landroid/mtp/MtpDatabase$FileCache;->miParent:I

    iput-object p10, p0, Landroid/mtp/MtpDatabase$FileCache;->mszTitle:Ljava/lang/String;

    iput-wide p11, p0, Landroid/mtp/MtpDatabase$FileCache;->miAdded:J

    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/mtp/MtpDatabase$FileCache;->mszAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/mtp/MtpDatabase$FileCache;->mszComposer:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/mtp/MtpDatabase$FileCache;->mszDescription:Ljava/lang/String;

    move-wide/from16 v0, p16

    iput-wide v0, p0, Landroid/mtp/MtpDatabase$FileCache;->miDuration:J

    move/from16 v0, p18

    iput v0, p0, Landroid/mtp/MtpDatabase$FileCache;->miOriginalReleaseDate:I

    move/from16 v0, p19

    iput v0, p0, Landroid/mtp/MtpDatabase$FileCache;->miTrack:I

    move-object/from16 v0, p20

    iput-object v0, p0, Landroid/mtp/MtpDatabase$FileCache;->mszDisplayName:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MtpDatabase$FileCache;->mszAlbum:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MtpDatabase$FileCache;->mszArtist:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MtpDatabase$FileCache;->mszGenre:Ljava/lang/String;

    return-void
.end method
