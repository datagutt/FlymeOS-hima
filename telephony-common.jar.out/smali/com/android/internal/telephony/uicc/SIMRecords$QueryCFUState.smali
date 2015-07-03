.class public final enum Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;
.super Ljava/lang/Enum;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryCFUState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

.field public static final enum CFU_INIT_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

.field public static final enum CFU_QUERYING_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

.field public static final enum CFU_QURIED_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    const-string v1, "CFU_INIT_STATE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_INIT_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    const-string v1, "CFU_QUERYING_STATE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_QUERYING_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    const-string v1, "CFU_QURIED_STATE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_QURIED_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    .line 194
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_INIT_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_QUERYING_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_QURIED_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->$VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

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
    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    const-class v0, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->$VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    return-object v0
.end method
