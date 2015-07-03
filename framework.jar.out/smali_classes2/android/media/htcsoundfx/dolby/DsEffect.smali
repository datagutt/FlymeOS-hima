.class public Landroid/media/htcsoundfx/dolby/DsEffect;
.super Ljava/lang/Object;
.source "DsEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcDsEffect"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEffectExist()Z
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_0
    const-string v11, "android.dolby.ds.DsEffect"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Landroid/media/htcutil/HtcField;

    const-string v11, "EFFECT_DS"

    invoke-direct {v2, v11}, Landroid/media/htcutil/HtcField;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    new-array v8, v11, [Landroid/media/htcutil/HtcField;

    const/4 v11, 0x0

    aput-object v2, v8, v11

    invoke-static {v8, v0}, Landroid/media/htcutil/HtcField;->initFields([Landroid/media/htcutil/HtcField;Ljava/lang/Class;)V

    const/4 v11, 0x0

    invoke-static {v2, v11}, Landroid/media/htcutil/HtcField;->getField(Landroid/media/htcutil/HtcField;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v4

    array-length v7, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v3, v4, v6

    iget-object v11, v3, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    if-eqz v11, :cond_0

    iget-object v11, v3, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v11, v1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-nez v11, :cond_0

    :goto_2
    return v9

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const-string v11, "9d4921da-8225-4f29-aefa-39537a04bcaa"

    invoke-static {v11}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-string v9, "HtcDsEffect"

    const-string v11, "no dolby effect found"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    goto :goto_2
.end method
