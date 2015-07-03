.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SIMFileHandler"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "efid"    # I

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 89
    const-string v1, "SIMFileHandler"

    const-string v2, "Error: EF Path being returned in null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :sswitch_0
    const-string v0, "3F007F43"

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "3F007F10"

    goto :goto_0

    .line 62
    :sswitch_2
    const-string v0, "3F007F20"

    goto :goto_0

    .line 81
    :sswitch_3
    const-string v0, "3F007F20"

    goto :goto_0

    .line 84
    :sswitch_4
    const-string v0, "3F007FFF5F50"

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x4f84 -> :sswitch_4
        0x6f02 -> :sswitch_0
        0x6f05 -> :sswitch_3
        0x6f11 -> :sswitch_3
        0x6f13 -> :sswitch_3
        0x6f14 -> :sswitch_3
        0x6f15 -> :sswitch_3
        0x6f16 -> :sswitch_3
        0x6f17 -> :sswitch_3
        0x6f18 -> :sswitch_3
        0x6f38 -> :sswitch_2
        0x6f3c -> :sswitch_1
        0x6f3e -> :sswitch_2
        0x6f45 -> :sswitch_3
        0x6f46 -> :sswitch_2
        0x6f50 -> :sswitch_3
        0x6f60 -> :sswitch_3
        0x6f62 -> :sswitch_3
        0x6f7b -> :sswitch_3
        0x6fad -> :sswitch_2
        0x6fc5 -> :sswitch_2
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
    .line 96
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method
