.class Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/BearerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KddiUtf16EncodeResult"
.end annotation


# instance fields
.field emojiCount:I

.field payload:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;->payload:[B

    .line 3461
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;->emojiCount:I

    .line 3462
    return-void
.end method
