.class public final enum Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;
.super Ljava/lang/Enum;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioCommandState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

.field public static final enum IDLE:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

.field public static final enum TURNING_OFF:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

.field public static final enum TURNING_ON:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1580
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->IDLE:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    .line 1581
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    const-string v1, "TURNING_ON"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_ON:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    .line 1582
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    const-string v1, "TURNING_OFF"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_OFF:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    .line 1579
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->IDLE:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_ON:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_OFF:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->$VALUES:[Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

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
    .line 1579
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1579
    const-class v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;
    .locals 1

    .prologue
    .line 1579
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->$VALUES:[Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    return-object v0
.end method
