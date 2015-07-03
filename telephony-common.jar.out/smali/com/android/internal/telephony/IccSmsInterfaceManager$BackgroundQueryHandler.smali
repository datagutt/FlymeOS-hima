.class final Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 1307
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1308
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1320
    packed-switch p1, :pswitch_data_0

    .line 1384
    :cond_0
    :goto_0
    return-void

    .line 1322
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsDelettingSIMSMS:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$2002(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 1323
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "got DELETE_MESSAGE_TOKEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1333
    :pswitch_1
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsDelettingSIMSMS:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$2002(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 1334
    const/4 v1, 0x0

    .line 1336
    .local v1, "url":Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isDualGGPhone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1337
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_2

    .line 1338
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "load GSM to db"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string v3, "content://sms/loadallsimsms2db"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1360
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    .line 1361
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1362
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "type"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    # getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBackgroundQueryHandler:Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;
    invoke-static {v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$2100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;

    move-result-object v3

    const/16 v4, 0x4b0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1366
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1367
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "IccSmsInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAllIccSms Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1340
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "url":Landroid/net/Uri;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1341
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "load sub GSM to db"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const-string v3, "content://sms/loadallsubsimsms2db"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 1344
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isDualCGPhone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1345
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_4

    .line 1346
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "load CDMA to db"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-string v3, "content://sms/loadalluimsms2db"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 1348
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1349
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "load sub GSM to db"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const-string v3, "content://sms/loadallsimsms2db"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 1380
    .end local v1    # "url":Landroid/net/Uri;
    :pswitch_2
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "got DELETE_MESSAGE_CGGG_EXTRA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1320
    :pswitch_data_0
    .packed-switch 0x4b1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1311
    packed-switch p1, :pswitch_data_0

    .line 1316
    :goto_0
    return-void

    .line 1313
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsLoadingSIMSMS:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$1902(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    goto :goto_0

    .line 1311
    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
    .end packed-switch
.end method
