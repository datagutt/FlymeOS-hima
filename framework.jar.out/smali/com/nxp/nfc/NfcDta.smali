.class public final Lcom/nxp/nfc/NfcDta;
.super Ljava/lang/Object;
.source "NfcDta.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcDta"

.field private static mService:Lcom/nxp/nfc/INfcDta;


# direct methods
.method public constructor <init>(Lcom/nxp/nfc/INfcDta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/nxp/nfc/NfcDta;->mService:Lcom/nxp/nfc/INfcDta;

    return-void
.end method


# virtual methods
.method public snepDtaCmd(Ljava/lang/String;Ljava/lang/String;IIII)Z
    .locals 8

    :try_start_0
    sget-object v0, Lcom/nxp/nfc/NfcDta;->mService:Lcom/nxp/nfc/INfcDta;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/nxp/nfc/INfcDta;->snepDtaCmd(Ljava/lang/String;Ljava/lang/String;IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v7

    const/4 v0, 0x0

    goto :goto_0
.end method
