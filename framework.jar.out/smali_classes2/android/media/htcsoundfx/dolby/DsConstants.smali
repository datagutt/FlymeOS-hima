.class public Landroid/media/htcsoundfx/dolby/DsConstants;
.super Ljava/lang/Object;
.source "DsConstants.java"


# static fields
.field public static final DS_NO_ERROR:I

.field public static final DS_REQUEST_FAILED_EFFECT_SUSPENDED:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v5, "android.dolby.DsConstants"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    new-instance v0, Landroid/media/htcutil/HtcField;

    const-string v5, "DS_NO_ERROR"

    invoke-direct {v0, v5}, Landroid/media/htcutil/HtcField;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/media/htcutil/HtcField;

    const-string v5, "DS_REQUEST_FAILED_EFFECT_SUSPENDED"

    invoke-direct {v1, v5}, Landroid/media/htcutil/HtcField;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v4, v5, [Landroid/media/htcutil/HtcField;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v4, v2}, Landroid/media/htcutil/HtcField;->initFields([Landroid/media/htcutil/HtcField;Ljava/lang/Class;)V

    invoke-static {v0, v8}, Landroid/media/htcutil/HtcField;->getField_int(Landroid/media/htcutil/HtcField;Ljava/lang/Object;)I

    move-result v5

    sput v5, Landroid/media/htcsoundfx/dolby/DsConstants;->DS_NO_ERROR:I

    invoke-static {v1, v8}, Landroid/media/htcutil/HtcField;->getField_int(Landroid/media/htcutil/HtcField;Ljava/lang/Object;)I

    move-result v5

    sput v5, Landroid/media/htcsoundfx/dolby/DsConstants;->DS_REQUEST_FAILED_EFFECT_SUSPENDED:I

    :goto_1
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    sput v6, Landroid/media/htcsoundfx/dolby/DsConstants;->DS_NO_ERROR:I

    sput v7, Landroid/media/htcsoundfx/dolby/DsConstants;->DS_REQUEST_FAILED_EFFECT_SUSPENDED:I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
