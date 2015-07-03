.class public Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
.super Ljava/lang/Object;
.source "KddiJudgeSmsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KddiSmsTypeRecord"
.end annotation


# instance fields
.field public mAddCondition:B

.field public mAddConditionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;",
            ">;"
        }
    .end annotation
.end field

.field public mKddiSmsAccessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

.field public mSmsType:[B

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I[BB)V
    .locals 1
    .param p2, "actionCode"    # Ljava/lang/String;
    .param p3, "permissionCode"    # Ljava/lang/String;
    .param p4, "responseCode"    # I
    .param p5, "SmsType"    # [B
    .param p6, "addCondition"    # B

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->this$0:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mKddiSmsAccessory:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    .line 427
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    .line 428
    iput-byte p6, p0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddCondition:B

    .line 429
    return-void
.end method
