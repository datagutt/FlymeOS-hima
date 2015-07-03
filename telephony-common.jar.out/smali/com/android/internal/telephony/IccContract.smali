.class public Lcom/android/internal/telephony/IccContract;
.super Ljava/lang/Object;
.source "IccContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccContract$SimContacts;,
        Lcom/android/internal/telephony/IccContract$SpeedDial;,
        Lcom/android/internal/telephony/IccContract$SpeedDialColumns;,
        Lcom/android/internal/telephony/IccContract$IccPhonebook;,
        Lcom/android/internal/telephony/IccContract$IccPhonebookColumns;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME_SIM:Ljava/lang/String; = "SIM"

.field public static final ACCOUNT_NAME_SIM_FDN:Ljava/lang/String; = "SIM_FDN"

.field public static final ACCOUNT_NAME_SIM_SDN:Ljava/lang/String; = "SIM_SDN"

.field public static final ACCOUNT_TYPE_NAME_SLOT2:Ljava/lang/String; = "SIM"

.field public static final ACCOUNT_TYPE_SIM:Ljava/lang/String; = "com.htc.contacts.sim"

.field public static final ACCOUNT_TYPE_SIM_SLOT2:Ljava/lang/String; = "com.htc.contacts.sim_slot2"

.field public static final AUTHORITY:Ljava/lang/String; = "icc"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final SIM_LOCATION:Ljava/lang/String; = "data9"

.field public static final SIM_LOCATION_ADN:I = 0x1

.field public static final SIM_LOCATION_ANR1:I = 0x2

.field public static final SIM_LOCATION_ANR2:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "content://icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    return-void
.end method
