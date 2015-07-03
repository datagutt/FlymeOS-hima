.class public Lcom/android/internal/telephony/uicc/UsimCSGHandler;
.super Landroid/os/Handler;
.source "UsimCSGHandler.java"


# static fields
.field private static final EVENT_NETWORK_REJECT_IND:I = 0x4

.field private static final EVENT_PERFORM_NETWORK_SCAN_RESP:I = 0x1

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x5

.field private static final EVENT_SET_SYSTEM_SELECTION_PREFERENCE_RESP:I = 0x2

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_STOP_DATA_CONNECTION:I = 0x6

.field private static final EVENT_SYS_INFO_IND:I = 0x3

.field static final INTENT_CSG_10SECS_EXPIRED:Ljava/lang/String; = "com.htc.telephony.intent.action.csg_10secs_expired"

.field static final INTENT_CSG_2HOURS_EXPIRED:Ljava/lang/String; = "com.htc.telephony.intent.action.csg_2hours_expired"

.field private static final Interval_Time_Periodic_Search:I = 0x6ddd00

.field private static final Interval_Time_Retry_Search:I = 0x2710

.field private static final Interval_Time_SEARCH_CSG_NETWORK:I = 0xea60

.field private static final Interval_Time_Stop_Data_Connection:I = 0x2710

.field private static final STATE_CSG_ID_CAMPED:I = 0x3

.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_REQUEST_CSG_ID_CAMP:I = 0x2

.field private static final STATE_REQUEST_CSG_ID_LIST:I = 0x1

.field private static final STATUS_FAIL_CAMP_CSG_NETWORK:I = 0x3

.field private static final STATUS_FAIL_EFOCSGL_EMPTY:I = 0x4

.field private static final STATUS_FAIL_NOT_HOME_NETWORK:I = 0x2

.field private static final STATUS_FAIL_SEARCH_DOING:I = 0x1

.field private static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsimCSGHandler"


# instance fields
.field private APMessage:Landroid/os/Message;

.field CSGAlgorithmState:I

.field CSGIDCount:I

