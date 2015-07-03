.class public final Landroid/media/TimedText$Region;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Region"
.end annotation


# instance fields
.field public final afterEdge:I

.field public final backgroundColor:Ljava/lang/String;

.field public final beforeEdge:I

.field public final cellColumn:I

.field public final cellRow:I

.field public final cellhExtent:F

.field public final cellwExtent:F

.field public final cellxOrigin:F

.field public final cellyOrigin:F

.field public final displayAlign:Ljava/lang/String;

.field public final endEdge:I

.field public final hExtent:I

.field public final isCell:Z

.field public final regionID:Ljava/lang/String;

.field public final startEdge:I

.field public final wExtent:I

.field public final xOrigin:I

.field public final yOrigin:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIFFFFIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/TimedText$Region;->regionID:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/TimedText$Region;->backgroundColor:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/TimedText$Region;->displayAlign:Ljava/lang/String;

    iput p4, p0, Landroid/media/TimedText$Region;->xOrigin:I

    iput p5, p0, Landroid/media/TimedText$Region;->yOrigin:I

    iput p6, p0, Landroid/media/TimedText$Region;->hExtent:I

    iput p7, p0, Landroid/media/TimedText$Region;->wExtent:I

    iput p8, p0, Landroid/media/TimedText$Region;->beforeEdge:I

    iput p9, p0, Landroid/media/TimedText$Region;->afterEdge:I

    iput p10, p0, Landroid/media/TimedText$Region;->startEdge:I

    iput p11, p0, Landroid/media/TimedText$Region;->endEdge:I

    iput p12, p0, Landroid/media/TimedText$Region;->cellxOrigin:F

    iput p13, p0, Landroid/media/TimedText$Region;->cellyOrigin:F

    iput p14, p0, Landroid/media/TimedText$Region;->cellhExtent:F

    move/from16 v0, p15

    iput v0, p0, Landroid/media/TimedText$Region;->cellwExtent:F

    move/from16 v0, p16

    iput v0, p0, Landroid/media/TimedText$Region;->cellColumn:I

    move/from16 v0, p17

    iput v0, p0, Landroid/media/TimedText$Region;->cellRow:I

    move/from16 v0, p18

    iput-boolean v0, p0, Landroid/media/TimedText$Region;->isCell:Z

    return-void
.end method
