.class public final enum Lcom/sprint/net/lte/ConnectionManager$State;
.super Ljava/lang/Enum;
.source "ConnectionManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/lte/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/net/lte/ConnectionManager$State;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/net/lte/ConnectionManager$State;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/lte/ConnectionManager$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum OFF:Lcom/sprint/net/lte/ConnectionManager$State;

.field public static final enum ON_CONNECTED:Lcom/sprint/net/lte/ConnectionManager$State;

.field public static final enum ON_NOT_CONNECTED:Lcom/sprint/net/lte/ConnectionManager$State;

.field public static final enum TURNING_OFF:Lcom/sprint/net/lte/ConnectionManager$State;

.field public static final enum TURNING_ON:Lcom/sprint/net/lte/ConnectionManager$State;

.field public static final enum UNKNOWN:Lcom/sprint/net/lte/ConnectionManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$State;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/sprint/net/lte/ConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->OFF:Lcom/sprint/net/lte/ConnectionManager$State;

    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$State;

    const-string v1, "ON_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/sprint/net/lte/ConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->ON_CONNECTED:Lcom/sprint/net/lte/ConnectionManager$State;

    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$State;

    const-string v1, "ON_NOT_CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/sprint/net/lte/ConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->ON_NOT_CONNECTED:Lcom/sprint/net/lte/ConnectionManager$State;

    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$State;

    const-string v1, "TURNING_OFF"

    invoke-direct {v0, v1, v6}, Lcom/sprint/net/lte/ConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->TURNING_OFF:Lcom/sprint/net/lte/ConnectionManager$State;

    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$State;

    const-string v1, "TURNING_ON"

    invoke-direct {v0, v1, v7}, Lcom/sprint/net/lte/ConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->TURNING_ON:Lcom/sprint/net/lte/ConnectionManager$State;

    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/lte/ConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->UNKNOWN:Lcom/sprint/net/lte/ConnectionManager$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sprint/net/lte/ConnectionManager$State;

    sget-object v1, Lcom/sprint/net/lte/ConnectionManager$State;->OFF:Lcom/sprint/net/lte/ConnectionManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/net/lte/ConnectionManager$State;->ON_CONNECTED:Lcom/sprint/net/lte/ConnectionManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/net/lte/ConnectionManager$State;->ON_NOT_CONNECTED:Lcom/sprint/net/lte/ConnectionManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/net/lte/ConnectionManager$State;->TURNING_OFF:Lcom/sprint/net/lte/ConnectionManager$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sprint/net/lte/ConnectionManager$State;->TURNING_ON:Lcom/sprint/net/lte/ConnectionManager$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sprint/net/lte/ConnectionManager$State;->UNKNOWN:Lcom/sprint/net/lte/ConnectionManager$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->$VALUES:[Lcom/sprint/net/lte/ConnectionManager$State;

    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$State$1;

    invoke-direct {v0}, Lcom/sprint/net/lte/ConnectionManager$State$1;-><init>()V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/net/lte/ConnectionManager$State;
    .locals 1

    const-class v0, Lcom/sprint/net/lte/ConnectionManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/net/lte/ConnectionManager$State;

    return-object v0
.end method

.method public static values()[Lcom/sprint/net/lte/ConnectionManager$State;
    .locals 1

    sget-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->$VALUES:[Lcom/sprint/net/lte/ConnectionManager$State;

    invoke-virtual {v0}, [Lcom/sprint/net/lte/ConnectionManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/net/lte/ConnectionManager$State;

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

    invoke-virtual {p0}, Lcom/sprint/net/lte/ConnectionManager$State;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
