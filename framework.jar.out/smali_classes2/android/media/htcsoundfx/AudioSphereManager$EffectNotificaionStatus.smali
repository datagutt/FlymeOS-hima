.class final enum Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;
.super Ljava/lang/Enum;
.source "AudioSphereManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/htcsoundfx/AudioSphereManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EffectNotificaionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

.field public static final enum No:Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

.field public static final enum SpeakerOff:Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

.field public static final enum SpeakerOn:Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    const-string v1, "SpeakerOn"

    invoke-direct {v0, v1, v2}, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;->SpeakerOn:Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    new-instance v0, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    const-string v1, "SpeakerOff"

    invoke-direct {v0, v1, v3}, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;->SpeakerOff:Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    new-instance v0, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    const-string v1, "No"

    invoke-direct {v0, v1, v4}, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;->No:Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    sget-object v1, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;->SpeakerOn:Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;->SpeakerOff:Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;->No:Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;->$VALUES:[Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

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

.method public static valueOf(Ljava/lang/String;)Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;
    .locals 1

    const-class v0, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    return-object v0
.end method

.method public static values()[Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;
    .locals 1

    sget-object v0, Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;->$VALUES:[Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    invoke-virtual {v0}, [Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/htcsoundfx/AudioSphereManager$EffectNotificaionStatus;

    return-object v0
.end method
