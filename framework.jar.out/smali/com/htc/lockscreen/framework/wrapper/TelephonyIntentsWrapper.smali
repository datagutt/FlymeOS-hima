.class public Lcom/htc/lockscreen/framework/wrapper/TelephonyIntentsWrapper;
.super Ljava/lang/Object;
.source "TelephonyIntentsWrapper.java"


# static fields
.field public static final ACTION_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "android.intent.action.RADIO_TECHNOLOGY"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ACTION_SIM_STATE_CHANGED_EXT:Ljava/lang/String;

.field public static final EXTRA_NETWORK_STATE:Ljava/lang/String;

.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/TelephonyIntentsWrapper;->ACTION_SIM_STATE_CHANGED_EXT:Ljava/lang/String;

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/TelephonyIntentsWrapper;->EXTRA_NETWORK_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
