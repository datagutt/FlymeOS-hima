.class public Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
.super Ljava/lang/Object;
.source "IccCardApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;,
        Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;,
        Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    }
.end annotation


# instance fields
.field public aid:Ljava/lang/String;

.field public app_label:Ljava/lang/String;

.field public app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

.field public perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public pin1_replaced:I

.field public pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 253
    const-string v0, "IccCardApplicationStatus"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method


# virtual methods
.method public AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 149
    packed-switch p1, :pswitch_data_0

    .line 163
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_AppState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_ILLEGAL:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 166
    .local v0, "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_0
    return-object v0

    .line 153
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 154
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 155
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 156
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 157
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 158
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 160
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_IMEI_LOCKED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 140
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 141
    .local v0, "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppTypeFromRILInt: bad RIL_AppType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use APPTYPE_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->loge(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-object v0

    .line 133
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 134
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 135
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 136
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 137
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 138
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 3
    .param p1, "substate"    # I

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 199
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 200
    .local v0, "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersoSubstateFromRILInt: bad substate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use PERSOSUBSTATE_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->loge(Ljava/lang/String;)V

    .line 203
    :goto_0
    return-object v0

    .line 173
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 174
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 175
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 176
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 177
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 178
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 179
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 180
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 181
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 182
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 183
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 184
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 185
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 186
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_d
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 187
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_e
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 188
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 189
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_10
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 190
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_11
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 191
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_12
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 192
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_13
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 193
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_14
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 194
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_15
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 195
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_16
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 196
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_17
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 197
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_18
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 228
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 229
    .local v0, "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PinStateFromRILInt: bad pin state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use PINSTATE_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->loge(Ljava/lang/String;)V

    .line 231
    :goto_0
    return-object v0

    .line 210
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 211
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    .line 213
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 214
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    .line 216
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 217
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    .line 219
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 220
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    .line 222
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 223
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    .line 225
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 226
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v1, v2, :cond_0

    .line 240
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_2

    .line 245
    :cond_1
    const-string v1, ",pin1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ",pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
