.class Lcom/android/internal/policy/impl/PhoneWindowManager$32;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    const-string v0, "InputDispatcher"

    const-string v1, "TelephonyManager.CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$32;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mRingingSilentFlag:Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$RingingSilentFlag;->clearFlag()V

    :cond_1
    return-void
.end method
