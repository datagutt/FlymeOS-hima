.class final Lcom/android/internal/telephony/CallStateBroadcaster$1;
.super Ljava/util/HashMap;
.source "CallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 131
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IDLE"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECTED"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HELD"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATTEMPTING"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ESTABLISHED"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATTEMPTING"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ESTABLISHED"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FAILED"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISCONNECTING"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method
