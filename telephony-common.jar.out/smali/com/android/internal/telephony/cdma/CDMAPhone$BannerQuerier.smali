.class final enum Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;
.super Ljava/lang/Enum;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CDMAPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BannerQuerier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

.field public static final enum CdmaSST:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

.field public static final enum HtcRadio:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

.field public static final enum Other:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5060
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    const-string v1, "CdmaSST"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->CdmaSST:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    .line 5061
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    const-string v1, "HtcRadio"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->HtcRadio:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    .line 5062
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    const-string v1, "Other"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->Other:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    .line 5059
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    sget-object v1, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->CdmaSST:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->HtcRadio:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->Other:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->$VALUES:[Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

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
    .line 5059
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5059
    const-class v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;
    .locals 1

    .prologue
    .line 5059
    sget-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->$VALUES:[Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    return-object v0
.end method
