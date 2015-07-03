.class public final enum Lcom/sprint/net/cdma/EvdoInfo$AuthState;
.super Ljava/lang/Enum;
.source "EvdoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/cdma/EvdoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/net/cdma/EvdoInfo$AuthState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/net/cdma/EvdoInfo$AuthState;

.field public static final enum FAILED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

.field public static final enum PASSED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

.field public static final enum PENDING:Lcom/sprint/net/cdma/EvdoInfo$AuthState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/cdma/EvdoInfo$AuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->PENDING:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    const-string v1, "PASSED"

    invoke-direct {v0, v1, v3}, Lcom/sprint/net/cdma/EvdoInfo$AuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->PASSED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/sprint/net/cdma/EvdoInfo$AuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->FAILED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    sget-object v1, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->PENDING:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->PASSED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->FAILED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->$VALUES:[Lcom/sprint/net/cdma/EvdoInfo$AuthState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/net/cdma/EvdoInfo$AuthState;
    .locals 1

    const-class v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    return-object v0
.end method

.method public static values()[Lcom/sprint/net/cdma/EvdoInfo$AuthState;
    .locals 1

    sget-object v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->$VALUES:[Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    invoke-virtual {v0}, [Lcom/sprint/net/cdma/EvdoInfo$AuthState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    return-object v0
.end method
