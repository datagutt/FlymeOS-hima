.class public Lcom/htc/lockscreen/framework/wrapper/FingerprintUtilsWrapper;
.super Ljava/lang/Object;
.source "FingerprintUtilsWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFingerprintIdsForUser(Landroid/content/ContentResolver;I)[I
    .locals 1

    invoke-static {p0, p1}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintIdsForUser(Landroid/content/ContentResolver;I)[I

    move-result-object v0

    return-object v0
.end method
