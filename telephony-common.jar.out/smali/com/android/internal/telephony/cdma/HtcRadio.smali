.class public Lcom/android/internal/telephony/cdma/HtcRadio;
.super Landroid/os/Handler;
.source "HtcRadio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;
    }
.end annotation


# static fields
.field private static final DEBUG_DETAIL:Z

.field private static ERI_ALERT_SOUND_ID_ENABLE:Z = false

.field public static final ERI_EMPTY_TEXT:Ljava/lang/String; = ""

.field private static final EVENT_ERI_UPDATE:I = 0x3

.field private static final LOG_PREFIX:Ljava/lang/String; = "[HtcRadio] "

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final SKU_ID:I


# instance fields
.field private alertSoundId:I

.field private bannerStyle:I

.field private callGuard:I

.field private carrierId:I

.field private dataRoamingGuard:I

.field private distinctiveRinger:I

.field private eriText:Ljava/lang/String;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

.field private mRoamingType:I

.field private roamingIconIndicator:I

.field private roamingIconMode:I

.field private timeOfThisEri:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcRadio;->DEBUG_DETAIL:Z

    .line 64
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    sput v0, Lcom/android/internal/telephony/cdma/HtcRadio;->SKU_ID:I

    .line 792
    sget v0, Lcom/android/internal/telephony/cdma/HtcRadio;->SKU_ID:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcRadio;->ERI_ALERT_SOUND_ID_ENABLE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .param p1, "p"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 95
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcRadio;->initEriInfo()V

    .line 111
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    return-void
.end method

