.class public Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;
.super Landroid/os/Handler;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonWidgetHelper"
.end annotation


# static fields
.field private static final EVENT_END_INTENT:I = 0x3

.field private static final EVENT_FORCE_UPDATE:I = 0x5

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_NEW_INTENT:I = 0x2

.field private static final EVENT_ON_DESTROY:I = 0x8

.field private static final EVENT_ON_PAUSE:I = 0x7

.field private static final EVENT_ON_RESUME:I = 0x6

.field private static final EVENT_RX_BROADCAST_INTENT:I = 0x4


# instance fields
.field private beenDestroyed:Z

.field private context:Landroid/content/Context;

.field private intentReceiver:Landroid/content/BroadcastReceiver;

.field mMemoryCachedSettings:Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;

.field private privilege:Ljava/lang/String;

.field private receivedIntents:I

.field private slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

.field private stopReceiveIntents:Z

.field private thread:Landroid/os/HandlerThread;

.field private threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

.field private threadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "privilege"    # Ljava/lang/String;
    .param p3, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p4, "threadCallback"    # Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    .prologue
    .line 2717
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2718
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    .line 2719
    iput-object p2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    .line 2720
    iput-object p3, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 2721
    iput-object p4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    .line 2722
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->mMemoryCachedSettings:Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;

    .line 2723
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 2724
    return-void
.end method

.method private appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "givenPostfix"    # Ljava/lang/String;

    .prologue
    .line 2898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2899
    .local v0, "sbTag":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2900
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2901
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2902
    if-eqz p2, :cond_0

    .line 2903
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    :cond_0
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2906
    if-eqz p1, :cond_1

    .line 2907
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2909
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createThread()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2913
    const/4 v8, 0x0

    .line 2914
    .local v8, "newCreate":Z
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2915
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    .line 2916
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2917
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadCallback:Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v7, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->mMemoryCachedSettings:Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;

    move-object v6, v2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createBackgroundHandler(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;)Landroid/os/Handler;
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/MobileNetwork;->access$1800(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;ZLcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    .line 2920
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper$1;-><init>(Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 2927
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.permission.APP_PLATFORM"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2930
    :goto_0
    const/4 v8, 0x1

    .line 2932
    :cond_0
    return v8

    .line 2929
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private finishThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2950
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2952
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2954
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 2955
    iput-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    .line 2956
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->access$1200(Landroid/os/HandlerThread;)Ljava/lang/Throwable;

    .line 2957
    iput-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->thread:Landroid/os/HandlerThread;

    .line 2959
    :cond_0
    return-void

    .line 2953
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private notifyThread(IIILjava/lang/Object;)I
    .locals 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x3

    .line 2936
    iget v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    .line 2937
    .local v1, "processingIntents":I
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    .line 2938
    .local v0, "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p4, v0, v2

    .line 2939
    const/4 v2, 0x1

    aput-object p0, v0, v2

    .line 2940
    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2941
    const/4 v2, 0x0

    aput-object v2, v0, v4

    .line 2943
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->threadHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2944
    add-int/lit8 v1, v1, 0x1

    .line 2946
    :goto_0
    return v1

    .line 2945
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 2810
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2811
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 2812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    .line 2814
    :cond_0
    return-void
.end method

.method public forceCallbackUpdate()V
    .locals 1

    .prologue
    .line 2747
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2748
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 2750
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 2821
    const/4 v0, 0x0

    .line 2822
    .local v0, "exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 2823
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2824
    .local v3, "params":[Ljava/lang/Object;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2871
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 2872
    const-string v5, "LibMobileNetwork"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2874
    :cond_1
    return-void

    .line 2826
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->createThread()Z

    .line 2827
    iget v5, p1, Landroid/os/Message;->what:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v10, "d."

    invoke-direct {p0, v11, v10}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v8, v9, v10}, Lcom/android/internal/telephony/MobileNetwork;->access$1100(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto :goto_0

    .line 2832
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->createThread()Z

    .line 2833
    iget v5, p1, Landroid/os/Message;->what:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto :goto_0

    .line 2836
    :pswitch_2
    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    .line 2837
    iget-boolean v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    if-gtz v5, :cond_0

    .line 2838
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->finishThread()V

    goto :goto_0

    .line 2842
    :pswitch_3
    iget-boolean v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    if-nez v5, :cond_0

    .line 2843
    const/4 v1, 0x0

    .line 2844
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Landroid/content/Intent;

    if-eqz v5, :cond_2

    .line 2845
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "intent":Landroid/content/Intent;
    check-cast v1, Landroid/content/Intent;

    .line 2846
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "logTag"

    const-string v6, "e."

    invoke-direct {p0, v11, v6}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2848
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6, v7, v1}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto :goto_0

    .line 2853
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    iget-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->mMemoryCachedSettings:Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;

    if-eqz v5, :cond_3

    .line 2854
    iget-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->mMemoryCachedSettings:Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;

    invoke-virtual {v5}, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->clearCache()V

    .line 2856
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    .line 2857
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->createThread()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2858
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    const-string v5, "f."

    :goto_1
    invoke-direct {p0, v11, v5}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2859
    .local v2, "logTag":Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->what:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v8, v9, v2}, Lcom/android/internal/telephony/MobileNetwork;->access$1100(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->notifyThread(IIILjava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    goto/16 :goto_0

    .line 2858
    .end local v2    # "logTag":Ljava/lang/String;
    :cond_4
    const-string v5, "g."

    goto :goto_1

    .line 2865
    :pswitch_5
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->stopReceiveIntents:Z

    .line 2866
    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->receivedIntents:I

    if-gtz v5, :cond_0

    .line 2867
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->finishThread()V

    goto/16 :goto_0

    .line 2824
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 2801
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2802
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 2804
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 2789
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2790
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendEmptyMessage(I)Z

    .line 2792
    :cond_0
    return-void
.end method

.method public setDataRoaming(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    .locals 7
    .param p1, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 2760
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2761
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v2, "roamingSetting"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "b."

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 2765
    :cond_0
    return-void
.end method

.method public setDataRoamingSound(Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 7
    .param p1, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 2775
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2776
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v2, "roamSoundSetting"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "c."

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 2780
    :cond_0
    return-void
.end method

.method public setMobileData(Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 7
    .param p1, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 2734
    iget-boolean v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->beenDestroyed:Z

    if-nez v0, :cond_0

    .line 2735
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->slotNphone:Lcom/android/internal/telephony/MobileNetwork$Selection;

    const-string v2, "dataSetting"

    iget-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->privilege:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "a."

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$NonWidgetHelper;->sendMessage(Landroid/os/Message;)Z

    .line 2739
    :cond_0
    return-void
.end method
