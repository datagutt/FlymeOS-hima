.class Lcom/htc/widget/DigitalControls$MaskDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DigitalControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DigitalControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskDrawable"
.end annotation


# instance fields
.field private mImage:Landroid/graphics/Bitmap;

.field private mMask:Landroid/graphics/Bitmap;

.field private mMode:Landroid/graphics/PorterDuffXfermode;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mMode:Landroid/graphics/PorterDuffXfermode;

    iput-object p1, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mImage:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mMask:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mMask:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mMask:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/htc/widget/DigitalControls$MaskDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
