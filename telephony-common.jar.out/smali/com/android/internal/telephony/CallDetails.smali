.class public Lcom/android/internal/telephony/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0xb

.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_SUBSTATE_CONNECTED_SUSPENDED:I = 0x1

.field public static final CALL_SUBSTATE_UNDEFINED:I = 0x0

.field public static final CALL_TYPE_SMS:I = 0xa

.field public static final CALL_TYPE_UNKNOWN:I = 0x9

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_PAUSE:I = 0x6

.field public static final CALL_TYPE_VT_RESUME:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final EXTRAS_HANDOVER_INFORMATION:Ljava/lang/String; = "handoverInfo"

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRAS_PARENT_CALL_ID:Ljava/lang/String; = "parentCallId"

.field public static final EXTRA_SKIP_SCHEMA_PARSING:Ljava/lang/String; = "skipSchemaParsing"

.field public static final EXTRA_TYPE_IWLAN_TO_LTE_HO_FAIL:I = 0x3

.field public static final EXTRA_TYPE_IWLAN_TO_LTE_HO_SUCCESS:I = 0x4

.field public static final EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL:I = 0x1

.field public static final EXTRA_TYPE_LTE_TO_IWLAN_HO_SUCCESS:I = 0x2

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final VIDEO_PAUSE_STATE_PAUSED:I = 0x1

.field public static final VIDEO_PAUSE_STATE_RESUMED:I = 0x2


# instance fields
.field public call_domain:I

.field public call_type:I

.field public callsubstate:I

.field public extras:[Ljava/lang/String;

.field public localAbility:[Lcom/android/internal/telephony/ServiceStatus;

.field private mVideoPauseState:I

.field public peerAbility:[Lcom/android/internal/telephony/ServiceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "CallDetails"

    sput-object v0, Lcom/android/internal/telephony/CallDetails;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    .line 197
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    .line 203
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 204
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 206
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    .line 197
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    .line 209
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 210
    iput p2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 211
    iput-object p3, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 212
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;)V
    .locals 1
    .param p1, "srcCall"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    .line 197
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    .line 215
    if-eqz p1, :cond_0

    .line 216
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 217
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 218
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    .line 219
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 220
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .line 221
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .line 223
    :cond_0
    return-void
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 232
    .local v1, "extras":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 233
    const/4 v4, 0x0

    .line 246
    :goto_0
    return-object v4

    .line 238
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 240
    if-eqz v1, :cond_1

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v4, v1

    .line 246
    goto :goto_0
.end method


# virtual methods
.method public findKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v3, 0x0

    .line 286
    .local v3, "success":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz p1, :cond_0

    :try_start_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 287
    aget-object v4, p1, v2

    if-eqz v4, :cond_1

    .line 288
    aget-object v4, p1, v2

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "currKey":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    const/4 v3, 0x1

    .line 298
    .end local v0    # "currKey":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 286
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "exc":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/telephony/CallDetails;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getExtras()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    return-object v0
.end method

.method public getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 268
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 269
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "currKey":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 275
    .end local v0    # "currKey":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 267
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getVideoPauseState()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    return v0
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 0
    .param p1, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setVideoPauseState(I)V
    .locals 0
    .param p1, "videoPauseState"    # I

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 325
    const-string v3, ""

    .local v3, "extrasResult":Ljava/lang/String;
    const-string v8, ""

    .local v8, "localSrvAbility":Ljava/lang/String;
    const-string v9, ""

    .line 326
    .local v9, "peerSrvAbility":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v10, v0, v4

    .line 328
    .local v10, "s":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v10    # "s":Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    if-eqz v12, :cond_2

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .local v0, "arr$":[Lcom/android/internal/telephony/ServiceStatus;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lcom/android/internal/telephony/ServiceStatus;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v11, v0, v5

    .line 334
    .local v11, "srv":Lcom/android/internal/telephony/ServiceStatus;
    if-eqz v11, :cond_1

    .line 335
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isValid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v11, Lcom/android/internal/telephony/ServiceStatus;->isValid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->status:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 337
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    if-eqz v12, :cond_1

    .line 338
    iget-object v1, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    .local v1, "arr$":[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_1

    aget-object v2, v1, v4

    .line 339
    .local v2, "at":Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " accTechStatus "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 338
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 333
    .end local v1    # "arr$":[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v2    # "at":Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 346
    .end local v5    # "i$":I
    .end local v11    # "srv":Lcom/android/internal/telephony/ServiceStatus;
    :cond_2
    iget-object v12, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    if-eqz v12, :cond_4

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .restart local v0    # "arr$":[Lcom/android/internal/telephony/ServiceStatus;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lcom/android/internal/telephony/ServiceStatus;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_4

    aget-object v11, v0, v5

    .line 348
    .restart local v11    # "srv":Lcom/android/internal/telephony/ServiceStatus;
    if-eqz v11, :cond_3

    .line 349
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isValid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v11, Lcom/android/internal/telephony/ServiceStatus;->isValid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->status:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 351
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    if-eqz v12, :cond_3

    .line 352
    iget-object v1, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    .restart local v1    # "arr$":[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    array-length v7, v1

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v7, :cond_3

    aget-object v2, v1, v4

    .line 353
    .restart local v2    # "at":Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " accTechStatus "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 347
    .end local v1    # "arr$":[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v2    # "at":Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_3

    .line 360
    .end local v5    # "i$":I
    .end local v11    # "srv":Lcom/android/internal/telephony/ServiceStatus;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " callSubState "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " videoPauseState"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Local Ability "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Peer Ability "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public updateExtrasValueForKey([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 302
    const/4 v3, 0x0

    .line 304
    .local v3, "success":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz p1, :cond_0

    :try_start_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 305
    aget-object v4, p1, v2

    if-eqz v4, :cond_1

    .line 306
    aget-object v4, p1, v2

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "currKey":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    const/4 v3, 0x1

    .line 317
    .end local v0    # "currKey":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 304
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "exc":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/telephony/CallDetails;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
