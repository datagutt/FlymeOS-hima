.class Lcom/android/internal/telephony/CallStateBroadcaster$Status;
.super Ljava/lang/Object;
.source "CallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Status"
.end annotation


# instance fields
.field private causeCode:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/CallStateBroadcaster$Status;->phoneNumber:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/internal/telephony/CallStateBroadcaster$Status;->causeCode:Ljava/lang/String;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/CallStateBroadcaster$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/internal/telephony/CallStateBroadcaster$1;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallStateBroadcaster$Status;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CallStateBroadcaster$Status;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallStateBroadcaster$Status;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster$Status;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CallStateBroadcaster$Status;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallStateBroadcaster$Status;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster$Status;->causeCode:Ljava/lang/String;

    return-object v0
.end method
