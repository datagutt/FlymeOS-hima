.class public abstract Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;
.super Landroid/os/Binder;
.source "HTCServer.java"

# interfaces
.implements Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

.field static final TRANSACTION_exitService:I = 0x5

.field static final TRANSACTION_getFunctionInfo:I = 0x3

.field static final TRANSACTION_inComingCall:I = 0x1

.field static final TRANSACTION_inComingSms:I = 0x2

.field static final TRANSACTION_isEnabled:I = 0x8

.field static final TRANSACTION_launchActivity:I = 0x4

.field static final TRANSACTION_startTMService:I = 0x6

.field static final TRANSACTION_stopTMService:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v0, "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;->inComingCall(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 55
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_2
    const-string v0, "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;->inComingSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 73
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :sswitch_3
    const-string v8, "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;->getFunctionInfo()Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;

    move-result-object v6

    .line 81
    .local v6, "_result":Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v6, :cond_0

    .line 83
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v6, p3, v7}, Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v6    # "_result":Lcom/tencent/qqpimsecureforhtc/aidl/FunctionInfo;
    :sswitch_4
    const-string v0, "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;->launchActivity(Ljava/lang/String;)I

    move-result v6

    .line 97
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_5
    const-string v0, "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;->exitService()V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 110
    :sswitch_6
    const-string v0, "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;->startTMService()V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    :sswitch_7
    const-string v0, "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;->stopTMService()V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 124
    :sswitch_8
    const-string v8, "com.tencent.qqpimsecureforhtc.aidl.HTCServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;->isEnabled()Z

    move-result v6

    .line 126
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v6, :cond_1

    move v0, v7

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
