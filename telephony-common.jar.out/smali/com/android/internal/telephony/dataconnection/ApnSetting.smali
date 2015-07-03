.class public Lcom/android/internal/telephony/dataconnection/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/ApnSetting$RatType;
    }
.end annotation


# static fields
.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"

.field static final V3_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV3\\]\\s*"


# instance fields
.field public final apn:Ljava/lang/String;

.field public final authType:I

.field public final bearer:I

.field public final carrier:Ljava/lang/String;

.field public final carrierEnabled:Z

.field public dns_pri:Ljava/lang/String;

.field public dns_sec:Ljava/lang/String;

.field public htc_bearer:Ljava/lang/String;

.field public final id:I

.field public mApnProfileID:I

.field public final maxConns:I

.field public final maxConnsTime:I

.field public final mmsPort:Ljava/lang/String;

.field public final mmsProxy:Ljava/lang/String;

.field public final mmsc:Ljava/lang/String;

.field public final modemCognitive:Z

.field public final mtu:I

.field public final mvnoMatchData:Ljava/lang/String;

.field public final mvnoType:Ljava/lang/String;

.field public final numeric:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:Ljava/lang/String;

.field public final profileId:I

.field public final protocol:Ljava/lang/String;

.field public final proxy:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public types:[Ljava/lang/String;

.field public final user:Ljava/lang/String;

.field public final waitTime:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I
    .param p18, "profileId"    # I
    .param p19, "modemCognitive"    # Z
    .param p20, "maxConns"    # I
    .param p21, "waitTime"    # I
    .param p22, "maxConnsTime"    # I
    .param p23, "mtu"    # I
    .param p24, "mvnoType"    # Ljava/lang/String;
    .param p25, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnProfileID:I

    .line 134
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 135
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 138
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 139
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 140
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 141
    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 142
    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 143
    iput-object p10, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 145
    move/from16 v0, p12

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 146
    move-object/from16 v0, p13

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v0, p13

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, p13, v1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 152
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    .line 153
    move/from16 v0, p17

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    .line 154
    move/from16 v0, p18

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 155
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    .line 156
    move/from16 v0, p20

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    .line 157
    move/from16 v0, p21

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    .line 158
    move/from16 v0, p22

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    .line 159
    move/from16 v0, p23

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    .line 160
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I
    .param p18, "profileId"    # I
    .param p19, "modemCognitive"    # Z
    .param p20, "maxConns"    # I
    .param p21, "waitTime"    # I
    .param p22, "maxConnsTime"    # I
    .param p23, "mtu"    # I
    .param p24, "mvnoType"    # Ljava/lang/String;
    .param p25, "mvnoMatchData"    # Ljava/lang/String;
    .param p26, "apnProfileID"    # I
    .param p27, "dns_pri"    # Ljava/lang/String;
    .param p28, "dns_sec"    # Ljava/lang/String;
    .param p29, "htc_bearer"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnProfileID:I

    .line 173
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 174
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 176
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 177
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 178
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 179
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 180
    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 181
    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 182
    iput-object p10, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 183
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 184
    move/from16 v0, p12

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 187
    move-object/from16 v0, p13

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v0, p13

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, p13, v1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 194
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    .line 195
    move/from16 v0, p17

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    .line 196
    move/from16 v0, p18

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 197
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    .line 198
    move/from16 v0, p20

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    .line 199
    move/from16 v0, p21

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    .line 200
    move/from16 v0, p22

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    .line 201
    move/from16 v0, p23

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    .line 202
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 205
    move/from16 v0, p26

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnProfileID:I

    .line 206
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_pri:Ljava/lang/String;

    .line 207
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_sec:Ljava/lang/String;

    .line 208
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->htc_bearer:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 2
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnProfileID:I

    .line 219
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 220
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 221
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 222
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 223
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 224
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 225
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 226
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 228
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 229
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 230
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 231
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 232
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 233
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    .line 234
    iget-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    .line 235
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 236
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 237
    iget-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    .line 238
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    .line 239
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    .line 240
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    .line 241
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnProfileID:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnProfileID:I

    .line 242
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    .line 243
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 245
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_pri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_pri:Ljava/lang/String;

    .line 246
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_sec:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_sec:Ljava/lang/String;

    .line 247
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->htc_bearer:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->htc_bearer:Ljava/lang/String;

    .line 249
    return-void

    .line 222
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    goto :goto_0
.end method

.method public static arrayFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v6, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 388
    :cond_0
    return-object v6

    .line 381
    :cond_1
    const-string v7, "\\s*;\\s*"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "apnStrings":[Ljava/lang/String;
    move-object v3, v2

    .local v3, "arr$":[Ljava/lang/String;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v3, v4

    .line 383
    .local v1, "apnString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 384
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_2

    .line 385
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 30
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 282
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 362
    :goto_0
    return-object v1

    .line 286
    :cond_0
    const-string v1, "^\\[ApnSettingV3\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    const/16 v29, 0x3

    .line 288
    .local v29, "version":I
    const-string v1, "^\\[ApnSettingV3\\]\\s*"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 296
    :goto_1
    const-string v1, "\\s*,\\s*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 297
    .local v27, "a":[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v1, v0

    const/16 v2, 0xe

    if-ge v1, v2, :cond_3

    .line 298
    const/4 v1, 0x0

    goto :goto_0

    .line 289
    .end local v27    # "a":[Ljava/lang/String;
    .end local v29    # "version":I
    :cond_1
    const-string v1, "^\\[ApnSettingV2\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    const/16 v29, 0x2

    .line 291
    .restart local v29    # "version":I
    const-string v1, "^\\[ApnSettingV2\\]\\s*"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 293
    .end local v29    # "version":I
    :cond_2
    const/16 v29, 0x1

    .restart local v29    # "version":I
    goto :goto_1

    .line 303
    .restart local v27    # "a":[Ljava/lang/String;
    :cond_3
    const/16 v1, 0xc

    :try_start_0
    aget-object v1, v27, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 311
    .local v13, "authType":I
    :goto_2
    const/16 v18, 0x0

    .line 312
    .local v18, "bearer":I
    const/16 v19, 0x0

    .line 313
    .local v19, "profileId":I
    const/16 v20, 0x0

    .line 314
    .local v20, "modemCognitive":Z
    const/16 v21, 0x0

    .line 315
    .local v21, "maxConns":I
    const/16 v22, 0x0

    .line 316
    .local v22, "waitTime":I
    const/16 v23, 0x0

    .line 317
    .local v23, "maxConnsTime":I
    const/16 v24, 0x0

    .line 318
    .local v24, "mtu":I
    const-string v25, ""

    .line 319
    .local v25, "mvnoType":Ljava/lang/String;
    const-string v26, ""

    .line 320
    .local v26, "mvnoMatchData":Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, v29

    if-ne v0, v1, :cond_5

    .line 321
    move-object/from16 v0, v27

    array-length v1, v0

    add-int/lit8 v1, v1, -0xd

    new-array v14, v1, [Ljava/lang/String;

    .line 322
    .local v14, "typeArray":[Ljava/lang/String;
    const/16 v1, 0xd

    const/4 v2, 0x0

    move-object/from16 v0, v27

    array-length v3, v0

    add-int/lit8 v3, v3, -0xd

    move-object/from16 v0, v27

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    const-string v15, "IP"

    .line 324
    .local v15, "protocol":Ljava/lang/String;
    const-string v16, "IP"

    .line 325
    .local v16, "roamingProtocol":Ljava/lang/String;
    const/16 v17, 0x1

    .line 326
    .local v17, "carrierEnabled":Z
    const/16 v18, 0x0

    .line 362
    :cond_4
    :goto_3
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    aget-object v4, v27, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v27, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v27, v4

    const/4 v5, 0x1

    aget-object v5, v27, v5

    const/4 v6, 0x2

    aget-object v6, v27, v6

    const/4 v7, 0x3

    aget-object v7, v27, v7

    const/4 v8, 0x7

    aget-object v8, v27, v8

    const/16 v9, 0x8

    aget-object v9, v27, v9

    const/16 v10, 0x9

    aget-object v10, v27, v10

    const/4 v11, 0x4

    aget-object v11, v27, v11

    const/4 v12, 0x5

    aget-object v12, v27, v12

    invoke-direct/range {v1 .. v26}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    .end local v13    # "authType":I
    .end local v14    # "typeArray":[Ljava/lang/String;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "roamingProtocol":Ljava/lang/String;
    .end local v17    # "carrierEnabled":Z
    .end local v18    # "bearer":I
    .end local v19    # "profileId":I
    .end local v20    # "modemCognitive":Z
    .end local v21    # "maxConns":I
    .end local v22    # "waitTime":I
    .end local v23    # "maxConnsTime":I
    .end local v24    # "mtu":I
    .end local v25    # "mvnoType":Ljava/lang/String;
    .end local v26    # "mvnoMatchData":Ljava/lang/String;
    :catch_0
    move-exception v28

    .line 305
    .local v28, "e":Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    .restart local v13    # "authType":I
    goto :goto_2

    .line 328
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "bearer":I
    .restart local v19    # "profileId":I
    .restart local v20    # "modemCognitive":Z
    .restart local v21    # "maxConns":I
    .restart local v22    # "waitTime":I
    .restart local v23    # "maxConnsTime":I
    .restart local v24    # "mtu":I
    .restart local v25    # "mvnoType":Ljava/lang/String;
    .restart local v26    # "mvnoMatchData":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v27

    array-length v1, v0

    const/16 v2, 0x12

    if-ge v1, v2, :cond_6

    .line 329
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 331
    :cond_6
    const/16 v1, 0xd

    aget-object v1, v27, v1

    const-string v2, "\\s*\\|\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 332
    .restart local v14    # "typeArray":[Ljava/lang/String;
    const/16 v1, 0xe

    aget-object v15, v27, v1

    .line 333
    .restart local v15    # "protocol":Ljava/lang/String;
    const/16 v1, 0xf

    aget-object v16, v27, v1

    .line 334
    .restart local v16    # "roamingProtocol":Ljava/lang/String;
    const/16 v1, 0x10

    aget-object v1, v27, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 336
    .restart local v17    # "carrierEnabled":Z
    const/16 v1, 0x11

    :try_start_1
    aget-object v1, v27, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v18

    .line 340
    :goto_4
    move-object/from16 v0, v27

    array-length v1, v0

    const/16 v2, 0x16

    if-le v1, v2, :cond_7

    .line 341
    const/16 v1, 0x13

    aget-object v1, v27, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 343
    const/16 v1, 0x12

    :try_start_2
    aget-object v1, v27, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 344
    const/16 v1, 0x14

    aget-object v1, v27, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 345
    const/16 v1, 0x15

    aget-object v1, v27, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 346
    const/16 v1, 0x16

    aget-object v1, v27, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v23

    .line 350
    :cond_7
    :goto_5
    move-object/from16 v0, v27

    array-length v1, v0

    const/16 v2, 0x17

    if-le v1, v2, :cond_8

    .line 352
    const/16 v1, 0x17

    :try_start_3
    aget-object v1, v27, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v24

    .line 356
    :cond_8
    :goto_6
    move-object/from16 v0, v27

    array-length v1, v0

    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    .line 357
    const/16 v1, 0x18

    aget-object v25, v27, v1

    .line 358
    const/16 v1, 0x19

    aget-object v26, v27, v1

    goto/16 :goto_3

    .line 353
    :catch_1
    move-exception v1

    goto :goto_6

    .line 347
    :catch_2
    move-exception v1

    goto :goto_5

    .line 337
    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method public static maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2a

    const/4 v3, 0x2

    .line 465
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 466
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 468
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 469
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 474
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-nez v5, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v4

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 477
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "default"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "hipri"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 481
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 475
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 491
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 492
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasMvnoParams()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Protocol= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RoamingProtocol= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CarrierEnabled= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Bearer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Htc_RadioTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->htc_bearer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Mtu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Types="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 454
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_1
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "[ApnSettingV3] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Carrier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Numeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Apn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Proxy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MMSC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MMSProxy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MMSPort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", AuthType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Types="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 408
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_1
    const-string v2, ", Protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v2, ", RoamingProtocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v2, ", CarrierEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 414
    const-string v2, ", Bearer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    const-string v2, ", ProfileID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    const-string v2, ", ModemCognitive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 417
    const-string v2, ", MaxConns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    const-string v2, ", WaitTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    const-string v2, ", MaxConnsTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    const-string v2, ", Mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    const-string v2, ", MvnoType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v2, ", MvnoMatchData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v2, ", ApnProfileID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mApnProfileID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    const-string v2, ", Dns1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_pri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v2, ", Dns2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->dns_sec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string v2, ", Htc_RadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->htc_bearer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
