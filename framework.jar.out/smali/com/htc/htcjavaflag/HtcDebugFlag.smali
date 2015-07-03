.class public Lcom/htc/htcjavaflag/HtcDebugFlag;
.super Ljava/lang/Object;
.source "HtcDebugFlag.java"


# static fields
.field static DEBUG_FLAG:Ljava/lang/Boolean; = null

.field static final HTCLOG_MASK_VERBOSE_DEBUG_INFO:S = 0x707s

.field static LANGUAGE_FLAG:Ljava/lang/Short;

.field static PROJECT_FLAG:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/htcjavaflag/HtcDebugFlag;->DEBUG_FLAG:Ljava/lang/Boolean;

    sput-object v0, Lcom/htc/htcjavaflag/HtcDebugFlag;->PROJECT_FLAG:Ljava/lang/Short;

    sput-object v0, Lcom/htc/htcjavaflag/HtcDebugFlag;->LANGUAGE_FLAG:Ljava/lang/Short;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHtcDebugFlag()Z
    .locals 3

    sget-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->DEBUG_FLAG:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/htcjavaflag/Native;->htcDebugFlagFromJNI()I

    move-result v0

    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0x707

    int-to-short v1, v2

    if-nez v1, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->DEBUG_FLAG:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->DEBUG_FLAG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/htc/htcjavaflag/HtcDebugFlag;->DEBUG_FLAG:Ljava/lang/Boolean;

    goto :goto_0
.end method
