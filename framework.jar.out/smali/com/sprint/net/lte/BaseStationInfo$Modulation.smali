.class public final enum Lcom/sprint/net/lte/BaseStationInfo$Modulation;
.super Ljava/lang/Enum;
.source "BaseStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/lte/BaseStationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Modulation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/net/lte/BaseStationInfo$Modulation;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/lte/BaseStationInfo$Modulation;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum QAM_16:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public static final enum QAM_64:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public static final enum QPSK:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public static final enum UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    new-instance v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    const-string v1, "QAM_16"

    invoke-direct {v0, v1, v3}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QAM_16:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    new-instance v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    const-string v1, "QAM_64"

    invoke-direct {v0, v1, v4}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QAM_64:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    new-instance v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    const-string v1, "QPSK"

    invoke-direct {v0, v1, v5}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QPSK:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    sget-object v1, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QAM_16:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QAM_64:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QPSK:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->$VALUES:[Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    new-instance v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation$1;

    invoke-direct {v0}, Lcom/sprint/net/lte/BaseStationInfo$Modulation$1;-><init>()V

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 1

    const-class v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    return-object v0
.end method

.method public static values()[Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 1

    sget-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->$VALUES:[Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    invoke-virtual {v0}, [Lcom/sprint/net/lte/BaseStationInfo$Modulation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
