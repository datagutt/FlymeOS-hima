.class public final enum Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;
.super Ljava/lang/Enum;
.source "HtcIccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcIccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIMStateNotification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

.field public static final enum CARD_ABSENT_NOTIFICATION:Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

.field public static final enum CARD_INIT_NOTIFICATION:Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

.field public static final enum CARD_LOCKED_NOTIFICATION:Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    const-string v1, "CARD_INIT_NOTIFICATION"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;->CARD_INIT_NOTIFICATION:Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    new-instance v0, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    const-string v1, "CARD_ABSENT_NOTIFICATION"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;->CARD_ABSENT_NOTIFICATION:Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    new-instance v0, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    const-string v1, "CARD_LOCKED_NOTIFICATION"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;->CARD_LOCKED_NOTIFICATION:Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    sget-object v1, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;->CARD_INIT_NOTIFICATION:Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;->CARD_ABSENT_NOTIFICATION:Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;->CARD_LOCKED_NOTIFICATION:Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;->$VALUES:[Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;->$VALUES:[Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/HtcIccCardConstants$SIMStateNotification;

    return-object v0
.end method
