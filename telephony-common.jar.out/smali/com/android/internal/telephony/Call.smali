.class public abstract Lcom/android/internal/telephony/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Call$1;,
        Lcom/android/internal/telephony/Call$SrvccState;,
        Lcom/android/internal/telephony/Call$State;
    }
.end annotation


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field public isMpty:Z

.field private mConfInfoBundleList:[Landroid/os/Bundle;

.field private mConfUriList:[Ljava/lang/String;

.field public mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsGeneric:Z

.field public mState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "Call"

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->LOG_TAG:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/Call;->isMpty:Z

    .line 77
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    .line 87
    iput-boolean v1, p0, Lcom/android/internal/telephony/Call;->mIsGeneric:Z

    return-void
.end method

.method public static stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .param p0, "dcState"    # Lcom/android/internal/telephony/DriverCall$State;

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/telephony/Call$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 65
    :goto_0
    return-object v0

    .line 61
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 62
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 63
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 64
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 65
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getConfInfoBundleList()[Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mConfInfoBundleList:[Landroid/os/Bundle;

    return-object v0
.end method

.method public getConfUriList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mConfUriList:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract getConnections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end method

.method public getEarliestConnectTime()J
    .locals 10

    .prologue
    .line 228
    const-wide v6, 0x7fffffffffffffffL

    .line 229
    .local v6, "time":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 231
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 232
    const-wide/16 v8, 0x0

    .line 244
    :goto_0
    return-wide v8

    .line 235
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 236
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 239
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    .line 241
    .local v4, "t":J
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    move-wide v6, v4

    .line 235
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v4    # "t":J
    :cond_2
    move-wide v8, v6

    .line 244
    goto :goto_0
.end method

.method public getEarliestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .prologue
    .line 159
    const-wide v8, 0x7fffffffffffffffL

    .line 161
    .local v8, "time":J
    const/4 v1, 0x0

    .line 163
    .local v1, "earliest":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 165
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 166
    const/4 v5, 0x0

    .line 183
    :goto_0
    return-object v5

    .line 169
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "s":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 170
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 173
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    .line 176
    .local v6, "t":J
    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    .line 178
    move-object v1, v0

    .line 179
    move-wide v8, v6

    .line 169
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v6    # "t":J
    :cond_2
    move-object v5, v1

    .line 183
    goto :goto_0
.end method

.method public getEarliestCreateTime()J
    .locals 10

    .prologue
    .line 206
    const-wide v6, 0x7fffffffffffffffL

    .line 208
    .local v6, "time":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 210
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 211
    const-wide/16 v8, 0x0

    .line 223
    :goto_0
    return-wide v8

    .line 214
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 215
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 218
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    .line 220
    .local v4, "t":J
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    move-wide v6, v4

    .line 214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v4    # "t":J
    :cond_2
    move-wide v8, v6

    .line 223
    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 265
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 266
    const/4 v3, 0x0

    .line 287
    :cond_0
    return-object v3

    .line 272
    :cond_1
    const-wide/high16 v8, -0x8000000000000000L

    .line 274
    .local v8, "time":J
    const/4 v3, 0x0

    .line 275
    .local v3, "latest":Lcom/android/internal/telephony/Connection;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "s":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 276
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 277
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    .line 280
    .local v6, "t":J
    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 282
    move-object v3, v0

    .line 283
    move-wide v8, v6

    .line 275
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hangupDueToCollision()V
    .locals 5

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 324
    .local v1, "connections":Ljava/util/List;
    if-nez v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 330
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 331
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/Connection;->setCollided(Z)V

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangupIfAlive()V

    goto :goto_0
.end method

.method public hangupIfAlive()V
    .locals 4

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " hangupIfActive: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConnections()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDialingOrAlerting()Z
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    return v0
.end method

.method public isGeneric()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/internal/telephony/Call;->mIsGeneric:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public setConfInfoBundleList([Landroid/os/Bundle;)V
    .locals 0
    .param p1, "infobundlelist"    # [Landroid/os/Bundle;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mConfInfoBundleList:[Landroid/os/Bundle;

    .line 200
    return-void
.end method

.method public setConfUriList([Ljava/lang/String;)V
    .locals 0
    .param p1, "urilist"    # [Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mConfUriList:[Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setGeneric(Z)V
    .locals 0
    .param p1, "generic"    # Z

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/android/internal/telephony/Call;->mIsGeneric:Z

    .line 303
    return-void
.end method
