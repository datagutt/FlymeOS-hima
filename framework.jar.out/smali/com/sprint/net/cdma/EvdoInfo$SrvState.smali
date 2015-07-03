.class final enum Lcom/sprint/net/cdma/EvdoInfo$SrvState;
.super Ljava/lang/Enum;
.source "EvdoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/cdma/EvdoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SrvState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/net/cdma/EvdoInfo$SrvState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/net/cdma/EvdoInfo$SrvState;

.field public static final enum SYS_SRV_STATUS_LIMITED:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

.field public static final enum SYS_SRV_STATUS_LIMITED_REGIONAL:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

.field public static final enum SYS_SRV_STATUS_NO_SRV:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

.field public static final enum SYS_SRV_STATUS_PWR_SAVE:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

.field public static final enum SYS_SRV_STATUS_SRV:Lcom/sprint/net/cdma/EvdoInfo$SrvState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    const-string v1, "SYS_SRV_STATUS_NO_SRV"

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/cdma/EvdoInfo$SrvState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_NO_SRV:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    const-string v1, "SYS_SRV_STATUS_LIMITED"

    invoke-direct {v0, v1, v3}, Lcom/sprint/net/cdma/EvdoInfo$SrvState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_LIMITED:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    const-string v1, "SYS_SRV_STATUS_SRV"

    invoke-direct {v0, v1, v4}, Lcom/sprint/net/cdma/EvdoInfo$SrvState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_SRV:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    const-string v1, "SYS_SRV_STATUS_LIMITED_REGIONAL"

    invoke-direct {v0, v1, v5}, Lcom/sprint/net/cdma/EvdoInfo$SrvState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_LIMITED_REGIONAL:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    const-string v1, "SYS_SRV_STATUS_PWR_SAVE"

    invoke-direct {v0, v1, v6}, Lcom/sprint/net/cdma/EvdoInfo$SrvState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_PWR_SAVE:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    sget-object v1, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_NO_SRV:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_LIMITED:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_SRV:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_LIMITED_REGIONAL:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_PWR_SAVE:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->$VALUES:[Lcom/sprint/net/cdma/EvdoInfo$SrvState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/net/cdma/EvdoInfo$SrvState;
    .locals 1

    const-class v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    return-object v0
.end method

.method public static values()[Lcom/sprint/net/cdma/EvdoInfo$SrvState;
    .locals 1

    sget-object v0, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->$VALUES:[Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    invoke-virtual {v0}, [Lcom/sprint/net/cdma/EvdoInfo$SrvState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    return-object v0
.end method
