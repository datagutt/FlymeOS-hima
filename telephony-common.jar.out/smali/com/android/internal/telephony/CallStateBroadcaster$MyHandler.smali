.class Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;
.super Landroid/os/Handler;
.source "CallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallStateBroadcaster;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CallStateBroadcaster;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;->this$0:Lcom/android/internal/telephony/CallStateBroadcaster;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CallStateBroadcaster;Lcom/android/internal/telephony/CallStateBroadcaster$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/CallStateBroadcaster;
    .param p2, "x1"    # Lcom/android/internal/telephony/CallStateBroadcaster$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;-><init>(Lcom/android/internal/telephony/CallStateBroadcaster;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/CallStateBroadcaster$Status;

    .line 46
    .local v0, "status":Lcom/android/internal/telephony/CallStateBroadcaster$Status;
    iget-object v1, p0, Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;->this$0:Lcom/android/internal/telephony/CallStateBroadcaster;

    # getter for: Lcom/android/internal/telephony/CallStateBroadcaster$Status;->phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster$Status;->access$000(Lcom/android/internal/telephony/CallStateBroadcaster$Status;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/internal/telephony/CallStateBroadcaster$Status;->causeCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster$Status;->access$100(Lcom/android/internal/telephony/CallStateBroadcaster$Status;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$200(Lcom/android/internal/telephony/CallStateBroadcaster;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "status":Lcom/android/internal/telephony/CallStateBroadcaster$Status;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/CallStateBroadcaster$Status;

    .line 52
    .restart local v0    # "status":Lcom/android/internal/telephony/CallStateBroadcaster$Status;
    iget-object v1, p0, Lcom/android/internal/telephony/CallStateBroadcaster$MyHandler;->this$0:Lcom/android/internal/telephony/CallStateBroadcaster;

    # getter for: Lcom/android/internal/telephony/CallStateBroadcaster$Status;->phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster$Status;->access$000(Lcom/android/internal/telephony/CallStateBroadcaster$Status;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/internal/telephony/CallStateBroadcaster$Status;->causeCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster$Status;->access$100(Lcom/android/internal/telephony/CallStateBroadcaster$Status;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$300(Lcom/android/internal/telephony/CallStateBroadcaster;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
