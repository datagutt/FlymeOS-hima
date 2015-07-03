.class public Lcom/htc/htcjavaflag/HtcBuildFlag;
.super Ljava/lang/Object;
.source "HtcBuildFlag.java"


# static fields
.field public static final HTC_DISCLOSE_FLAG:Z

.field public static final HTC_RC_flag:Z = true

.field public static final Htc_DEBUG_flag:Z

.field public static final Htc_SECURITY_DEBUG_flag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHTC_DISCLOSE_FLAG()Z

    move-result v0

    sput-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_DISCLOSE_FLAG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHTC_DISCLOSE_FLAG()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final getHtc_DEBUG_flag()Z
    .locals 1

    invoke-static {}, Lcom/htc/htcjavaflag/HtcDebugFlag;->getHtcDebugFlag()Z

    move-result v0

    return v0
.end method
