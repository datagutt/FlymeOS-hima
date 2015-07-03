.class public Lcom/sprint/net/cdma/CdmaState;
.super Ljava/lang/Object;
.source "CdmaState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/cdma/CdmaState$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/cdma/CdmaState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CdmaState"


# instance fields
.field private mState:Lcom/sprint/net/cdma/CdmaState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sprint/net/cdma/CdmaState$1;

    invoke-direct {v0}, Lcom/sprint/net/cdma/CdmaState$1;-><init>()V

    sput-object v0, Lcom/sprint/net/cdma/CdmaState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/cdma/CdmaState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sprint/net/cdma/CdmaState$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sprint/net/cdma/CdmaState;->mState:Lcom/sprint/net/cdma/CdmaState$State;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sprint/net/cdma/CdmaState;->mState:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-virtual {v0}, Lcom/sprint/net/cdma/CdmaState$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
