.class public Lcom/android/internal/telephony/CellBroadcastHandler;
.super Lcom/android/internal/telephony/WakeLockStateMachine;
.source "CellBroadcastHandler.java"


# static fields
.field protected static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field protected static final mRawUri:Landroid/net/Uri;


# instance fields
.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CellBroadcastHandler;->mRawUri:Landroid/net/Uri;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pdu"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sequence"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CellBroadcastHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 66
    const-string v0, "CellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "debugTag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/WakeLockStateMachine;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mResolver:Landroid/content/ContentResolver;

    .line 72
    return-void
.end method

.method public static makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/CellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 80
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 81
    .local v0, "handler":Lcom/android/internal/telephony/CellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->start()V

    .line 82
    return-object v0
.end method


# virtual methods
.method public handleBroadcastSms(Landroid/content/Intent;Landroid/telephony/SmsCbMessage;Landroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "message"    # Landroid/telephony/SmsCbMessage;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    .line 152
    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "Dispatching emergency SMS CB"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 154
    const-string v0, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 156
    .local v2, "receiverPermission":Ljava/lang/String;
    const/16 v3, 0x11

    .line 163
    .local v3, "appOp":I
    :goto_0
    const-string v0, "message"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    move-object v1, p1

    move-object v4, p3

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 167
    return-void

    .line 158
    .end local v2    # "receiverPermission":Ljava/lang/String;
    .end local v3    # "appOp":I
    :cond_0
    const-string v0, "Dispatching SMS CB"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 159
    const-string v0, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v2, "android.permission.RECEIVE_SMS"

    .line 161
    .restart local v2    # "receiverPermission":Ljava/lang/String;
    const/16 v3, 0x10

    .restart local v3    # "appOp":I
    goto :goto_0
.end method

.method protected handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V
    .locals 9
    .param p1, "message"    # Landroid/telephony/SmsCbMessage;

    .prologue
    const/4 v7, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "Dispatching emergency SMS CB"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 129
    .local v2, "receiverPermission":Ljava/lang/String;
    const/16 v3, 0x11

    .line 136
    .local v3, "appOp":I
    :goto_0
    const-string v0, "message"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 140
    return-void

    .line 131
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "receiverPermission":Ljava/lang/String;
    .end local v3    # "appOp":I
    :cond_0
    const-string v0, "Dispatching SMS CB"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.permission.RECEIVE_SMS"

    .line 134
    .restart local v2    # "receiverPermission":Ljava/lang/String;
    const/16 v3, 0x10

    .restart local v3    # "appOp":I
    goto :goto_0
.end method

.method protected handleHtcGsmCbMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 112
    const-string v0, "why GsmCellBroadcastHandler does not override handleHtcGsmCbMessage?"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->loge(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/telephony/SmsCbMessage;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SmsCbMessage;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 96
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage got object of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->loge(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method
