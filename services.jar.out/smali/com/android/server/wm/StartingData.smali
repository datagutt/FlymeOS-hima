.class final Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field final compatInfo:Landroid/content/res/CompatibilityInfo;

.field final icon:I

.field final labelRes:I

.field final logo:I

.field final nonLocalizedLabel:Ljava/lang/CharSequence;

.field final pkg:Ljava/lang/String;

.field final theme:I

.field thumbnail:Landroid/graphics/Bitmap;

.field final windowFlags:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/StartingData;->thumbnail:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wm/StartingData;->theme:I

    iput-object p3, p0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iput-object p4, p0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/android/server/wm/StartingData;->labelRes:I

    iput p6, p0, Lcom/android/server/wm/StartingData;->icon:I

    iput p7, p0, Lcom/android/server/wm/StartingData;->logo:I

    iput p8, p0, Lcom/android/server/wm/StartingData;->windowFlags:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/StartingData;-><init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)V

    iput-object p9, p0, Lcom/android/server/wm/StartingData;->thumbnail:Landroid/graphics/Bitmap;

    return-void
.end method