.field private CSGIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private CSGInfoListFromUE:[Ljava/lang/String;

.field private CSGPLMNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field CSGSearchIndex:I

.field private ForbiddenCSGIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final USIM_OCSGL_NOT_PRESENCE:I

.field private final USIM_OCSGL_PRESENCE:I

.field private final USIM_OCSGL_PRESENCE_EMPTY:I

.field am1:Landroid/app/AlarmManager;

.field am2:Landroid/app/AlarmManager;

.field private bManualSearchDoing:Z

.field campHomeNetwork:Z

.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mOCSGLState:I

.field private final mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mRequestStopPDP:Z

.field previousRegisterState:I

.field resetForbiddenCSGIDListCounter:I

.field retryScanCSGID:Z

.field sender10Secs:Landroid/app/PendingIntent;

.field sender2Hours:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "commandsInterface"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->USIM_OCSGL_NOT_PRESENCE:I

    .line 88
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->USIM_OCSGL_PRESENCE_EMPTY:I

    .line 89
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->USIM_OCSGL_PRESENCE:I

    .line 90
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    .line 91
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 107
    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    .line 108
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    .line 109
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    .line 110
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    .line 112
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    .line 113
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    .line 114
    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    .line 115
    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    .line 116
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    .line 117
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    .line 118
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    .line 119
    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    .line 120
    iput v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    .line 121
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    .line 708
    new-instance v1, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;-><init>(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 762
    new-instance v1, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler$2;-><init>(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 125
    const-string v1, "UsimCSGHandler"

    const-string v2, "UsimCSGHandler.constructor "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 127
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    .line 128
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCsgResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCsgRejectId(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1f

    invoke-interface {v1, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    const/4 v1, 0x5

    invoke-virtual {p1, p0, v1, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.telephony.intent.action.csg_2hours_expired"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.telephony.intent.action.csg_10secs_expired"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "IccCardfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "com.htc.telephony.intent.action.csg_2hours_expired"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v5, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->clearAllVariableWhenSIMAbsent()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/UsimCSGHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->triggerPeriodicSearch()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method private checkCSGDataAtSIM(ILjava/lang/String;)Z
    .locals 8
    .param p1, "csgID"    # I
    .param p2, "csgPLMN"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 323
    const-string v3, "UsimCSGHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsimCSGHandler.checkCSGIDAtSIM() : input CSGID is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", CSGPLMN = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 328
    :cond_0
    const-string v3, "UsimCSGHandler"

    const-string v4, "UsimCSGHandler.checkCSGIDAtSIM() : CSGIDList or CSGPLMNList is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 347
    :goto_0
    return v3

    .line 332
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 333
    .local v2, "totalCSGIDAtSIM":I
    const/4 v1, 0x0

    .line 335
    .local v1, "index":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 337
    const-string v6, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsimCSGHandler.checkCSGIDAtSIM() : CSGID is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " of index "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", PLMN"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    .line 340
    goto :goto_0

    .line 342
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 344
    .end local v1    # "index":I
    .end local v2    # "totalCSGIDAtSIM":I
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UsimCSGHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move v3, v5

    .line 347
    goto :goto_0
.end method

.method private checkDataConnectionDisconnected()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 225
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 227
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 228
    .local v0, "ds":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v4, "UsimCSGHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimCSGHandler.checkDataNetworkDisconnected(): data status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v0, v4, :cond_2

    .line 231
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 232
    .local v1, "telephonyService":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 234
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x40

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 237
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    .line 238
    const/4 v2, 0x6

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sendEmptyMessageDelayed(IJ)Z

    move v2, v3

    .line 242
    .end local v1    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_2
    return v2
.end method

.method private checkForbiddenCSGList(I)Z
    .locals 7
    .param p1, "csgID"    # I

    .prologue
    const/4 v4, 0x0

    .line 352
    const-string v3, "UsimCSGHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimCSGHandler.checkForbiddenCSGList() : input CSGID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 357
    const-string v3, "UsimCSGHandler"

    const-string v5, "UsimCSGHandler.checkForbiddenCSGList() : ForbiddenCSGIDList is null"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 376
    :goto_0
    return v3

    .line 361
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 362
    .local v2, "totalCSGIDAtForbiddenList":I
    const/4 v1, 0x0

    .line 364
    .local v1, "index":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 366
    const-string v3, "UsimCSGHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimCSGHandler.checkForbiddenCSGList() : CSGID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne p1, v3, :cond_1

    .line 369
    const/4 v3, 0x1

    goto :goto_0

    .line 371
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    .end local v1    # "index":I
    .end local v2    # "totalCSGIDAtForbiddenList":I
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UsimCSGHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 376
    goto :goto_0
.end method

.method private checkTriggerManualSearch()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 247
    const/4 v1, 0x1

    .line 248
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 249
    .local v0, "mServiceState":Landroid/telephony/ServiceState;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-nez v5, :cond_0

    .line 251
    const-string v5, "UsimCSGHandler"

    const-string v6, "checkTriggerManualSearch(): phone thread is NULL"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return v4

    .line 254
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 255
    if-nez v0, :cond_1

    .line 257
    const-string v5, "UsimCSGHandler"

    const-string v6, "checkTriggerManualSearch(): Service State Thread is NULL"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 261
    .local v3, "serviceState":I
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 262
    .local v2, "serviceRoaming":Z
    const-string v4, "UsimCSGHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTriggerManualSearch(): state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , roaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-nez v3, :cond_2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 265
    const/4 v1, 0x0

    .line 267
    :cond_2
    const-string v4, "UsimCSGHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTriggerManualSearch(): Manual Search Trigger is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 268
    goto :goto_0
.end method

.method private clearAllVariableWhenSIMAbsent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 284
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.clearAllVariableWhenSIMAbsent()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 287
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 291
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    :cond_2
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    .line 303
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    .line 305
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 308
    iput v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    .line 309
    return-void
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 3
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    const/4 v2, 0x0

    .line 486
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.handleSimRefresh() "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    if-nez p1, :cond_0

    .line 489
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.handleSimRefresh() : without input"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_0
    return-void

    .line 493
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 506
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.handleSimRefresh() : unknown operation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 501
    :cond_1
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    .line 502
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    goto :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isCommandExceptionCSGScanRetry(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 512
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NW_CSG_SCAN_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private replyManualSearchResult(I)V
    .locals 3
    .param p1, "bSuccess"    # I

    .prologue
    .line 457
    const-string v0, "UsimCSGHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimCSGHandler.replyManualSearchResult() : result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestStopPDP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mRequestStopPDP:Z

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 467
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.replyManualSearchResult() : Manual search End "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    return-void
.end method

.method private requestCSGIDList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 436
    const-string v0, "UsimCSGHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimCSGHandler.requestCSGIDList() : search state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-nez v0, :cond_1

    .line 440
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x6ddd00

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 445
    :cond_0
    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCsgAvailableNetworks(Landroid/os/Message;)V

    .line 453
    :goto_0
    return-void

    .line 450
    :cond_1
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.requestCSGIDList() : error algorithm state "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto :goto_0
.end method

.method private requestCampCSGID()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 380
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() : search state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 384
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() : CSGID count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v2, v3, :cond_5

    .line 387
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 391
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() :  PLMN = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CSGID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,RAT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 397
    .local v0, "csgID":I
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->checkForbiddenCSGList(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 399
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->checkCSGDataAtSIM(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 402
    .local v1, "rat":I
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCsgNetworkSelection(Ljava/lang/String;IILandroid/os/Message;)V

    .line 404
    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    .line 405
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() (int):  CSG ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RAT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v0    # "csgID":I
    .end local v1    # "rat":I
    :goto_1
    return-void

    .line 410
    .restart local v0    # "csgID":I
    :cond_1
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() : CSG ID ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) doesn\'t exist at SIM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    goto/16 :goto_0

    .line 416
    :cond_2
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() : CSG CSGID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    goto/16 :goto_0

    .line 422
    .end local v0    # "csgID":I
    :cond_3
    const-string v2, "UsimCSGHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimCSGHandler.requestCampCSGID() : necessary string is null , index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    goto/16 :goto_0

    .line 429
    :cond_4
    const-string v2, "UsimCSGHandler"

    const-string v3, "UsimCSGHandler.requestCampCSGID() : error algorithm state "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto :goto_1
.end method

.method private resetSearchVariable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.resetSearchVariable()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    .line 278
    :cond_0
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    .line 279
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    .line 280
    iput v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    .line 281
    return-void
.end method

.method private searchIsFailure()V
    .locals 2

    .prologue
    .line 473
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.searchIsFailure() "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    .line 477
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 480
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->replyManualSearchResult(I)V

    .line 482
    :cond_0
    return-void
.end method

.method private triggerPeriodicSearch()V
    .locals 2

    .prologue
    .line 313
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerPeriodicSearch() "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 316
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerPeriodicSearch() : don\'t need periodic search due to OCSGL is empty "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.clear()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->clearAllVariableWhenSIMAbsent()V

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 209
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 214
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetCsgResult(Landroid/os/Handler;)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetCsgRejectId(Landroid/os/Handler;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mIccCardIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 526
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage + msg is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 704
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unexpected message, what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 529
    :sswitch_0
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-ne v6, v10, :cond_5

    .line 531
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 532
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 534
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_PERFORM_NETWORK_SCAN_RESP: exception is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->isCommandExceptionCSGScanRetry(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 537
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_PERFORM_NETWORK_SCAN_RESP: retry flag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    if-nez v6, :cond_3

    .line 540
    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    .line 541
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    if-eqz v6, :cond_0

    .line 542
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am2:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long/2addr v8, v10

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender10Secs:Landroid/app/PendingIntent;

    invoke-virtual {v6, v12, v8, v9, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 550
    :cond_1
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    .line 551
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 553
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGInfoListFromUE:[Ljava/lang/String;

    array-length v6, v6

    div-int/lit8 v6, v6, 0x5

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    .line 554
    iput v9, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    .line 555
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v6, v7, :cond_2

    .line 557
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCampCSGID()V

    goto :goto_0

    .line 562
    :cond_2
    const-string v6, "UsimCSGHandler"

    const-string v7, "EVENT_PERFORM_NETWORK_SCAN_RESP : CSG ID count is 0"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto/16 :goto_0

    .line 567
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    const-string v6, "UsimCSGHandler"

    const-string v7, "EVENT_PERFORM_NETWORK_SCAN_RESP : response data is NULL"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 573
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_5
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_PERFORM_NETWORK_SCAN_RESP : search state not corrrect and skip this result , search state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 579
    :sswitch_1
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-ne v6, v12, :cond_7

    .line 581
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 582
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 584
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the result of camp network command failure : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    .line 587
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v6, v7, :cond_8

    .line 589
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCampCSGID()V

    goto/16 :goto_0

    .line 595
    :cond_6
    const-string v6, "UsimCSGHandler"

    const-string v7, "the result of camp network  : no failure"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 601
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_7
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SET_SYSTEM_SELECTION_PREFERENCE_RESP : search state not corrrect and skip this result , search state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto/16 :goto_0

    .line 607
    :sswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v4, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/ServiceState;

    .line 608
    .local v4, "state":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 609
    .local v3, "registerState":I
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SERVICE_STATE_CHANGED (begin): previousState is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and State = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", campHomeNetwork = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-eqz v3, :cond_b

    .line 613
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    if-eqz v6, :cond_9

    .line 615
    const-string v6, "UsimCSGHandler"

    const-string v7, "No or Limited Service then stop the timer of periodic search"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->am1:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->sender2Hours:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 618
    :cond_9
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    .line 631
    :cond_a
    :goto_2
    iput v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    .line 632
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SERVICE_STATE_CHANGED (end): previousState is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and State = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", campHomeNetwork = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 622
    :cond_b
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    if-eq v6, v10, :cond_c

    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->previousRegisterState:I

    if-ne v6, v12, :cond_a

    .line 624
    :cond_c
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    if-nez v6, :cond_a

    .line 626
    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    .line 627
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->triggerPeriodicSearch()V

    goto :goto_2

    .line 637
    .end local v3    # "registerState":I
    .end local v4    # "state":Landroid/telephony/ServiceState;
    :sswitch_3
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    if-ne v6, v12, :cond_e

    .line 639
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 640
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    aget v2, v6, v9

    .line 641
    .local v2, "isCampCSGNetwork":I
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the result of camp CSG network  is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    if-nez v2, :cond_d

    .line 645
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    .line 646
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    if-ne v6, v10, :cond_0

    .line 648
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 649
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->replyManualSearchResult(I)V

    goto/16 :goto_0

    .line 655
    :cond_d
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    .line 657
    iget v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGSearchIndex:I

    iget v7, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDCount:I

    if-ge v6, v7, :cond_f

    .line 659
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCampCSGID()V

    goto/16 :goto_0

    .line 666
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "isCampCSGNetwork":I
    :cond_e
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SYS_INFO_IND : search state not corrrect and skip this result , search state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V

    goto/16 :goto_0

    .line 672
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 673
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    aget v1, v6, v9

    .line 675
    .local v1, "forbiddenCSGID":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 677
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the reject CSG ID  is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 683
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "forbiddenCSGID":I
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 684
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string v6, "UsimCSGHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sim REFRESH with exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 687
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_0

    .line 692
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const-string v6, "UsimCSGHandler"

    const-string v7, "Stop Data connection timeout "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 695
    .local v5, "telephonyService":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_10

    .line 696
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v6, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 698
    :cond_10
    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 699
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    goto/16 :goto_0

    .line 527
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_2
        0x6 -> :sswitch_6
        0x1f -> :sswitch_5
    .end sparse-switch
.end method

.method public setCSGIDList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "Lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.setCSGIDList()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGIDList:Ljava/util/ArrayList;

    .line 190
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->campHomeNetwork:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->triggerPeriodicSearch()V

    .line 192
    :cond_0
    return-void
.end method

.method public setCSGPLMNList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "Lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.setCSGPLMNList()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGPLMNList:Ljava/util/ArrayList;

    .line 198
    return-void
.end method

.method public setOCSGLState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 182
    const-string v0, "UsimCSGHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimCSGHandler.setOCSGLState() : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    .line 184
    return-void
.end method

.method public triggerManualSearch(Landroid/os/Message;)I
    .locals 4
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 148
    iget v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mOCSGLState:I

    if-ne v2, v0, :cond_0

    .line 150
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerManualSearch() : EFOCSGL is empty then no search"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x4

    .line 177
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->checkTriggerManualSearch()Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 155
    const-string v0, "UsimCSGHandler"

    const-string v1, "UsimCSGHandler.triggerManualSearch() : Not camp ATT HOME network then no search"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x2

    goto :goto_0

    .line 158
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    if-eqz v2, :cond_2

    .line 160
    const-string v1, "UsimCSGHandler"

    const-string v2, "UsimCSGHandler.triggerManualSearch() : manual search is doing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :cond_2
    const-string v2, "UsimCSGHandler"

    const-string v3, "UsimCSGHandler.triggerManualSearch() : Manual search START"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V

    .line 166
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->APMessage:Landroid/os/Message;

    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->checkDataConnectionDisconnected()Z

    move-result v2

    if-ne v2, v0, :cond_3

    .line 170
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V

    :goto_1
    move v0, v1

    .line 177
    goto :goto_0

    .line 175
    :cond_3
    const-string v0, "UsimCSGHandler"

    const-string v2, "UsimCSGHandler.triggerManualSearch() : Need disconnecting Data Network first"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
