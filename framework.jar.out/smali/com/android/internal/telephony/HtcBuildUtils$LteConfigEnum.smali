.class public final enum Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;
.super Ljava/lang/Enum;
.source "HtcBuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcBuildUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LteConfigEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

.field public static final enum CKT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

.field public static final enum CSPIRE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

.field public static final enum KDDI:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

.field public static final enum LRA:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

.field public static final enum MPCS:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

.field public static final enum OPEN_MOBILE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

.field public static final enum SPRINT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

.field public static final enum VERIZON:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->UNKNOWN:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    new-instance v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    const-string v1, "VERIZON"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->VERIZON:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    new-instance v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    const-string v1, "SPRINT"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->SPRINT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    new-instance v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    const-string v1, "OPEN_MOBILE"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->OPEN_MOBILE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    new-instance v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    const-string v1, "KDDI"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->KDDI:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    new-instance v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    const-string v1, "LRA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->LRA:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    new-instance v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    const-string v1, "CKT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->CKT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    new-instance v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    const-string v1, "MPCS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->MPCS:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    new-instance v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    const-string v1, "CSPIRE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->CSPIRE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->UNKNOWN:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->VERIZON:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->SPRINT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->OPEN_MOBILE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->KDDI:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->LRA:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->CKT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->MPCS:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->CSPIRE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->$VALUES:[Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

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

.method public static getIndex(Ljava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->ordinal()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "HtcBuildUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no mapping index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->values()[Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v2

    aget-object v1, v2, p0

    invoke-virtual {v1}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "HtcBuildUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getString: index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->$VALUES:[Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    return-object v0
.end method
