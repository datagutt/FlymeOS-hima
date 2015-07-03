.class final Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;
.super Ljava/util/HashMap;
.source "PDPContextStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PDPContextStateBroadcaster;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x12d

    .line 146
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 147
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "radioTurnedOff"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "unknownPdpDisconnect"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "unknown data error"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x130

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "roamingOn"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x131

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "roamingOff"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x132

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "dataDisabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x133

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "dataEnabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x134

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "dataAttached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x135

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "dataDetached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x136

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "cdmaDataAttached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x137

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "cdmaDataDetached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x138

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "apnChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x139

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "apnSwitched"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "apnFailed"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "restoreDefaultApn"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "pdpReset"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v0, "2GVoiceCallEnded"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "2GVoiceCallStarted"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "psRestrictEnabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x140

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "psRestrictDisabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x141

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "simLoaded"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x142

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "apnTypeDisabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x143

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "apnTypeEnabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x144

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "masterDataDisabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x145

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "masterDataEnabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x146

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "iccRecordsLoaded"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x147

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "cdmaOtaProvisioning"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x148

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "defaultDataDisabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x149

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "defaultDataEnabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "radioOn"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "radioOff"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "radioTechnologyChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "networkOrModemDisconnect"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "dataNetworkAttached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "dataNetworkDetached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x150

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "dataProfileDbChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x151

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "cdmaSubscriptionSourceChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x152

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "tetheredModeChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x153

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "dataConnectionPropertyChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x154

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "nwTypeChanged"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "dependencyMet"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, "dependencyUnmet"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v0, "linkPropertiesChanged"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method
