.class Landroid/nfc/NfcAdapter$5;
.super Landroid/nfc/NfcAdapter$CallNfcMethod;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->getProperties(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/nfc/NfcAdapter$CallNfcMethod",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;

.field final synthetic val$param:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/nfc/NfcAdapter$5;->this$0:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$5;->val$param:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/nfc/NfcAdapter$CallNfcMethod;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic callMethod()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter$5;->callMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected callMethod()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcAdapter$5;->val$param:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapter;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
