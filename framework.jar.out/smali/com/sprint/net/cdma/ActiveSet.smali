.class public Lcom/sprint/net/cdma/ActiveSet;
.super Ljava/lang/Object;
.source "ActiveSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/cdma/ActiveSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActiveSet"


# instance fields
.field public EcIo:I

.field public Pn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sprint/net/cdma/ActiveSet$1;

    invoke-direct {v0}, Lcom/sprint/net/cdma/ActiveSet$1;-><init>()V

    sput-object v0, Lcom/sprint/net/cdma/ActiveSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sprint/net/cdma/ActiveSet;->Pn:I

    iput v0, p0, Lcom/sprint/net/cdma/ActiveSet;->EcIo:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sprint/net/cdma/ActiveSet;->Pn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sprint/net/cdma/ActiveSet;->EcIo:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/cdma/ActiveSet$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprint/net/cdma/ActiveSet;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/sprint/net/cdma/ActiveSet;->Pn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sprint/net/cdma/ActiveSet;->EcIo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
