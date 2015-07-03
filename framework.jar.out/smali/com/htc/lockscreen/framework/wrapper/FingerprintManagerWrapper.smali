.class public Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerWrapper;
.super Ljava/lang/Object;
.source "FingerprintManagerWrapper.java"


# instance fields
.field private mFingerprint:Landroid/service/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerWrapper;->mFingerprint:Landroid/service/fingerprint/FingerprintManager;

    return-void
.end method


# virtual methods
.method public startListening(Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerReceiverWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerWrapper;->mFingerprint:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/service/fingerprint/FingerprintManager;->startListening(Landroid/service/fingerprint/FingerprintManagerReceiver;)V

    return-void
.end method

.method public stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/FingerprintManagerWrapper;->mFingerprint:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->stopListening()V

    return-void
.end method
