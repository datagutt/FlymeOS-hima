.class public Lcom/android/internal/telephony/TencentSecurityManager;
.super Ljava/lang/Object;
.source "TencentSecurityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TencentSecurityManager$1;,
        Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;,
        Lcom/android/internal/telephony/TencentSecurityManager$ServiceStateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_TENCENT_SERVICE_START:Ljava/lang/String; = "com.tencent.qqpimsecureforhtc.SERVICE_START"

.field private static final EXTRA_ENABLED:Ljava/lang/String; = "enabled"

.field public static final NUMBER_BLOCKED:I = 0x1

.field public static final NUMBER_PASSED:I = 0x0

.field public static final PHONE_SLOT1:I = 0x1

.field public static final PHONE_SLOT2:I = 0x2

.field public static final PROTOCOL_TYPE_MMS:I = 0x1

.field public static final PROTOCOL_TYPE_SMS:I = 0x0

.field public static final PROTOCOL_TYPE_WAP_PUSH:I = 0x2

.field private static final REBIND_LIMIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static sInstance:Lcom/android/internal/telephony/TencentSecurityManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

.field private mServiceConnectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    .line 67
    iput-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->registerReceiver()V

    .line 97
    return-void
.end method

.method private getConnectListener()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceConnectionListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceConnectionListeners:Ljava/util/ArrayList;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceConnectionListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/TencentSecurityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    sget-object v0, Lcom/android/internal/telephony/TencentSecurityManager;->sInstance:Lcom/android/internal/telephony/TencentSecurityManager;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/TencentSecurityManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/TencentSecurityManager;->sInstance:Lcom/android/internal/telephony/TencentSecurityManager;

    .line 112
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TencentSecurityManager;->sInstance:Lcom/android/internal/telephony/TencentSecurityManager;

    return-object v0
.end method

.method private static getPhoneSlotTencent(J)I
    .locals 6
    .param p0, "subId"    # J

    .prologue
    const/4 v1, 0x1

    .line 240
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    .line 242
    .local v0, "slotId":I
    packed-switch v0, :pswitch_data_0

    .line 248
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TencentSecurityManager]: get phone slot error> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    :pswitch_0
    return v1

    .line 246
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyOnServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->getConnectListener()Ljava/util/ArrayList;

    move-result-object v2

    .line 257
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;>;"
    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;

    .line 259
    .local v1, "listener":Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 262
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;
    :cond_0
    return-void
.end method

.method private notifyOnServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->getConnectListener()Ljava/util/ArrayList;

    move-result-object v3

    .line 267
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;>;"
    if-eqz v3, :cond_0

    .line 269
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 271
    .local v0, "clone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;>;"
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;

    .line 273
    .local v2, "listener":Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 277
    .end local v0    # "clone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;
    :cond_0
    return-void
.end method

.method private rebindService()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 217
    iget-object v3, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-eqz v3, :cond_1

    .line 231
    :cond_0
    return-void

    .line 218
    :cond_1
    const/4 v1, 0x0

    .line 219
    .local v1, "retry":I
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-nez v3, :cond_0

    if-ge v1, v6, :cond_0

    .line 220
    add-int/lit8 v1, v1, 0x1

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->bindTencentSecurityManager()Z

    move-result v2

    .line 222
    .local v2, "success":Z
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TencentSecurityManager]: rebindService> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-nez v2, :cond_2

    if-ge v1, v6, :cond_2

    .line 225
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tencent.qqpimsecureforhtc.SERVICE_START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/internal/telephony/TencentSecurityManager$ServiceStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/TencentSecurityManager$ServiceStateReceiver;-><init>(Lcom/android/internal/telephony/TencentSecurityManager;Lcom/android/internal/telephony/TencentSecurityManager$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceStateReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServiceStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public addConnectionListener(Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->getConnectListener()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public bindTencentSecurityManager()Z
    .locals 6

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 149
    .local v2, "success":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-nez v3, :cond_1

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.tencent.qqpimsecure4htc.server"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "serverIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.tencent.qqpimsecureforhtc"

    const-string v5, "com.tencent.qqpimsecureforhtc.aidl.HTCService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    iget-object v3, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 160
    .end local v1    # "serverIntent":Landroid/content/Intent;
    :goto_0
    if-nez v2, :cond_0

    const-string v3, "SMS"

    const-string v4, "[TencentSecurityManager]: bind service failure"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return v2

    .line 155
    :cond_1
    :try_start_1
    const-string v3, "SMS"

    const-string v4, "[TencentSecurityManager]: mService is ready"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SMS"

    const-string v4, "[TencentSecurityManager]: bindTencentSecurityManager"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isBlockedIncomingCall(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "slot"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "optName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "ret":I
    iget-object v3, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-eqz v3, :cond_0

    .line 205
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    invoke-interface {v3, p1, p2, p3}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;->inComingCall(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    :cond_0
    :goto_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TencentSecurityManager]: call blocked> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SMS"

    const-string v4, "incoming call exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isBlockedMsg(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "subId"    # J
    .param p3, "optName"    # Ljava/lang/String;
    .param p4, "phoneNumber"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "protocolType"    # I

    .prologue
    const/4 v8, 0x1

    .line 186
    const/4 v7, 0x0

    .line 188
    .local v7, "ret":I
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-eqz v0, :cond_0

    .line 189
    invoke-static {p1, p2}, Lcom/android/internal/telephony/TencentSecurityManager;->getPhoneSlotTencent(J)I

    move-result v1

    .line 190
    .local v1, "slot":I
    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;->inComingSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 197
    .end local v1    # "slot":I
    :cond_0
    :goto_0
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TencentSecurityManager]: blocked> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-ne v7, v8, :cond_1

    move v0, v8

    :goto_1
    return v0

    .line 192
    :catch_0
    move-exception v6

    .line 193
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 195
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 117
    const-string v2, "SMS"

    const-string v3, "[TencentSecurityManager]: onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p2}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TencentSecurityManager;->notifyOnServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "isEnabled":Z
    iget-object v2, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-eqz v2, :cond_1

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    invoke-interface {v2}, Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;->isEnabled()Z

    move-result v1

    .line 125
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TencentSecurityManager]: isEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    if-nez v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->unbindTencentSecurityManager()V

    .line 137
    :cond_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SMS"

    const-string v3, "isEnabled exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "SMS"

    const-string v3, "[TencentSecurityManager]: mServer is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 141
    const-string v0, "SMS"

    const-string v1, "[TencentSecurityManager]: onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TencentSecurityManager;->notifyOnServiceDisconnected(Landroid/content/ComponentName;)V

    .line 144
    return-void
.end method

.method public removeConnectionListener(Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/internal/telephony/TencentSecurityManager;->getConnectListener()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public unbindTencentSecurityManager()V
    .locals 2

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "SMS"

    const-string v1, "[TencentSecurityManager]: unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/TencentSecurityManager;->mServer:Lcom/tencent/qqpimsecureforhtc/aidl/HTCServer;

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v0, "SMS"

    const-string v1, "[TencentSecurityManager]: mService is released already"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method
