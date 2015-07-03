.class Lcom/android/server/ShowWatermarkService$1;
.super Landroid/os/Handler;
.source "ShowWatermarkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ShowWatermarkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShowWatermarkService;


# direct methods
.method constructor <init>(Lcom/android/server/ShowWatermarkService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v1, -0x2

    const/4 v11, 0x0

    const/16 v5, 0xf

    const/16 v4, 0xe

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    const-string v1, "ro.gsm.imei"

    invoke-static {v1, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mDebug:Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "watermark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "property imei=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$300(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$300(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    const-string v2, "ro.cdma.meid"

    invoke-static {v2, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/ShowWatermarkService;->access$302(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mDebug:Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "watermark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "property meid=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ShowWatermarkService;->access$300(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    :cond_6
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/android/server/ShowWatermarkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    if-eqz v9, :cond_a

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    # setter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/server/ShowWatermarkService;->access$102(Lcom/android/server/ShowWatermarkService;Ljava/util/List;)Ljava/util/List;

    :cond_7
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v9, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_c

    const-string v1, "watermark"

    const-string v2, "null device id!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_f

    const-string v1, "watermark"

    const-string v2, "null device id!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12

    const-string v1, "watermark"

    const-string v2, "null device id!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    :cond_b
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # operator++ for: Lcom/android/server/ShowWatermarkService;->mRetry:I
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$408(Lcom/android/server/ShowWatermarkService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mRetryTimeoutCount:I
    invoke-static {v2}, Lcom/android/server/ShowWatermarkService;->access$500(Lcom/android/server/ShowWatermarkService;)I

    move-result v2

    if-ge v1, v2, :cond_15

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$600(Lcom/android/server/ShowWatermarkService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_c
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_e

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mDebug:Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "watermark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device imei=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    const-string v1, "watermark"

    const-string v2, "failed to get device id!"

    invoke-static {v1, v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_e
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # setter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/android/server/ShowWatermarkService;->access$302(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mDebug:Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "watermark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device meid=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ShowWatermarkService;->access$300(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_11

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mDebug:Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "watermark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device imei=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # setter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/android/server/ShowWatermarkService;->access$302(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mDebug:Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "watermark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device meid=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ShowWatermarkService;->access$300(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_14

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mImei:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mDebug:Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "watermark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device imei=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_14
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_a

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # setter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/android/server/ShowWatermarkService;->access$302(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mDebug:Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "watermark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device meid=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMeid:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ShowWatermarkService;->access$300(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_15
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # invokes: Lcom/android/server/ShowWatermarkService;->isCertificated()Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$700(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "watermark"

    const-string v2, "verified passed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$600(Lcom/android/server/ShowWatermarkService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "watermark"

    const-string v3, "start watermark"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "sys.ws"

    const-string v3, "96"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # invokes: Lcom/android/server/ShowWatermarkService;->getWatermarkWords()V
    invoke-static {v2}, Lcom/android/server/ShowWatermarkService;->access$800(Lcom/android/server/ShowWatermarkService;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/16 v4, 0x418

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "Show Watermark 2.5"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/android/server/ShowWatermarkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    new-instance v2, Lcom/android/server/ShowWatermarkService$LoadView;

    iget-object v3, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    iget-object v4, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    invoke-direct {v2, v3, v4}, Lcom/android/server/ShowWatermarkService$LoadView;-><init>(Lcom/android/server/ShowWatermarkService;Landroid/content/Context;)V

    # setter for: Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/server/ShowWatermarkService;->access$902(Lcom/android/server/ShowWatermarkService;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$900(Lcom/android/server/ShowWatermarkService;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v10, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mMonitorAccount:Z
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$1000(Lcom/android/server/ShowWatermarkService;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    # getter for: Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;
    invoke-static {v2}, Lcom/android/server/ShowWatermarkService;->access$1100(Lcom/android/server/ShowWatermarkService;)Landroid/accounts/OnAccountsUpdateListener;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v6

    const-string v1, "watermark"

    const-string v2, "add account listener fail, listener is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v6

    const-string v1, "watermark"

    const-string v2, "add account listener fail, listener is not added"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
