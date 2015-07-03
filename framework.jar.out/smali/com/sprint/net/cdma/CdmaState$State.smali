.class public final enum Lcom/sprint/net/cdma/CdmaState$State;
.super Ljava/lang/Enum;
.source "CdmaState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/cdma/CdmaState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/net/cdma/CdmaState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/net/cdma/CdmaState$State;

.field public static final enum IDLE:Lcom/sprint/net/cdma/CdmaState$State;

.field public static final enum POWERSAVE:Lcom/sprint/net/cdma/CdmaState$State;

.field public static final enum SEARCHING:Lcom/sprint/net/cdma/CdmaState$State;

.field public static final enum TRAFFIC:Lcom/sprint/net/cdma/CdmaState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sprint/net/cdma/CdmaState$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/cdma/CdmaState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/CdmaState$State;->IDLE:Lcom/sprint/net/cdma/CdmaState$State;

    new-instance v0, Lcom/sprint/net/cdma/CdmaState$State;

    const-string v1, "SEARCHING"

    invoke-direct {v0, v1, v3}, Lcom/sprint/net/cdma/CdmaState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/CdmaState$State;->SEARCHING:Lcom/sprint/net/cdma/CdmaState$State;

    new-instance v0, Lcom/sprint/net/cdma/CdmaState$State;

    const-string v1, "TRAFFIC"

    invoke-direct {v0, v1, v4}, Lcom/sprint/net/cdma/CdmaState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/CdmaState$State;->TRAFFIC:Lcom/sprint/net/cdma/CdmaState$State;

    new-instance v0, Lcom/sprint/net/cdma/CdmaState$State;

    const-string v1, "POWERSAVE"

    invoke-direct {v0, v1, v5}, Lcom/sprint/net/cdma/CdmaState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/CdmaState$State;->POWERSAVE:Lcom/sprint/net/cdma/CdmaState$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sprint/net/cdma/CdmaState$State;

    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->IDLE:Lcom/sprint/net/cdma/CdmaState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->SEARCHING:Lcom/sprint/net/cdma/CdmaState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->TRAFFIC:Lcom/sprint/net/cdma/CdmaState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->POWERSAVE:Lcom/sprint/net/cdma/CdmaState$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sprint/net/cdma/CdmaState$State;->$VALUES:[Lcom/sprint/net/cdma/CdmaState$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/net/cdma/CdmaState$State;
    .locals 1

    const-class v0, Lcom/sprint/net/cdma/CdmaState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/net/cdma/CdmaState$State;

    return-object v0
.end method

.method public static values()[Lcom/sprint/net/cdma/CdmaState$State;
    .locals 1

    sget-object v0, Lcom/sprint/net/cdma/CdmaState$State;->$VALUES:[Lcom/sprint/net/cdma/CdmaState$State;

    invoke-virtual {v0}, [Lcom/sprint/net/cdma/CdmaState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/net/cdma/CdmaState$State;

    return-object v0
.end method
