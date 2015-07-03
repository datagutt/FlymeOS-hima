.class public Lcom/android/internal/telephony/cdma/CdmaSysRecord;
.super Ljava/lang/Object;
.source "CdmaSysRecord.java"


# instance fields
.field public bsid:I

.field public nid:I

.field public sid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "sid"    # I
    .param p2, "nid"    # I
    .param p3, "bsid"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSysRecord;->sid:I

    .line 22
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaSysRecord;->nid:I

    .line 23
    iput p3, p0, Lcom/android/internal/telephony/cdma/CdmaSysRecord;->bsid:I

    .line 24
    return-void
.end method
