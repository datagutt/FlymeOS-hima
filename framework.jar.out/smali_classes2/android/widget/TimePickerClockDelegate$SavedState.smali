.class Landroid/widget/TimePickerClockDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/TimePickerClockDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/TimePickerClockDelegate$SavedState$1;

    invoke-direct {v0}, Landroid/widget/TimePickerClockDelegate$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/TimePickerClockDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/TimePickerClockDelegate$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    iput p3, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILandroid/widget/TimePickerClockDelegate$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/TimePickerClockDelegate$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
