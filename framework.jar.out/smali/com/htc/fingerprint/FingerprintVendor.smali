.class public Lcom/htc/fingerprint/FingerprintVendor;
.super Ljava/lang/Object;
.source "FingerprintVendor.java"

# interfaces
.implements Lcom/htc/fingerprint/IFingerprintAPI;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fingerprint/FingerprintVendor;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public convertEnrollCaptureStatus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public convertVerifyResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enroll(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnrollTimes()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getEnrolledFingerList()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getEventType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setNavigationEnable(Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public verify()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public verify(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
