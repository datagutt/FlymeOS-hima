.class public final Landroid/bluetooth/BluetoothSap;
.super Ljava/lang/Object;
.source "BluetoothSap.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final SAP:I = 0x65

.field public static final SAP_DISCONNECT_FAILED_NOT_CONNECTED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Bluetoothsap"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mSapService:Landroid/bluetooth/IBluetoothSap;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mgr:Landroid/bluetooth/IBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/bluetooth/BluetoothSap$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothSap$1;-><init>(Landroid/bluetooth/BluetoothSap;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSap;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v1, Landroid/bluetooth/BluetoothSap$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothSap$2;-><init>(Landroid/bluetooth/BluetoothSap;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "bluetooth_manager"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSap;->mgr:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mgr:Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mgr:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v1, "Bluetoothsap"

    const-string v2, "BluetoothSap() call bindService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSap;->doBind()Z

    const-string v1, "Bluetoothsap"

    const-string v2, "BluetoothSap(), bindService called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Bluetoothsap"

    const-string v2, "Unable to register BluetoothStateChangeCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/IBluetoothSap;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    return-object v0
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothSap;Landroid/bluetooth/IBluetoothSap;)Landroid/bluetooth/IBluetoothSap;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    return-object p1
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothSap;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothSap;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothSap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "Bluetoothsap"

    const-string v2, "close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v3, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    :cond_0
    iput-object v3, p0, Landroid/bluetooth/BluetoothSap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mgr:Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mgr:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Bluetoothsap"

    const-string v2, "Unable to register BluetoothStateChangeCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v1, 0x0

    const-string v2, "Bluetoothsap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Bluetoothsap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    if-nez v2, :cond_0

    const-string v2, "Bluetoothsap"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method doBind()Z
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothSap;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "Bluetoothsap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Sap Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSap;->close()V

    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string v1, "Bluetoothsap"

    const-string v2, "getConnectedDevices()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSap;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Bluetoothsap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    if-nez v1, :cond_1

    const-string v1, "Bluetoothsap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5

    const/4 v1, 0x0

    const-string v2, "Bluetoothsap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectionState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Bluetoothsap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    if-nez v2, :cond_0

    const-string v2, "Bluetoothsap"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string v1, "Bluetoothsap"

    const-string v2, "getDevicesMatchingConnectionStates()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothSap;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothSap;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Bluetoothsap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;

    if-nez v1, :cond_1

    const-string v1, "Bluetoothsap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