.method private eriUpdate(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 797
    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_0

    .line 798
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HtcRadio] ERI exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :goto_0
    return-void

    .line 801
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    .line 802
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;

    .line 803
    .local v2, "htcEriUpdate":Lcom/android/internal/telephony/cdma/CdmaERIInfo;
    const/4 v4, 0x0

    .line 805
    .local v4, "updateIcon":Z
    const/4 v1, 0x0

    .line 809
    .local v1, "flashPlmn":Z
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    .line 812
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    packed-switch v9, :pswitch_data_0

    .line 828
    :cond_1
    :goto_1
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 829
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param3:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 831
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    packed-switch v9, :pswitch_data_1

    .line 843
    :goto_2
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param1:I

    packed-switch v9, :pswitch_data_2

    .line 853
    :cond_2
    :goto_3
    const/4 v6, -0x1

    .line 854
    .local v6, "value_CallGuard":I
    const/4 v8, -0x1

    .line 855
    .local v8, "value_DistinctiveRinger":I
    const/4 v7, -0x1

    .line 856
    .local v7, "value_DataRoamingGuard":I
    const/4 v5, -0x1

    .line 857
    .local v5, "value_BannerStyle":I
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 859
    :cond_3
    iget v6, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param1:I

    .line 860
    iget v8, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param2:I

    .line 861
    iget v5, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param3:I

    .line 862
    iget v7, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->param4:I

    .line 864
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->icon_img_id:I

    packed-switch v9, :pswitch_data_3

    .line 879
    :goto_4
    packed-switch v5, :pswitch_data_4

    .line 893
    :cond_4
    :goto_5
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->roaming_type:I

    iput v9, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    .line 894
    iput v6, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    .line 895
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HtcRadio] eriUpdate, mRoamingType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " callGuard="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriDistinctiveRinger(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 901
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriBannerStyle(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 905
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriDataRoamingGuard(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 911
    :cond_7
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriCarrierId(I)Z

    .line 922
    sget v9, Lcom/android/internal/telephony/cdma/HtcRadio;->SKU_ID:I

    const/16 v10, 0x71

    if-ne v9, v10, :cond_8

    .line 923
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->fixEriTextForLra(Lcom/android/internal/telephony/cdma/CdmaERIInfo;)V

    .line 926
    :cond_8
    iget-object v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->text:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriText(Ljava/lang/String;)V

    .line 927
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    if-eqz v9, :cond_a

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    .line 931
    .local v0, "bannerFromEri":Ljava/lang/String;
    iget v9, v2, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->carrier_id:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    .line 932
    const/4 v0, 0x0

    .line 934
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    if-eqz v1, :cond_c

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v10, v11, v0, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromEri(Ljava/util/Date;Ljava/lang/String;I)V

    .line 938
    .end local v0    # "bannerFromEri":Ljava/lang/String;
    :cond_a
    if-eqz v4, :cond_b

    .line 939
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 944
    :cond_b
    iget v9, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d

    const/4 v3, 0x1

    .line 965
    .local v3, "isRoamingIcon":Z
    :goto_7
    goto/16 :goto_0

    .line 814
    .end local v3    # "isRoamingIcon":Z
    .end local v5    # "value_BannerStyle":I
    .end local v6    # "value_CallGuard":I
    .end local v7    # "value_DataRoamingGuard":I
    .end local v8    # "value_DistinctiveRinger":I
    :pswitch_0
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v4

    .line 815
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v9

    or-int/2addr v4, v9

    .line 816
    goto/16 :goto_1

    .line 818
    :pswitch_1
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v4

    .line 819
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v9

    or-int/2addr v4, v9

    .line 820
    goto/16 :goto_1

    .line 822
    :pswitch_2
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v4

    .line 823
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v9

    or-int/2addr v4, v9

    goto/16 :goto_1

    .line 833
    :pswitch_3
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v4

    .line 834
    goto/16 :goto_2

    .line 836
    :pswitch_4
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v4

    .line 837
    goto/16 :goto_2

    .line 839
    :pswitch_5
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v4

    goto/16 :goto_2

    .line 845
    :pswitch_6
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v9

    or-int/2addr v4, v9

    .line 846
    goto/16 :goto_3

    .line 848
    :pswitch_7
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v9

    or-int/2addr v4, v9

    goto/16 :goto_3

    .line 866
    .restart local v5    # "value_BannerStyle":I
    .restart local v6    # "value_CallGuard":I
    .restart local v7    # "value_DataRoamingGuard":I
    .restart local v8    # "value_DistinctiveRinger":I
    :pswitch_8
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v4

    .line 867
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v9

    or-int/2addr v4, v9

    .line 868
    goto/16 :goto_4

    .line 870
    :pswitch_9
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v4

    .line 871
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v9

    or-int/2addr v4, v9

    .line 872
    goto/16 :goto_4

    .line 874
    :pswitch_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIndicator(I)Z

    move-result v4

    .line 875
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcRadio;->setCdmaEriRoamingIconMode(I)Z

    move-result v9

    or-int/2addr v4, v9

    goto/16 :goto_4

    .line 888
    :pswitch_b
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 934
    .restart local v0    # "bannerFromEri":Ljava/lang/String;
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 944
    .end local v0    # "bannerFromEri":Ljava/lang/String;
    :cond_d
    const/4 v3, 0x0

    goto :goto_7

    .line 812
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 831
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 843
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 864
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 879
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_b
    .end packed-switch
.end method

.method private fixEriTextForLra(Lcom/android/internal/telephony/cdma/CdmaERIInfo;)V
    .locals 3
    .param p1, "eriInfo"    # Lcom/android/internal/telephony/cdma/CdmaERIInfo;

    .prologue
    .line 1183
    iget v0, p1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1184
    :cond_0
    const-string v0, "Digital Roaming"

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->text:Ljava/lang/String;

    .line 1188
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcRadio;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 1189
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] fixEriTextForLra, text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eri_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_2
    return-void

    .line 1185
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->eri_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1186
    sget-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->HtcRadio:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBanner(Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaERIInfo;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private initEriInfo()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    .line 779
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 780
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 781
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    .line 783
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    .line 784
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    .line 785
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 786
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    .line 787
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    .line 788
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    .line 789
    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    .line 790
    return-void
.end method

.method private setCdmaEriBannerStyle(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1043
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1044
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1045
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    .line 1047
    :cond_0
    return v0

    .line 1043
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriCarrierId(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1027
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1028
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1029
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    .line 1031
    :cond_0
    return v0

    .line 1027
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriDataRoamingGuard(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1051
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1052
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1053
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    .line 1055
    :cond_0
    return v0

    .line 1051
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriDistinctiveRinger(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1035
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1036
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1037
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    .line 1039
    :cond_0
    return v0

    .line 1035
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriRoamingIconMode(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 980
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 981
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 982
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 984
    :cond_0
    return v0

    .line 980
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriRoamingIndicator(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 970
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] setCdmaEriRoamingIndicator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 973
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 974
    iput p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 976
    :cond_0
    return v0

    .line 972
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCdmaEriText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1020
    invoke-static {p1}, Lcom/android/internal/telephony/HtcBuildUtils;->checkSprintChameleonNoBrandedOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1022
    if-eqz p1, :cond_0

    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    .line 1023
    return-void

    .line 1022
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForERIInfo(Landroid/os/Handler;)V

    .line 146
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "CDMA"

    const-string v1, "[HtcRadio] finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public getCdmaEriAlertSoundId(Z)I
    .locals 4
    .param p1, "inService"    # Z

    .prologue
    .line 1127
    const/4 v0, -0x1

    .line 1128
    .local v0, "soundId":I
    sget-boolean v1, Lcom/android/internal/telephony/cdma/HtcRadio;->ERI_ALERT_SOUND_ID_ENABLE:Z

    if-eqz v1, :cond_0

    .line 1129
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->alertSoundId:I

    .line 1131
    :cond_0
    :goto_0
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcRadio] getCdmaEriAlertSoundId, soundId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return v0

    .line 1129
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getCdmaEriBannerStyle()I
    .locals 1

    .prologue
    .line 1170
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->bannerStyle:I

    return v0
.end method

.method public getCdmaEriCallGuard()I
    .locals 1

    .prologue
    .line 1154
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->callGuard:I

    return v0
.end method

.method public getCdmaEriCarrierId()I
    .locals 1

    .prologue
    .line 1119
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->carrierId:I

    return v0
.end method

.method public getCdmaEriDataRoamingGuard()I
    .locals 1

    .prologue
    .line 1178
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->dataRoamingGuard:I

    return v0
.end method

.method public getCdmaEriDistinctiveRinger()I
    .locals 1

    .prologue
    .line 1162
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->distinctiveRinger:I

    return v0
.end method

.method public getCdmaEriRoamingIconMode()I
    .locals 2

    .prologue
    .line 1097
    const/4 v0, 0x0

    .line 1098
    .local v0, "value":I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    if-ltz v1, :cond_0

    .line 1099
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconMode:I

    .line 1101
    :cond_0
    return v0
.end method

.method public getCdmaEriRoamingIndicator()I
    .locals 2

    .prologue
    .line 1085
    const/4 v0, 0x1

    .line 1086
    .local v0, "value":I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    if-ltz v1, :cond_0

    .line 1087
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->roamingIconIndicator:I

    .line 1089
    :cond_0
    return v0
.end method

.method public getCdmaEriRoamingType()I
    .locals 3

    .prologue
    .line 1143
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] getCdmaEriRoamingType, mRoamingType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mRoamingType:I

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1110
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] getCdmaEriText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->eriText:Ljava/lang/String;

    return-object v0
.end method

.method public getEriTimeStamp()Ljava/util/Date;
    .locals 8

    .prologue
    .line 1072
    const/4 v2, 0x0

    .line 1073
    .local v2, "eriTimeStamp":Ljava/util/Date;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 1074
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1075
    .local v0, "currentTime":J
    new-instance v2, Ljava/util/Date;

    .end local v2    # "eriTimeStamp":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->timeOfThisEri:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v0, v6

    sub-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1077
    .end local v0    # "currentTime":J
    :cond_0
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_1

    .line 166
    :cond_0
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void

    .line 170
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    const-string v0, "CDMA"

    const-string v1, "[HtcRadio] ERIInfo"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcRadio;->eriUpdate(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public updateDataState(Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;)V
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .prologue
    .line 632
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcRadio] updateDataState, old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio;->mDataState:Lcom/android/internal/telephony/cdma/HtcRadio$DataConnectionState;

    .line 754
    return-void
.end method
