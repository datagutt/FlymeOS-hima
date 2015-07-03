.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPITAL_AM_PM:C = 'A'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR:C = 'h'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_OF_DAY:C = 'k'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:C = 'm'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MONTH:C = 'M'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final QUOTE:C = '\''
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECONDS:C = 's'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDALONE_MONTH:C = 'L'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_ZONE:C = 'z'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YEAR:C = 'y'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .locals 4

    const/16 v3, 0x27

    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3

    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 16

    new-instance v13, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v10

    const/4 v11, 0x0

    const-string v4, ""

    const-string v5, ""

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v14, -0x1

    const-string v15, "MMM"

    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ne v14, v15, :cond_3

    const/4 v11, 0x0

    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v11, 0x0

    :cond_1
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_f

    const/4 v2, 0x1

    invoke-virtual {v13, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v14, 0x27

    if-ne v1, v14, :cond_b

    invoke-static {v13, v8, v9}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v2

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    :cond_2
    :goto_3
    add-int/2addr v8, v2

    goto :goto_2

    :cond_3
    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    sget-object v14, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    sget-object v14, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    const-string v4, " \u65e5"

    const-string v5, " \u5e74"

    goto :goto_1

    :cond_7
    sget-object v14, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    sget-object v14, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_8
    const-string/jumbo v4, "\u65e5"

    const-string/jumbo v5, "\u5e74"

    goto :goto_1

    :cond_9
    sget-object v14, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    sget-object v14, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_a
    const-string/jumbo v4, "\uc77c"

    const-string/jumbo v5, "\ub144"

    goto/16 :goto_1

    :cond_b
    :goto_4
    add-int v14, v8, v2

    if-ge v14, v9, :cond_c

    add-int v14, v8, v2

    invoke-virtual {v13, v14}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v14

    if-ne v14, v1, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    sparse-switch v1, :sswitch_data_0

    const/4 v12, 0x0

    :cond_d
    :goto_5
    if-eqz v12, :cond_2

    add-int v14, v8, v2

    invoke-virtual {v13, v8, v14, v12}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    goto/16 :goto_3

    :sswitch_0
    iget-object v14, v10, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v15, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x0

    aget-object v12, v14, v15

    goto :goto_5

    :sswitch_1
    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v12

    if-eqz v11, :cond_d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :sswitch_2
    const/4 v14, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v10, v14, v2, v1}, Landroid/text/format/DateFormat;->getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :sswitch_3
    const/16 v14, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v14, 0x68

    if-ne v1, v14, :cond_e

    if-nez v7, :cond_e

    const/16 v7, 0xc

    :cond_e
    invoke-static {v7, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :sswitch_4
    const/16 v14, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :sswitch_5
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v10, v14, v2, v1}, Landroid/text/format/DateFormat;->getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :sswitch_6
    const/16 v14, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    :sswitch_7
    const/16 v14, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    :sswitch_8
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14, v2}, Landroid/text/format/DateFormat;->getYearString(II)Ljava/lang/String;

    move-result-object v12

    if-eqz v11, :cond_d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    :sswitch_9
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    instance-of v14, v0, Landroid/text/Spanned;

    if-eqz v14, :cond_10

    new-instance v14, Landroid/text/SpannedString;

    invoke-direct {v14, v13}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    :goto_6
    return-object v14

    :cond_10
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x45 -> :sswitch_2
        0x48 -> :sswitch_4
        0x4b -> :sswitch_3
        0x4c -> :sswitch_5
        0x4d -> :sswitch_5
        0x61 -> :sswitch_0
        0x63 -> :sswitch_2
        0x64 -> :sswitch_1
        0x68 -> :sswitch_3
        0x6b -> :sswitch_4
        0x6d -> :sswitch_6
        0x73 -> :sswitch_7
        0x79 -> :sswitch_8
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static formatZoneOffset(II)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    div-int/lit16 p0, p0, 0x3e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p0, :cond_0

    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p0, p0

    :goto_0
    div-int/lit16 v0, p0, 0xe10

    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2

    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDateFormatOrder(Landroid/content/Context;)[C
    .locals 1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_5

    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v5, 0x79

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v2, :cond_5

    if-ltz v1, :cond_5

    if-ltz v4, :cond_5

    const v5, 0x1040053

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-ge v4, v2, :cond_1

    if-ge v4, v1, :cond_1

    if-ge v2, v1, :cond_0

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v5, p1

    :goto_1
    return-object v5

    :cond_0
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ge v2, v1, :cond_3

    if-ge v1, v4, :cond_2

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-ge v2, v4, :cond_4

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v5, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    const/16 v2, 0x63

    if-ne p3, v2, :cond_0

    move v0, v1

    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/format/DateUtils;->isLanguage_my(Ljava/util/Locale;)Z

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {p1, p2, v0}, Landroid/text/format/DateFormat;->getDayOfWeekString_my(IIZ)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_5

    if-eqz v0, :cond_4

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1
.end method

.method private static getDayOfWeekString_my(IIZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/16 v0, 0x32

    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString_my(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString_my(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString_my(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    const/16 v2, 0x4c

    if-ne p3, v2, :cond_0

    move v0, v1

    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/format/DateUtils;->isLanguage_my(Ljava/util/Locale;)Z

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {p1, p2, v0}, Landroid/text/format/DateFormat;->getMonthString_my(IIZ)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_5

    if-eqz v0, :cond_4

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_7

    if-eqz v0, :cond_6

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_7
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1, p2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getMonthString_my(IIZ)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x32

    const/16 v2, 0x14

    const/16 v1, 0xa

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p0, v3}, Landroid/text/format/DateUtils;->getStandaloneMonthString_my(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v3}, Landroid/text/format/DateUtils;->getMonthString_my(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p0, v1}, Landroid/text/format/DateUtils;->getStandaloneMonthString_my(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Landroid/text/format/DateUtils;->getMonthString_my(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    invoke-static {p0, v2}, Landroid/text/format/DateUtils;->getStandaloneMonthString_my(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p0, v2}, Landroid/text/format/DateUtils;->getMonthString_my(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat12:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    const/4 v3, 0x2

    if-ge p1, v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private static getYearString(II)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    rem-int/lit8 v0, p0, 0x64

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasDesignator(Ljava/lang/CharSequence;C)Z
    .locals 6

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x27

    if-ne v0, v5, :cond_3

    invoke-static {p0, v2, v3}, Landroid/text/format/DateFormat;->skipQuotedText(Ljava/lang/CharSequence;II)I

    move-result v1

    :cond_2
    add-int/2addr v2, v1

    goto :goto_1

    :cond_3
    if-ne v0, p1, :cond_2

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static hasSeconds(Ljava/lang/CharSequence;)Z
    .locals 1

    const/16 v0, 0x73

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v5, :cond_0

    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v5, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v6

    :goto_0
    return v5

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    const-string v4, "24"

    :goto_1
    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    sput-object v0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    const-string v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_1
    const-string v4, "12"

    goto :goto_1

    :cond_2
    const-string v4, "12"

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    :cond_3
    const-string v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method private static skipQuotedText(Ljava/lang/CharSequence;II)I
    .locals 4

    const/16 v3, 0x27

    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x2

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_0

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static zeroPad(II)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
