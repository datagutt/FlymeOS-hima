.class public Lcom/android/internal/telephony/CallSecurityManager;
.super Ljava/lang/Object;
.source "CallSecurityManager.java"

# interfaces
.implements Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallSecurityManager$Result;
    }
.end annotation


# static fields
.field private static final DO_NOT_DISTURB_KEY:Ljava/lang/String; = "htc_dnd_feature_enabled"

.field public static final ENABLE_SECURITY_CENTER:Z

.field private static final LOG_TAG:Ljava/lang/String; = "CallSecurityManager"

.field private static final SKIP_INTERVAL:J = 0x3e8L

.field private static final SUPPORT_DO_NOT_DISTURB:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialerConnection:Landroid/content/ServiceConnection;

.field private mDialerService:Ljava/lang/Object;

.field private mTencentMgr:Lcom/android/internal/telephony/TencentSecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isChinaRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCMCCSku()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/CallSecurityManager;->ENABLE_SECURITY_CENTER:Z

    .line 61
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallSecurityManager;->SUPPORT_DO_NOT_DISTURB:Z

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/CallSecurityManager;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/android/internal/telephony/TencentSecurityManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/TencentSecurityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallSecurityManager;->mTencentMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/CallSecurityManager;->mTencentMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TencentSecurityManager;->addConnectionListener(Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/CallSecurityManager;->mTencentMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TencentSecurityManager;->bindTencentSecurityManager()Z

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/CallSecurityManager;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallSecurityManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/CallSecurityManager;->mDialerService:Ljava/lang/Object;

    return-object p1
.end method

.method private getOperatorName(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 231
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getOperatorInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 233
    .local v1, "operatorInfo":Lcom/android/internal/telephony/gsm/OperatorInfo;
    iget-boolean v2, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 234
    .local v2, "showPlmn":Z
    iget-boolean v3, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 235
    .local v3, "showSpn":Z
    const-string v0, ""

    .line 236
    .local v0, "alpha":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 237
    const-string v4, "%s(%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 239
    const-string v4, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 241
    const-string v4, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_3
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 243
    const-string v4, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSlot(Lcom/android/internal/telephony/Phone;)I
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 258
    const/4 v1, 0x1

    .line 259
    .local v1, "slotId":I
    if-eqz p1, :cond_2

    .line 260
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 261
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 262
    :cond_0
    const/4 v0, 0x0

    .line 267
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 270
    .end local v0    # "phoneId":I
    :cond_2
    return v1
.end method

.method private isBlocked(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 186
    const/4 v2, 0x0

    .line 188
    .local v2, "needToHangup":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/CallSecurityManager;->mTencentMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    if-eqz v3, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallSecurityManager;->isHtcBlocked(Ljava/lang/String;)Z

    move-result v1

    .line 190
    .local v1, "htcConsumed":Z
    const-string v3, "CallSecurityManager"

    const-string v4, "QQ go check security"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-nez v1, :cond_0

    .line 193
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/CallSecurityManager;->isSecurityCenterBlocked(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 200
    .end local v1    # "htcConsumed":Z
    :cond_0
    :goto_0
    return v2

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CallSecurityManager"

    const-string v4, "QQ security check error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isHtcBlocked(Ljava/lang/String;)Z
    .locals 8
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, "htcConsumed":Z
    iget-object v5, p0, Lcom/android/internal/telephony/CallSecurityManager;->mDialerService:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 207
    :try_start_0
    const-string v5, "com.htc.service.dialer.IDialerService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 208
    .local v1, "cls":Ljava/lang/Class;
    const-string v5, "needToHangupCall"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 209
    .local v4, "methodNeedToHangupCall":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    .line 210
    .local v0, "arglist":[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object p1, v0, v5

    .line 211
    iget-object v5, p0, Lcom/android/internal/telephony/CallSecurityManager;->mDialerService:Ljava/lang/Object;

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 218
    .end local v0    # "arglist":[Ljava/lang/Object;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v4    # "methodNeedToHangupCall":Ljava/lang/reflect/Method;
    :goto_0
    const-string v5, "CallSecurityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QQ htc ate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    return v3

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "CallSecurityManager"

    const-string v6, "fail to invoke"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isSecurityCenterBlocked(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/CallSecurityManager;->mTencentMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallSecurityManager;->getSlot(Lcom/android/internal/telephony/Phone;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallSecurityManager;->getOperatorName(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/telephony/TencentSecurityManager;->isBlockedIncomingCall(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private releaseDialerService()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/CallSecurityManager;->mDialerConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/CallSecurityManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/CallSecurityManager;->mDialerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallSecurityManager;->mDialerConnection:Landroid/content/ServiceConnection;

    .line 127
    :cond_0
    return-void
.end method

.method private shouldSkipCompare(Lcom/android/internal/telephony/CallSecurityManager$Result;Lcom/android/internal/telephony/CallSecurityManager$Result;)Z
    .locals 6
    .param p1, "previous"    # Lcom/android/internal/telephony/CallSecurityManager$Result;
    .param p2, "current"    # Lcom/android/internal/telephony/CallSecurityManager$Result;

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "skip":Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    iget-boolean v1, p1, Lcom/android/internal/telephony/CallSecurityManager$Result;->blocked:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/CallSecurityManager$Result;->number:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/telephony/CallSecurityManager$Result;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lcom/android/internal/telephony/CallSecurityManager$Result;->createTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    iget-wide v4, p2, Lcom/android/internal/telephony/CallSecurityManager$Result;->createTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private skipCheck()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    iget-object v2, p0, Lcom/android/internal/telephony/CallSecurityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_dnd_feature_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public isBlockedBySecurityManager(Ljava/util/List;Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CallSecurityManager$Result;)Lcom/android/internal/telephony/CallSecurityManager$Result;
    .locals 6
    .param p1, "pollCalls"    # Ljava/util/List;
    .param p2, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "previousResult"    # Lcom/android/internal/telephony/CallSecurityManager$Result;

    .prologue
    .line 136
    new-instance v3, Lcom/android/internal/telephony/CallSecurityManager$Result;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/CallSecurityManager$Result;-><init>(Lcom/android/internal/telephony/CallSecurityManager;)V

    .line 137
    .local v3, "result":Lcom/android/internal/telephony/CallSecurityManager$Result;
    sget-boolean v4, Lcom/android/internal/telephony/CallSecurityManager;->ENABLE_SECURITY_CENTER:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/CallSecurityManager;->skipCheck()Z

    move-result v4

    if-nez v4, :cond_1

    .line 138
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, p2, :cond_1

    if-eqz p1, :cond_1

    .line 139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 140
    .local v0, "callSize":I
    const/4 v1, 0x0

    .local v1, "curDC":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 141
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DriverCall;

    .line 142
    .local v2, "dc":Lcom/android/internal/telephony/DriverCall;
    sget-object v4, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    iget-object v5, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    iget-object v5, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v4, v5, :cond_3

    .line 144
    :cond_0
    iget-object v4, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallSecurityManager$Result;->number:Ljava/lang/String;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/telephony/CallSecurityManager$Result;->createTime:J

    .line 147
    invoke-direct {p0, p4, v3}, Lcom/android/internal/telephony/CallSecurityManager;->shouldSkipCompare(Lcom/android/internal/telephony/CallSecurityManager$Result;Lcom/android/internal/telephony/CallSecurityManager$Result;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    iget-boolean v4, p4, Lcom/android/internal/telephony/CallSecurityManager$Result;->blocked:Z

    iput-boolean v4, v3, Lcom/android/internal/telephony/CallSecurityManager$Result;->blocked:Z

    .line 158
    .end local v0    # "callSize":I
    .end local v1    # "curDC":I
    .end local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_1
    :goto_1
    return-object v3

    .line 150
    .restart local v0    # "callSize":I
    .restart local v1    # "curDC":I
    .restart local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_2
    iget-object v4, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-direct {p0, v4, p3}, Lcom/android/internal/telephony/CallSecurityManager;->isBlocked(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/CallSecurityManager$Result;->blocked:Z

    goto :goto_1

    .line 140
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isBlockedBySecurityManager(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 181
    sget-boolean v0, Lcom/android/internal/telephony/CallSecurityManager;->ENABLE_SECURITY_CENTER:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/CallSecurityManager;->skipCheck()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallSecurityManager;->isBlocked(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/CallSecurityManager;->mDialerConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/android/internal/telephony/CallSecurityManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CallSecurityManager$1;-><init>(Lcom/android/internal/telephony/CallSecurityManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CallSecurityManager;->mDialerConnection:Landroid/content/ServiceConnection;

    .line 104
    const-string v1, "CallSecurityManager"

    const-string v2, "QQ go bind dialerservice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.dialer.DIALER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "dialerServiceIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.contacts"

    const-string v3, "com.htc.htcdialer.DialerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/CallSecurityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/CallSecurityManager;->mDialerConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x5

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const-string v1, "CallSecurityManager"

    const-string v2, "bind DialerService fail !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "dialerServiceIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/CallSecurityManager;->releaseDialerService()V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/CallSecurityManager;->mTencentMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/CallSecurityManager;->mTencentMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TencentSecurityManager;->removeConnectionListener(Lcom/android/internal/telephony/TencentSecurityManager$ServiceConnectionListener;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallSecurityManager;->mTencentMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    .line 120
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/CallSecurityManager;->releaseDialerService()V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallSecurityManager;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 132
    return-void
.end method
