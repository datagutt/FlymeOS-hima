.class public Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;
.super Ljava/lang/Object;
.source "FunctionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callNum:I

.field private intercept:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private optimization:Ljava/lang/String;

.field private remainForMonth:Ljava/lang/String;

.field private smsNum:I

.field private totalForMonth:Ljava/lang/String;

.field private usedFlowPercent:F

.field private usedFormonth:Ljava/lang/String;

.field private virus:Ljava/lang/String;

.field private virusNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo$1;

    invoke-direct {v0}, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo$1;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIF)V
    .locals 0
    .param p1, "virus"    # Ljava/lang/String;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "optimization"    # Ljava/lang/String;
    .param p4, "intercept"    # Ljava/lang/String;
    .param p5, "virusNum"    # I
    .param p6, "totalForMonth"    # Ljava/lang/String;
    .param p7, "remainForMonth"    # Ljava/lang/String;
    .param p8, "usedFormonth"    # Ljava/lang/String;
    .param p9, "smsNum"    # I
    .param p10, "callNum"    # I
    .param p11, "usedFlowPercent"    # F

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    .line 83
    iput p5, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    .line 84
    iput-object p6, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    .line 85
    iput-object p7, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    .line 86
    iput-object p8, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    .line 87
    iput p9, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    .line 88
    iput p10, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    .line 89
    iput p11, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getCallNum()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    return v0
.end method

.method public getIntercept()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkTotalForMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getOptimization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainForMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsNum()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    return v0
.end method

.method public getUsedFlowPercent()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    return v0
.end method

.method public getUsedFormonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    return-object v0
.end method

.method public getVirus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    return-object v0
.end method

.method public getVirusNum()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    return v0
.end method

.method public setCallNum(I)V
    .locals 0
    .param p1, "callNum"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    .line 155
    return-void
.end method

.method public setIntercept(Ljava/lang/String;)V
    .locals 0
    .param p1, "intercept"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0
    .param p1, "network"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setOptimization(Ljava/lang/String;)V
    .locals 0
    .param p1, "optimization"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setRemainForMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "remainForMonth"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setSmsNum(I)V
    .locals 0
    .param p1, "smsNum"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    .line 149
    return-void
.end method

.method public setTotalForMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalForMonth"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setUsedFlowPercent(F)V
    .locals 0
    .param p1, "usedFlowPercent"    # F

    .prologue
    .line 160
    iput p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    .line 161
    return-void
.end method

.method public setUsedFormonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "usedFormonth"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setVirus(Ljava/lang/String;)V
    .locals 0
    .param p1, "virus"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setVirusNum(I)V
    .locals 0
    .param p1, "virusNum"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    if-nez v0, :cond_9

    :goto_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_a

    move v0, v2

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 56
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virus:Ljava/lang/String;

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->network:Ljava/lang/String;

    goto :goto_1

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->optimization:Ljava/lang/String;

    goto :goto_2

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->intercept:Ljava/lang/String;

    goto :goto_3

    .line 49
    :cond_4
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->virusNum:I

    goto :goto_4

    .line 50
    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->totalForMonth:Ljava/lang/String;

    goto :goto_5

    .line 51
    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->remainForMonth:Ljava/lang/String;

    goto :goto_6

    .line 52
    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFormonth:Ljava/lang/String;

    goto :goto_7

    .line 53
    :cond_8
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->smsNum:I

    goto :goto_8

    .line 54
    :cond_9
    iget v1, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->callNum:I

    goto :goto_9

    .line 55
    :cond_a
    iget v0, p0, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->usedFlowPercent:F

    goto :goto_a
.end method
