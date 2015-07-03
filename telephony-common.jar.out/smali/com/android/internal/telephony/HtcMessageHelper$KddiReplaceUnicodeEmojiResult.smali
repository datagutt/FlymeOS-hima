.class public Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;
.super Ljava/lang/Object;
.source "HtcMessageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcMessageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KddiReplaceUnicodeEmojiResult"
.end annotation


# instance fields
.field public emojiCount:I

.field public userDataString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2152
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->userDataString:Ljava/lang/String;

    .line 2153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->emojiCount:I

    .line 2154
    return-void
.end method
