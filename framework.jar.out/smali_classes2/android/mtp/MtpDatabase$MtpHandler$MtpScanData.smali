.class Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase$MtpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtpScanData"
.end annotation


# instance fields
.field mFormat:I

.field mHandle:I

.field mPath:Ljava/lang/String;

.field final synthetic this$1:Landroid/mtp/MtpDatabase$MtpHandler;


# direct methods
.method constructor <init>(Landroid/mtp/MtpDatabase$MtpHandler;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;->this$1:Landroid/mtp/MtpDatabase$MtpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;->mPath:Ljava/lang/String;

    iput p3, p0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;->mHandle:I

    iput p4, p0, Landroid/mtp/MtpDatabase$MtpHandler$MtpScanData;->mFormat:I

    return-void
.end method
