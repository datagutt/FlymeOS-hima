.class public Lcom/android/internal/telephony/dataconnection/APNParam;
.super Ljava/lang/Object;
.source "APNParam.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "APNParam"


# instance fields
.field public active:Z

.field public apn_maxconn:I

.field public apn_maxconn_t:I

.field public apn_types:[Ljava/lang/String;

.field public authType:I

.field public class_id:I

.field public dns_pri:Ljava/lang/String;

.field public dns_sec:Ljava/lang/String;

.field public http_proxy_addr:Ljava/lang/String;

.field public http_proxy_port:Ljava/lang/String;

.field public id:I

.field public is_pcscf_addr_needed:Ljava/lang/Boolean;

.field public mms_proxy_addr:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public pcscf_addr_via_pco:Ljava/lang/Boolean;

.field public pcscf_via_dhcp:Ljava/lang/Boolean;

.field public pdn_label:Ljava/lang/String;

.field public rat:I

.field public state:I

.field public support_emergency_calls:Ljava/lang/Boolean;

.field public timer:I

.field public type:I

.field public user:Ljava/lang/String;

.field public wait_time:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->active:Z

    .line 178
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->id:I

    .line 179
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    .line 181
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    .line 182
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    .line 183
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I

    .line 184
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    .line 185
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->user:Ljava/lang/String;

    .line 186
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->password:Ljava/lang/String;

    .line 187
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->authType:I

    .line 188
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->dns_pri:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->dns_sec:Ljava/lang/String;

    .line 190
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->active:Z

    .line 191
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_types:[Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->http_proxy_addr:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->http_proxy_port:Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->mms_proxy_addr:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_addr_via_pco:Ljava/lang/Boolean;

    .line 196
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_via_dhcp:Ljava/lang/Boolean;

    .line 197
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->support_emergency_calls:Ljava/lang/Boolean;

    .line 198
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->is_pcscf_addr_needed:Ljava/lang/Boolean;

    .line 199
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn:I

    .line 200
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn_t:I

    .line 201
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->wait_time:I

    .line 202
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;III)V
    .locals 2
    .param p1, "n_id"    # I
    .param p2, "n_class"    # I
    .param p3, "n_name"    # Ljava/lang/String;
    .param p4, "n_type"    # I
    .param p5, "n_state"    # I
    .param p6, "n_timer"    # I

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->active:Z

    .line 347
    const-string v0, "APNParam"

    const-string v1, "[FIXME] Dummy APNParam ctor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "n_id"    # I
    .param p2, "n_pdn_label"    # Ljava/lang/String;
    .param p3, "n_name"    # Ljava/lang/String;
    .param p4, "n_type"    # I
    .param p5, "n_state"    # I
    .param p6, "n_timer"    # I

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>()V

    .line 260
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->id:I

    .line 261
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    .line 262
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    .line 263
    iput p4, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    .line 264
    iput p5, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    .line 265
    iput p6, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I

    .line 266
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "n_id"    # I
    .param p2, "n_pdn_label"    # Ljava/lang/String;
    .param p3, "n_name"    # Ljava/lang/String;
    .param p4, "n_type"    # I
    .param p5, "n_state"    # I
    .param p6, "n_timer"    # I
    .param p7, "n_rat"    # I
    .param p8, "n_user"    # Ljava/lang/String;
    .param p9, "n_pass"    # Ljava/lang/String;
    .param p10, "n_auth_type"    # I

    .prologue
    .line 250
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 251
    iput p7, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    .line 252
    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->user:Ljava/lang/String;

    .line 253
    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->password:Ljava/lang/String;

    .line 254
    iput p10, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->authType:I

    .line 255
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "n_id"    # I
    .param p2, "n_pdn_label"    # Ljava/lang/String;
    .param p3, "n_name"    # Ljava/lang/String;
    .param p4, "n_type"    # I
    .param p5, "n_state"    # I
    .param p6, "n_timer"    # I
    .param p7, "n_rat"    # I
    .param p8, "n_user"    # Ljava/lang/String;
    .param p9, "n_pass"    # Ljava/lang/String;
    .param p10, "n_auth_type"    # I
    .param p11, "n_dns_pri"    # Ljava/lang/String;
    .param p12, "n_dns_sec"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 244
    iput-object p11, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->dns_pri:Ljava/lang/String;

    .line 245
    iput-object p12, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->dns_sec:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "n_id"    # I
    .param p2, "n_pdn_label"    # Ljava/lang/String;
    .param p3, "n_name"    # Ljava/lang/String;
    .param p4, "n_type"    # I
    .param p5, "n_state"    # I
    .param p6, "n_timer"    # I
    .param p7, "n_rat"    # I
    .param p8, "n_user"    # Ljava/lang/String;
    .param p9, "n_pass"    # Ljava/lang/String;
    .param p10, "n_auth_type"    # I
    .param p11, "n_dns_pri"    # Ljava/lang/String;
    .param p12, "n_dns_sec"    # Ljava/lang/String;
    .param p13, "n_apn_type"    # [Ljava/lang/String;

    .prologue
    .line 237
    invoke-direct/range {p0 .. p12}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    iput-object p13, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_types:[Ljava/lang/String;

    .line 239
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "n_id"    # I
    .param p2, "n_pdn_label"    # Ljava/lang/String;
    .param p3, "n_name"    # Ljava/lang/String;
    .param p4, "n_type"    # I
    .param p5, "n_state"    # I
    .param p6, "n_timer"    # I
    .param p7, "n_rat"    # I
    .param p8, "n_user"    # Ljava/lang/String;
    .param p9, "n_pass"    # Ljava/lang/String;
    .param p10, "n_auth_type"    # I
    .param p11, "n_dns_pri"    # Ljava/lang/String;
    .param p12, "n_dns_sec"    # Ljava/lang/String;
    .param p13, "n_apn_type"    # [Ljava/lang/String;
    .param p14, "n_http_proxy_addr"    # Ljava/lang/String;
    .param p15, "n_http_proxy_port"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 231
    iput-object p14, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->http_proxy_addr:Ljava/lang/String;

    .line 232
    iput-object p15, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->http_proxy_port:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "n_id"    # I
    .param p2, "n_pdn_label"    # Ljava/lang/String;
    .param p3, "n_name"    # Ljava/lang/String;
    .param p4, "n_type"    # I
    .param p5, "n_state"    # I
    .param p6, "n_timer"    # I
    .param p7, "n_rat"    # I
    .param p8, "n_user"    # Ljava/lang/String;
    .param p9, "n_pass"    # Ljava/lang/String;
    .param p10, "n_auth_type"    # I
    .param p11, "n_dns_pri"    # Ljava/lang/String;
    .param p12, "n_dns_sec"    # Ljava/lang/String;
    .param p13, "n_apn_type"    # [Ljava/lang/String;
    .param p14, "n_http_proxy_addr"    # Ljava/lang/String;
    .param p15, "n_http_proxy_port"    # Ljava/lang/String;
    .param p16, "n_mms_proxy_addr"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct/range {p0 .. p15}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->mms_proxy_addr:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "n_id"    # I
    .param p2, "n_pdn_label"    # Ljava/lang/String;
    .param p3, "n_name"    # Ljava/lang/String;
    .param p4, "n_type"    # I
    .param p5, "n_state"    # I
    .param p6, "n_timer"    # I
    .param p7, "n_rat"    # I
    .param p8, "n_user"    # Ljava/lang/String;
    .param p9, "n_pass"    # Ljava/lang/String;
    .param p10, "n_auth_type"    # I
    .param p11, "n_dns_pri"    # Ljava/lang/String;
    .param p12, "n_dns_sec"    # Ljava/lang/String;
    .param p13, "n_apn_type"    # [Ljava/lang/String;
    .param p14, "n_http_proxy_addr"    # Ljava/lang/String;
    .param p15, "n_http_proxy_port"    # Ljava/lang/String;
    .param p16, "n_mms_proxy_addr"    # Ljava/lang/String;
    .param p17, "n_pcscf_addr_via_pco"    # Ljava/lang/Boolean;
    .param p18, "n_pcscf_via_dhcp"    # Ljava/lang/Boolean;
    .param p19, "n_support_emergency_calls"    # Ljava/lang/Boolean;
    .param p20, "n_is_pcscf_addr_needed"    # Ljava/lang/Boolean;

    .prologue
    .line 215
    invoke-direct/range {p0 .. p16}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_addr_via_pco:Ljava/lang/Boolean;

    .line 217
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_via_dhcp:Ljava/lang/Boolean;

    .line 218
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->support_emergency_calls:Ljava/lang/Boolean;

    .line 219
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->is_pcscf_addr_needed:Ljava/lang/Boolean;

    .line 220
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;III)V
    .locals 1
    .param p1, "n_id"    # I
    .param p2, "n_pdn_label"    # Ljava/lang/String;
    .param p3, "n_name"    # Ljava/lang/String;
    .param p4, "n_type"    # I
    .param p5, "n_state"    # I
    .param p6, "n_timer"    # I
    .param p7, "n_rat"    # I
    .param p8, "n_user"    # Ljava/lang/String;
    .param p9, "n_pass"    # Ljava/lang/String;
    .param p10, "n_auth_type"    # I
    .param p11, "n_dns_pri"    # Ljava/lang/String;
    .param p12, "n_dns_sec"    # Ljava/lang/String;
    .param p13, "n_apn_type"    # [Ljava/lang/String;
    .param p14, "n_http_proxy_addr"    # Ljava/lang/String;
    .param p15, "n_http_proxy_port"    # Ljava/lang/String;
    .param p16, "n_mms_proxy_addr"    # Ljava/lang/String;
    .param p17, "n_pcscf_addr_via_pco"    # Ljava/lang/Boolean;
    .param p18, "n_pcscf_via_dhcp"    # Ljava/lang/Boolean;
    .param p19, "n_support_emergency_calls"    # Ljava/lang/Boolean;
    .param p20, "n_is_pcscf_addr_needed"    # Ljava/lang/Boolean;
    .param p21, "n_apn_maxconn"    # I
    .param p22, "n_apn_maxconn_t"    # I
    .param p23, "n_wait_time"    # I

    .prologue
    .line 206
    invoke-direct/range {p0 .. p20}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 207
    move/from16 v0, p21

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn:I

    .line 208
    move/from16 v0, p22

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn_t:I

    .line 209
    move/from16 v0, p23

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->wait_time:I

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pdn_label"    # Ljava/lang/String;
    .param p2, "rat"    # I

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/APNParam;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    .line 273
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    .line 274
    return-void
.end method

.method public static maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2a

    const/4 v3, 0x2

    .line 336
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 337
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 339
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 340
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    const-string v2, ", Pdn_label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->pdn_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v2, ", Apn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/APNParam;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v2, ", Protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    const-string v2, ", State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    const-string v2, ", Timer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->timer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    const-string v2, ", RadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->rat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    const-string v2, ", AuthType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->authType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string v2, ", Apntype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_types:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 307
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    const-string v2, ", HttpProxyAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->http_proxy_addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v2, ", pcscf_addr_via_pco="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_addr_via_pco:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    const-string v2, ", pcscf_via_dhcp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->pcscf_via_dhcp:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    const-string v2, ", support_emergency_calls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->support_emergency_calls:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    const-string v2, ", is_pcscf_addr_needed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->is_pcscf_addr_needed:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    const-string v2, ", apn_maxconn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    const-string v2, ", apn_maxconn_t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->apn_maxconn_t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    const-string v2, ", wait_time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/APNParam;->wait_time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
