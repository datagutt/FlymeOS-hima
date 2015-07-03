.class Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
.super Ljava/lang/Object;
.source "HtcCdmaModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarrierInfo"
.end annotation


# instance fields
.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mOperatorName:Ljava/lang/String;

.field private mUpdateVmNumberAfterProvision:Z

.field private mVoicemailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mOperatorName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mMcc:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mMnc:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mVoicemailNumber:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mUpdateVmNumberAfterProvision:Z

    return-void
.end method


# virtual methods
.method public getMcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicemailNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mVoicemailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isUpdateVmNumberAfterProvision()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mUpdateVmNumberAfterProvision:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierInfo [mOperatorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVoicemailNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mVoicemailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpdateVMAfterProvision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->mUpdateVmNumberAfterProvision:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
