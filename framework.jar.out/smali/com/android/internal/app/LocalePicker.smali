.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_LOCALE:Z

.field private static final ENG_LANG:Ljava/lang/String;

.field private static final ENG_MMR_UNICODE:Ljava/lang/String; = "enu_MM"

.field private static final ENG_MMR_ZAWGYI:Ljava/lang/String; = "enz_MM"

.field private static final TAG:Ljava/lang/String; = "LocalePicker"

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9

.field private static mIsCheckingVoiceData:Z

.field private static mSkuId:I

.field private static mTalkbackSupportLocales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/app/LocalePicker;->DEBUG_LOCALE:Z

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePicker;->ENG_LANG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/android/internal/app/LocalePicker;->mIsCheckingVoiceData:Z

    sput v1, Lcom/android/internal/app/LocalePicker;->mSkuId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Lcom/android/internal/app/LocalePicker$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/LocalePicker$4;-><init>(Lcom/android/internal/app/LocalePicker;)V

    iput-object v0, p0, Lcom/android/internal/app/LocalePicker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static checkAccessibilityOn(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkNeedShowWarning(Ljava/util/Locale;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->isZawgyi()Z

    move-result v2

    invoke-virtual {v1}, Ljava/util/Locale;->isZawgyi()Z

    move-result v3

    xor-int v0, v2, v3

    :cond_0
    return v0
.end method

.method private checkVoiceData()V
    .locals 6

    const/4 v4, 0x0

    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sput-object v4, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    const/16 v3, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/app/LocalePicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "LocalePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check TTS data, no activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    const v0, 0x3030015

    const v1, 0x3110022

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    :cond_0
    invoke-static {p0, v8}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/internal/app/LocalePicker$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V

    return-object v0
.end method

.method public static getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const-string/jumbo v20, "ro.bootmode"

    const-string/jumbo v21, "unknown"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "factory"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    if-nez p1, :cond_0

    const-string v20, "ar-XB"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v20, "en-XA"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    const v20, 0x1070008

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    const v20, 0x1070009

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    array-length v14, v13

    new-array v15, v14, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, v5

    :goto_1
    if-ge v7, v14, :cond_a

    aget-object v17, v13, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v20, 0x5

    move/from16 v0, v20

    if-eq v10, v0, :cond_1

    const/16 v20, 0x6

    move/from16 v0, v20

    if-ne v10, v0, :cond_c

    :cond_1
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v10, v0, :cond_5

    const/16 v20, 0x0

    const/16 v21, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0x3

    const/16 v21, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_2
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v9, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v20, Lcom/android/internal/app/LocalePicker;->DEBUG_LOCALE:Z

    if-eqz v20, :cond_2

    const-string v20, "LocalePicker"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "idx=\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\",\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v6, :cond_6

    add-int/lit8 v5, v6, 0x1

    new-instance v20, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v20, v15, v6

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    goto/16 :goto_1

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->checkAccessibilityOn(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_4

    sget-boolean v20, Lcom/android/internal/app/LocalePicker;->mIsCheckingVoiceData:Z

    if-nez v20, :cond_4

    sget-object v20, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    if-eqz v20, :cond_4

    sget-object v12, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/customize/storage/customize/HtcCustomizedLocale;->getLocalList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_5
    const/16 v20, 0x0

    const/16 v21, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0x4

    const/16 v21, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v20, v6, -0x1

    aget-object v20, v15, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/android/internal/app/LocalePicker;->theSameWithPrevLang(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v20

    if-eqz v20, :cond_7

    add-int/lit8 v20, v6, -0x1

    aget-object v20, v15, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "zz"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    add-int/lit8 v20, v6, -0x1

    aget-object v20, v15, v20

    add-int/lit8 v21, v6, -0x1

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    new-instance v20, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v20, v15, v6

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v20, "zz_ZZ"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    const-string v4, "[Developer] Accented English"

    :goto_4
    add-int/lit8 v5, v6, 0x1

    new-instance v20, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v20, v15, v6

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v20, "zz_ZY"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const-string v4, "[Developer] Fake Bi-Directional"

    goto :goto_4

    :cond_9
    invoke-virtual {v8, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_a
    new-array v11, v6, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_b

    aget-object v20, v15, v7

    aput-object v20, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    return-object v20

    :cond_c
    move v5, v6

    goto/16 :goto_3
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/internal/app/LocalePicker;->mSkuId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const-string v2, "^en[-_]MM$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->isZawgyi()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "enz_MM"

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, p2, v1

    :goto_2
    return-object v2

    :cond_1
    const-string v0, "enu_MM"

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private static theSameWithPrevLang(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_2

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_3

    :goto_1
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez v0, :cond_4

    :cond_0
    move v3, v4

    :cond_1
    :goto_2
    return v3

    :cond_2
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->isZawgyi()Z

    move-result v5

    invoke-virtual {p1}, Ljava/util/Locale;->isZawgyi()Z

    move-result v6

    if-ne v5, v6, :cond_7

    move v2, v3

    :goto_3
    sget-object v5, Lcom/android/internal/app/LocalePicker;->ENG_LANG:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_1

    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_3
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    sget-boolean v2, Lcom/android/internal/app/LocalePicker;->DEBUG_LOCALE:Z

    if-eqz v2, :cond_0

    const-string v2, "LocalePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLocale , locale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-boolean v3, Lcom/android/internal/app/LocalePicker;->mIsCheckingVoiceData:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3020078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3020077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/16 v6, 0x7b9

    if-ne p1, v6, :cond_2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    const-string v6, "availableVoices"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v6, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    new-instance v5, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v6, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_1
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/internal/app/LocalePicker;->mIsCheckingVoiceData:Z

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const/4 v6, 0x0

    sput-object v6, Lcom/android/internal/app/LocalePicker;->mTalkbackSupportLocales:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    const-string v6, "LocalePicker"

    const-string/jumbo v7, "returned data by TTSEngine is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v6, "LocalePicker"

    const-string v7, "CheckVoiceData activity failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "System"

    invoke-virtual {v0, v2, v4, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "sku_id"

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/internal/app/LocalePicker;->mSkuId:I

    :cond_0
    sget v2, Lcom/android/internal/app/LocalePicker;->mSkuId:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/LocalePicker;->checkAccessibilityOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v4, Lcom/android/internal/app/LocalePicker;->mIsCheckingVoiceData:Z

    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;->checkVoiceData()V

    :cond_1
    sget-boolean v2, Lcom/android/internal/app/LocalePicker;->DEBUG_LOCALE:Z

    if-eqz v2, :cond_2

    const-string v2, "LocalePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sku id => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/app/LocalePicker;->mSkuId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v1, v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Lcom/android/internal/app/LocalePicker;->checkNeedShowWarning(Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x30b0001

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x3070201

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x3070202

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040013

    new-instance v3, Lcom/android/internal/app/LocalePicker$2;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/app/LocalePicker$2;-><init>(Lcom/android/internal/app/LocalePicker;Ljava/util/Locale;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040009

    new-instance v3, Lcom/android/internal/app/LocalePicker$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/LocalePicker$3;-><init>(Lcom/android/internal/app/LocalePicker;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v2, v1}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.intent.action.STATUS_BAR_TAP_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.htc.permission.APP_DEFAULT"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    return-void
.end method
