.class public final enum Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;
.super Ljava/lang/Enum;
.source "HtcDataCustomizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LteConfigEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

.field public static final enum CKT:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

.field public static final enum CSPIRE:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

.field public static final enum KDDI:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

.field public static final enum LRA:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

.field public static final enum MPCS:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

.field public static final enum OPEN_MOBILE:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

.field public static final enum SPRINT:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

.field public static final enum VERIZON:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    const-string v1, "VERIZON"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->VERIZON:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    const-string v1, "SPRINT"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->SPRINT:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    const-string v1, "OPEN_MOBILE"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->OPEN_MOBILE:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    const-string v1, "KDDI"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->KDDI:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    const-string v1, "LRA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->LRA:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    const-string v1, "CKT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->CKT:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    const-string v1, "MPCS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->MPCS:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    const-string v1, "CSPIRE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->CSPIRE:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->VERIZON:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->SPRINT:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->OPEN_MOBILE:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->KDDI:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->LRA:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->CKT:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->MPCS:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->CSPIRE:Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->$VALUES:[Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getIndex(Ljava/lang/String;)I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v1, -0x1

    .line 70
    .local v1, "mapResult":I
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->ordinal()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HtcDataCustomizationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no mapping index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->values()[Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    move-result-object v2

    aget-object v1, v2, p0

    .line 82
    .local v1, "operator":Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 87
    .end local v1    # "operator":Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;
    :goto_0
    return-object v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HtcDataCustomizationManager"

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

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->$VALUES:[Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager$LteConfigEnum;

    return-object v0
.end method
