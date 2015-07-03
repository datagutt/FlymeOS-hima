.class final Lcom/htc/server/report/error/LogStream$CipherStream;
.super Ljava/lang/Object;
.source "LogStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/report/error/LogStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CipherStream"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateCipher(Ljavax/crypto/spec/SecretKeySpec;II[B)Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    const-string v2, "AES/CBC/PKCS5Padding"

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p1, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_0
    return-object v0
.end method

.method public static getCipherOutputStream(Ljava/io/OutputStream;[BI[B)Ljavax/crypto/CipherOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2, p2, p3}, Lcom/htc/server/report/error/LogStream$CipherStream;->generateCipher(Ljavax/crypto/spec/SecretKeySpec;II[B)Ljavax/crypto/Cipher;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v2, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
