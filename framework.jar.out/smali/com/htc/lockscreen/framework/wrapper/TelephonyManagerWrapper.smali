.class public Lcom/htc/lockscreen/framework/wrapper/TelephonyManagerWrapper;
.super Ljava/lang/Object;
.source "TelephonyManagerWrapper.java"


# static fields
.field public static final ACTION_PHONE_STATE_CHANGED_EXT:Ljava/lang/String;

.field public static final ICC_STATE_ABSENT:I = 0x1

.field public static final ICC_STATE_NETWORK_LOCKED:I = 0x4

.field public static final ICC_STATE_PIN_REQUIRED:I = 0x2

.field public static final ICC_STATE_PUK_REQUIRED:I = 0x3

.field public static final ICC_STATE_READY:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/TelephonyManagerWrapper;->ACTION_PHONE_STATE_CHANGED_EXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
