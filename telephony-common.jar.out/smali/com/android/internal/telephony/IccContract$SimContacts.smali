.class public final Lcom/android/internal/telephony/IccContract$SimContacts;
.super Ljava/lang/Object;
.source "IccContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimContacts"
.end annotation


# static fields
.field public static final ADN_FULL_URI:Landroid/net/Uri;

.field public static final EMAIL_ANR_FULL_URI:Landroid/net/Uri;

.field public static final ERROR_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    const-string v0, "AdnFull"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccContract$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    .line 288
    const-string v0, "MemoryFull"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccContract$SimContacts;->EMAIL_ANR_FULL_URI:Landroid/net/Uri;

    .line 295
    const-string v0, "Error"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccContract$SimContacts;->ERROR_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
