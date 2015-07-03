.class public final Lcom/android/internal/telephony/IccContract$SpeedDial;
.super Ljava/lang/Object;
.source "IccContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/android/internal/telephony/IccContract$SpeedDialColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedDial"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_speed_dial"

.field public static final CONTENT_ITEM_TYPE_LOCATION:Ljava/lang/String; = "vnd.android.cursor.item/contact_speed_dial-location"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_speed_dial"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LOOKUP:Ljava/lang/String; = "lookup"

.field public static final MAX_NUMBER:I = 0x8

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final START_LOCATION:I = 0x2

.field public static final TABLE_NAME:Ljava/lang/String; = "speed_dial"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 219
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "speed_dial"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
