.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 37
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    .line 107
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :sswitch_0
    const-string v0, "3F007F43"

    goto :goto_0

    .line 44
    :sswitch_1
    const-string v0, "3F007FFF5F50"

    goto :goto_0

    .line 83
    :sswitch_2
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 85
    :sswitch_3
    const-string v0, "3F00"

    goto :goto_0

    .line 94
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UsimFileHandler;->DFPhonebookPath:Ljava/lang/String;

    goto :goto_0

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f00 -> :sswitch_3
        0x4f22 -> :sswitch_4
        0x4f23 -> :sswitch_4
        0x4f24 -> :sswitch_4
        0x4f30 -> :sswitch_4
        0x4f84 -> :sswitch_1
        0x6f02 -> :sswitch_0
        0x6f05 -> :sswitch_2
        0x6f07 -> :sswitch_2
        0x6f11 -> :sswitch_2
        0x6f13 -> :sswitch_2
        0x6f14 -> :sswitch_2
        0x6f15 -> :sswitch_2
        0x6f16 -> :sswitch_2
        0x6f17 -> :sswitch_2
        0x6f18 -> :sswitch_2
        0x6f38 -> :sswitch_2
        0x6f3b -> :sswitch_2
        0x6f3c -> :sswitch_2
        0x6f3e -> :sswitch_2
        0x6f40 -> :sswitch_2
        0x6f45 -> :sswitch_2
        0x6f46 -> :sswitch_2
        0x6f49 -> :sswitch_2
        0x6f4b -> :sswitch_2
        0x6f4c -> :sswitch_2
        0x6f4e -> :sswitch_2
        0x6f50 -> :sswitch_2
        0x6f60 -> :sswitch_2
        0x6f62 -> :sswitch_2
        0x6f7b -> :sswitch_2
        0x6fad -> :sswitch_2
        0x6fc5 -> :sswitch_2
        0x6fc6 -> :sswitch_2
        0x6fc7 -> :sswitch_2
        0x6fc8 -> :sswitch_2
        0x6fc9 -> :sswitch_2
        0x6fca -> :sswitch_2
        0x6fcb -> :sswitch_2
        0x6fcd -> :sswitch_2
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method
