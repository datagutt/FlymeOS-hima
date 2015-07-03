.class public abstract Lcom/nxp/nfc/INxpNfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INxpNfcAdapter.java"

# interfaces
.implements Lcom/nxp/nfc/INxpNfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/nfc/INxpNfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nxp.nfc.INxpNfcAdapter"

.field static final TRANSACTION_DefaultRouteSet:I = 0x10

.field static final TRANSACTION_MifareCLTRouteSet:I = 0x11

.field static final TRANSACTION_MifareDesfireRouteSet:I = 0xf

.field static final TRANSACTION_changeDefaultRoute:I = 0x2

.field static final TRANSACTION_deselectSecureElement:I = 0xb

.field static final TRANSACTION_doConfigureDesfireRoute:I = 0xd

.field static final TRANSACTION_getDefaultRouteValue:I = 0x13

.field static final TRANSACTION_getHtcDriverOption:I = 0x12

.field static final TRANSACTION_getNfcAccessExtrasInterface:I = 0x3

.field static final TRANSACTION_getNfcAlaInterface:I = 0x5

.field static final TRANSACTION_getNfcDtaInterface:I = 0x6

.field static final TRANSACTION_getNfcSecureElementInterface:I = 0x1

.field static final TRANSACTION_getNfcVzwInterface:I = 0x7

.field static final TRANSACTION_getNxpNfcAdapterExtrasInterface:I = 0x4

.field static final TRANSACTION_getSecureElementList:I = 0x9

.field static final TRANSACTION_getSelectedSecureElement:I = 0xc

.field static final TRANSACTION_selectSecureElement:I = 0xa

.field static final TRANSACTION_setEmvCoPollProfile:I = 0xe

.field static final TRANSACTION_storeSePreference:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nxp/nfc/INxpNfcAdapter;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.nxp.nfc.INxpNfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nxp/nfc/INxpNfcAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/nxp/nfc/INxpNfcAdapter;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcSecureElementInterface()Lcom/nxp/nfc/INfcSecureElement;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/nxp/nfc/INfcSecureElement;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :sswitch_2
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->changeDefaultRoute(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    :sswitch_3
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcAccessExtrasInterface(Ljava/lang/String;)Lcom/nxp/nfc/INfcAccessExtras;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/nxp/nfc/INfcAccessExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :sswitch_4
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNxpNfcAdapterExtrasInterface()Lcom/nxp/nfc/INxpNfcAdapterExtras;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/nxp/nfc/INxpNfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :sswitch_5
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcAlaInterface()Lcom/nxp/nfc/INfcAla;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/nxp/nfc/INfcAla;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :sswitch_6
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcDtaInterface()Lcom/nxp/nfc/INfcDta;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/nxp/nfc/INfcDta;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcVzwInterface()Lcom/nxp/nfc/INfcVzw;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/nxp/nfc/INfcVzw;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->storeSePreference(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSecureElementList(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->selectSecureElement(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->deselectSecureElement(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSelectedSecureElement(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->doConfigureDesfireRoute(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v0, v6

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->setEmvCoPollProfile(ZI)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v7

    goto :goto_2

    :sswitch_f
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    move v1, v6

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v2, v6

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v3, v6

    :goto_5
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->MifareDesfireRouteSet(IZZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_8
    move v1, v7

    goto :goto_3

    :cond_9
    move v2, v7

    goto :goto_4

    :cond_a
    move v3, v7

    goto :goto_5

    :sswitch_10
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    move v1, v6

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    move v2, v6

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    move v3, v6

    :goto_8
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->DefaultRouteSet(IZZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_b
    move v1, v7

    goto :goto_6

    :cond_c
    move v2, v7

    goto :goto_7

    :cond_d
    move v3, v7

    goto :goto_8

    :sswitch_11
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    move v1, v6

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    move v2, v6

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    move v3, v6

    :goto_b
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->MifareCLTRouteSet(IZZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_e
    move v1, v7

    goto :goto_9

    :cond_f
    move v2, v7

    goto :goto_a

    :cond_10
    move v3, v7

    goto :goto_b

    :sswitch_12
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getHtcDriverOption()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getDefaultRouteValue()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
