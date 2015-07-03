.class public final Landroid/media/ClosedCaption$Justification;
.super Ljava/lang/Object;
.source "ClosedCaption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ClosedCaption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Justification"
.end annotation


# instance fields
.field public final horizontalJustification:I

.field public final verticalJustification:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/ClosedCaption$Justification;->horizontalJustification:I

    iput p2, p0, Landroid/media/ClosedCaption$Justification;->verticalJustification:I

    return-void
.end method
