.class Lcom/android/internal/telephony/gsm/GsmCall;
.super Lcom/android/internal/telephony/Call;
.source "GsmCall.java"


# instance fields
.field mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 63
    return-void
.end method


# virtual methods
.method attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 120
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->isMpty:Z

    iget-boolean v1, p2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    if-eq v0, v1, :cond_0

    .line 122
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->isMpty:Z

    .line 126
    :cond_0
    return-void
.end method

.method attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 133
    return-void
.end method

.method clearDisconnected()V
    .locals 4

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 238
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 240
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 237
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 245
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 246
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 248
    :cond_2
    return-void
.end method

.method connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 140
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 143
    const/4 v0, 0x1

    .line 145
    .local v0, "hasOnlyDisconnectedConnections":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    .line 149
    const/4 v0, 0x0

    .line 154
    :cond_0
    if-eqz v0, :cond_2

    .line 155
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 156
    const/4 v3, 0x1

    .line 160
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :goto_1
    return v3

    .line 145
    .restart local v0    # "hasOnlyDisconnectedConnections":Z
    .restart local v1    # "i":I
    .restart local v2    # "s":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 171
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->isMpty:Z

    .line 176
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V

    .line 103
    return-void
.end method

.method isFull()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->isMpty:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 90
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method onHangupLocal()V
    .locals 4

    .prologue
    .line 221
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 222
    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 224
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 226
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "changed":Z
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 185
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 186
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 187
    const/4 v0, 0x1

    .line 191
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->isMpty:Z

    iget-boolean v3, p2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    if-eq v2, v3, :cond_1

    .line 193
    iget-boolean v2, p2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->isMpty:Z

    .line 194
    const/4 v0, 0x1

    .line 199
    :cond_1
    return v0
.end method
