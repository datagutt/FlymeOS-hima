.class Lcom/android/internal/os/storage/ExternalStorageFormatter$3;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    move-result v5

    # setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I
    invoke-static {v4, v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)I

    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "format path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v4

    if-ne v4, v9, :cond_b

    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v4

    if-ne v4, v7, :cond_2

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z
    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ExternalStorageFormatter"

    const-string/jumbo v5, "updateProgressState - need to format next storage......"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v5, 0x1040553

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v4

    if-ne v4, v9, :cond_3

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendMasterClearIntent()V
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v4

    if-eqz v4, :cond_5

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z
    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "ExternalStorageFormatter"

    const-string/jumbo v5, "updateProgressState - finish 2 cards formatting..."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V
    invoke-static {v4, v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v4

    if-eqz v4, :cond_7

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z
    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "ExternalStorageFormatter"

    const-string/jumbo v5, "updateProgressState - finish 2 cards formatting with phone storage..."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I
    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v6

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;IIZ)V

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_1

    :cond_7
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v4

    if-eqz v4, :cond_9

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z
    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "ExternalStorageFormatter"

    const-string/jumbo v5, "updateProgressState - finish internal card formatting..."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I
    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v6

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;IIZ)V

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_1

    :cond_9
    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->HTC_DEBUG_FORMATTER:Z
    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "ExternalStorageFormatter"

    const-string/jumbo v5, "updateProgressState - finish external card formatting..."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I
    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I
    invoke-static {v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v6

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;IIZ)V

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_1

    :cond_b
    if-eqz v3, :cond_d

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$800(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendMasterClearIntent()V
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_1

    :cond_c
    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->isSupport3LM()Z
    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$900()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "DeviceManager3LM"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_e

    :try_start_2
    invoke-static {v2}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/os/IDeviceManager3LM;->setSdEncryptionRequired(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_d
    :goto_3
    if-nez v3, :cond_f

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$1000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendMasterClearIntent()V
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    :goto_4
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v4

    if-ne v4, v7, :cond_10

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    # invokes: Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V
    invoke-static {v4, v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with 3LM service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Can\'t get 3LM service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_10
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_1
.end method
