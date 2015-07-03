.class public Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;
.super Ljava/lang/Object;
.source "ConfigData.java"


# instance fields
.field public audio:Ljava/lang/String;

.field public bgPath:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public fps:I

.field public image:Ljava/lang/String;

.field public pngLandPath:Ljava/lang/String;

.field public pngPath:Ljava/lang/String;

.field public screenX:I

.field public screenY:I

.field public useAudio:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->fps:I

    iput-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->bgPath:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->screenX:I

    iput v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->screenY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->useAudio:Z

    iput-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    return-void
.end method
