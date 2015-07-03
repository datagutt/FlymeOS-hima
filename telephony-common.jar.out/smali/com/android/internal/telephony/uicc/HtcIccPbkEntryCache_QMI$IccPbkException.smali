.class public Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;
.super Ljava/lang/Exception;
.source "HtcIccPbkEntryCache_QMI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IccPbkException"
.end annotation


# instance fields
.field public mError:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 3593
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 3594
    iput p1, p0, Lcom/android/internal/telephony/uicc/HtcIccPbkEntryCache_QMI$IccPbkException;->mError:I

    .line 3595
    return-void
.end method
