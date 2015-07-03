.class public Lcom/sprint/net/lte/SibInfo;
.super Ljava/lang/Object;
.source "SibInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/lte/SibInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LteSibInfo"


# instance fields
.field public sib1:[B

.field public sib10:[B

.field public sib11:[B

.field public sib12:[B

.field public sib13:[B

.field public sib2:[B

.field public sib3:[B

.field public sib4:[B

.field public sib5:[B

.field public sib6:[B

.field public sib7:[B

.field public sib8:[B

.field public sib9:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sprint/net/lte/SibInfo$1;

    invoke-direct {v0}, Lcom/sprint/net/lte/SibInfo$1;-><init>()V

    sput-object v0, Lcom/sprint/net/lte/SibInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/lte/SibInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprint/net/lte/SibInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
