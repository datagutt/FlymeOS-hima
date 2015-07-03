.class public Lcom/sprint/net/lte/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/lte/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field mApnsInUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnsInUse;",
            ">;"
        }
    .end annotation
.end field

.field mBSID:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mRsrp:Ljava/lang/String;

.field mRsrq:Ljava/lang/String;

.field mRssi:Ljava/lang/String;

.field mTxPwr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sprint/net/lte/ConnectionInfo$1;

    invoke-direct {v0}, Lcom/sprint/net/lte/ConnectionInfo$1;-><init>()V

    sput-object v0, Lcom/sprint/net/lte/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "LteConnectionInfo"

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    const-string v1, "Constructor+"

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionInfo;->_getTxPwr()V

    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionInfo;->_getApnsInUse()V

    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionInfo;->_getBSID()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "Constructor-"

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "LteConnectionInfo"

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    sget-object v2, Lcom/sprint/net/lte/ApnsInUse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFromParcel: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/lte/ConnectionInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprint/net/lte/ConnectionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _getApnsInUse()V
    .locals 30

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/net/lte/ConnectionInfo;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "connectivity"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-string v26, "getAllNetworkInfo"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-string v26, "getLinkProperties"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-string v26, "isNetworkTypeMobile"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/net/NetworkInfo;

    move-object/from16 v0, v25

    check-cast v0, [Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    move-object/from16 v6, v22

    array-length v0, v6

    move/from16 v20, v0

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    move/from16 v0, v20

    if-ge v13, v0, :cond_6

    aget-object v14, v6, v13

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Boolean;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v25

    if-nez v25, :cond_0

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v25

    sget-object v26, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4

    :cond_0
    const/4 v10, 0x0

    new-instance v19, Lcom/sprint/net/lte/ApnsInUse;

    invoke-direct/range {v19 .. v19}, Lcom/sprint/net/lte/ApnsInUse;-><init>()V

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_2

    const-string v25, ""

    :goto_1
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sprint/net/lte/ApnsInUse;

    iget-object v0, v5, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    goto :goto_1

    :cond_3
    if-eqz v10, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto/16 :goto_0

    :cond_5
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v9, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/LinkProperties;

    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/InetAddress;

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    const-string v25, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-static/range {v16 .. v16}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v7

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "_getApnsInUse: error get method "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    const-string/jumbo v25, "ril.multiple.pdn.ip.address"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "_getApnsInUse: ril.multiple.pdn.ip.address="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    if-eqz v3, :cond_b

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_b

    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    new-instance v19, Lcom/sprint/net/lte/ApnsInUse;

    invoke-direct/range {v19 .. v19}, Lcom/sprint/net/lte/ApnsInUse;-><init>()V

    const/16 v25, 0x0

    aget-object v25, v24, v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    const/4 v11, 0x1

    :goto_5
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_a

    :try_start_1
    aget-object v25, v24, v11

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_9

    aget-object v25, v24, v11

    invoke-static/range {v25 .. v25}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_9
    :try_start_3
    aget-object v25, v24, v11

    invoke-static/range {v25 .. v25}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v7

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "_getApnsInUse: e="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "_getApnsInUse: result="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private _getBSID()V
    .locals 3

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    return-void
.end method

.method private _getTxPwr()V
    .locals 7

    :try_start_0
    const-string v2, "getTxRxPowerInfo"

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "networktype"

    const/16 v6, 0xd

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    aget v6, v4, v6

    div-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dBm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v5, "TxPwr txrxinfo null"

    invoke-direct {p0, v5}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error get method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v5, "TxPwr result empty"

    invoke-direct {p0, v5}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LteConnectionInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApnsInUse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnsInUse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    return-object v0
.end method

.method public getBSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    return-object v0
.end method

.method public getRsrp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    return-object v0
.end method

.method public getRsrq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    return-object v0
.end method

.method public getSib(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTxPwr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    return-object v0
.end method

.method public setBSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    return-void
.end method

.method public setRsrp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    return-void
.end method

.method public setRsrq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    return-void
.end method

.method public setRssi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRssi:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mRsrq:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mTxPwr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnsInUse:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeToParcel: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/ConnectionInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
