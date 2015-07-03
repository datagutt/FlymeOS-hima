.class public Lcom/htc/widget/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mFromDegrees:F

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/htc/widget/Rotate3dAnimation;->mFromDegrees:F

    iput p2, p0, Lcom/htc/widget/Rotate3dAnimation;->mToDegrees:F

    iput p3, p0, Lcom/htc/widget/Rotate3dAnimation;->mCenterX:F

    iput p4, p0, Lcom/htc/widget/Rotate3dAnimation;->mCenterY:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    iget v4, p0, Lcom/htc/widget/Rotate3dAnimation;->mFromDegrees:F

    iget v6, p0, Lcom/htc/widget/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    iget v1, p0, Lcom/htc/widget/Rotate3dAnimation;->mCenterX:F

    iget v2, p0, Lcom/htc/widget/Rotate3dAnimation;->mCenterY:F

    iget-object v0, p0, Lcom/htc/widget/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    return-void
.end method
