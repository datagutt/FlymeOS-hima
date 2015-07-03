.class public Lcom/sprint/net/lte/BaseStationInfo;
.super Ljava/lang/Object;
.source "BaseStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/lte/BaseStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LteBaseStationInfo"


# instance fields
.field public bandClass:I

.field public bandwidth:I

.field public basestationId:Ljava/lang/String;

.field public frequencyDownlink:J

.field public frequencyUplink:J

.field public modulationDownlink:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public modulationUplink:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public name:Ljava/lang/String;

.field public neighborList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/BaseStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public plmnID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sprint/net/lte/BaseStationInfo$1;

    invoke-direct {v0}, Lcom/sprint/net/lte/BaseStationInfo$1;-><init>()V

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/lte/BaseStationInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprint/net/lte/BaseStationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
