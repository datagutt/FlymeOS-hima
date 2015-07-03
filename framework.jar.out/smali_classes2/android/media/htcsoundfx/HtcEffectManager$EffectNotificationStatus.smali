.class final enum Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
.super Ljava/lang/Enum;
.source "HtcEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/htcsoundfx/HtcEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EffectNotificationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum Beats:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum Dts:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum No:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum SRS_HeadsetOff:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum SRS_HeadsetOn:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field public static final enum SRS_Speaker:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "Dts"

    invoke-direct {v0, v1, v3}, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Dts:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    new-instance v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "Beats"

    invoke-direct {v0, v1, v4}, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Beats:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    new-instance v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "SRS_Speaker"

    invoke-direct {v0, v1, v5}, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_Speaker:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    new-instance v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "SRS_HeadsetOn"

    invoke-direct {v0, v1, v6}, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOn:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    new-instance v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "SRS_HeadsetOff"

    invoke-direct {v0, v1, v7}, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOff:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    new-instance v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const-string v1, "No"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->No:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    sget-object v1, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Dts:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Beats:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v1, v0, v4

    sget-object v1, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_Speaker:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v1, v0, v5

    sget-object v1, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOn:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v1, v0, v6

    sget-object v1, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOff:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->No:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->$VALUES:[Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
    .locals 1

    const-class v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    return-object v0
.end method

.method public static values()[Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
    .locals 1

    sget-object v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->$VALUES:[Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    invoke-virtual {v0}, [Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    return-object v0
.end method
