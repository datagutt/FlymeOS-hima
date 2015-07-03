.class public final Landroid/media/TimedText$CellBound;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBound"
.end annotation


# instance fields
.field public final cellColumn:I

.field public final cellHeight:F

.field public final cellLeft:F

.field public final cellRow:I

.field public final cellTop:F

.field public final cellWidth:F


# direct methods
.method public constructor <init>(IIFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroid/media/TimedText$CellBound;->cellLeft:F

    iput p4, p0, Landroid/media/TimedText$CellBound;->cellTop:F

    iput p5, p0, Landroid/media/TimedText$CellBound;->cellWidth:F

    iput p6, p0, Landroid/media/TimedText$CellBound;->cellHeight:F

    iput p1, p0, Landroid/media/TimedText$CellBound;->cellColumn:I

    iput p2, p0, Landroid/media/TimedText$CellBound;->cellRow:I

    return-void
.end method
