.class public final Lcom/htc/utils/HtcCGroupUtil;
.super Ljava/lang/Object;
.source "HtcCGroupUtil.java"


# static fields
.field public static final GROUP_POLICY_ADD:I = 0x1

.field public static final GROUP_POLICY_REMOVE:I

.field public static final GROUP_TYPE_TIMER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeSetCgroupPolicy(III)V
.end method

.method public static setCgroupPolicy(III)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/htc/utils/HtcCGroupUtil;->nativeSetCgroupPolicy(III)V

    return-void
.end method
