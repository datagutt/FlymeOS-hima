.class public Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateProfilePolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;
    }
.end annotation


# static fields
.field public static final FUNCTION_APN_CHANGED:I = 0x2

.field public static final FUNCTION_DATA_SUB_CHANGED:I = 0x4

.field public static final FUNCTION_SIM_LOADED:I = 0x1


# instance fields
.field public mActionTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPDNInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSlotArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 7732
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7728
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    .line 7729
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    .line 7730
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    .line 7735
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 7736
    const-string v18, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    .line 7741
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 7742
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Action format error"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7772
    :catch_0
    move-exception v14

    .line 7773
    .local v14, "e":Ljava/lang/Exception;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0xa

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    .line 7774
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    .line 7775
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->values()[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 7776
    .local v17, "temp":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->values()[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_6

    const-string v18, "0"

    aput-object v18, v17, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 7738
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "i":I
    .end local v17    # "temp":[Ljava/lang/String;
    :cond_0
    const/16 v18, 0x1

    :try_start_1
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, ""

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    goto :goto_0

    .line 7745
    :cond_1
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    .line 7748
    const-string v18, ";"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 7751
    .local v11, "aList":[Ljava/lang/String;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 7752
    aget-object v12, v11, v15

    .line 7753
    .local v12, "aSubStr":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 7754
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "A format error: i="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 7757
    :cond_2
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 7760
    .local v13, "bList":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v18, v0

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->values()[Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 7761
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "B format error: length incorrect, aSubStr="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 7765
    :cond_3
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_3
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 7766
    aget-object v18, v13, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-gez v18, :cond_4

    .line 7767
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "B format error: wrong value, aSubStr="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 7765
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 7770
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7751
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 7777
    .end local v11    # "aList":[Ljava/lang/String;
    .end local v12    # "aSubStr":Ljava/lang/String;
    .end local v13    # "bList":[Ljava/lang/String;
    .end local v16    # "j":I
    .restart local v14    # "e":Ljava/lang/Exception;
    .restart local v17    # "temp":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7778
    const-string v18, "DCT"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "UpdateProfilePolicy: parse fail, slot="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", action="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", e="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7779
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 7782
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v17    # "temp":[Ljava/lang/String;
    :cond_7
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    .line 7784
    const-string v10, "3"

    .line 7785
    .local v10, "VZW_PROFILE_LABEL":Ljava/lang/String;
    const-string v8, "internet"

    .line 7786
    .local v8, "SPCS_PROFILE_LABEL":Ljava/lang/String;
    const-string v5, "internet_kddi"

    .line 7787
    .local v5, "KDDI_PROFILE_LABEL":Ljava/lang/String;
    const-string v3, "internet_ckt"

    .line 7788
    .local v3, "CKT_PROFILE_LABEL":Ljava/lang/String;
    const-string v7, "internet_mpcs"

    .line 7789
    .local v7, "MPCS_PROFILE_LABEL":Ljava/lang/String;
    const-string v6, "lte"

    .line 7790
    .local v6, "LTEPROFILE_LABEL":Ljava/lang/String;
    const-string v9, "umts"

    .line 7791
    .local v9, "UMTSPROFILE_LABEL":Ljava/lang/String;
    const-string v4, "eHRPD"

    .line 7823
    .local v4, "EHRPDPROFILE_LABEL":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->QCT_MM_CONFIG()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 7825
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->VERIZON_LTE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->LRA_LTE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->OM_LTE_CONFIG()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 7829
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->createPDNInforList(Ljava/lang/String;)V

    .line 7861
    :cond_9
    :goto_4
    return-void

    .line 7833
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->SPRINT_LTE_WPHONE_CONFIG()Z

    move-result v18

    if-nez v18, :cond_b

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CSPIRE_LTE_CONFIG()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 7835
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->createPDNInforList(Ljava/lang/String;)V

    goto :goto_4

    .line 7839
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->KDDI_LTE_CONFIG()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 7840
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->createPDNInforList(Ljava/lang/String;)V

    goto :goto_4

    .line 7844
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->CKT_LTE_CONFIG()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 7845
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->createPDNInforList(Ljava/lang/String;)V

    goto :goto_4

    .line 7849
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->MPCS_LTE_CONFIG()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 7850
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->createPDNInforList(Ljava/lang/String;)V

    goto :goto_4

    .line 7856
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    new-instance v20, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;

    const/16 v21, 0xe

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;ILjava/lang/String;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    new-instance v20, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;

    const/16 v21, 0xd

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;ILjava/lang/String;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    new-instance v20, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;ILjava/lang/String;)V

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method

.method private createPDNInforList(Ljava/lang/String;)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 7865
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7866
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7867
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mPDNInfoList:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$PDNInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7868
    return-void
.end method


# virtual methods
.method public UpdateProfilePolicyCheck(IIIZ)Z
    .locals 8
    .param p1, "slot"    # I
    .param p2, "rat"    # I
    .param p3, "function"    # I
    .param p4, "preferDataSub"    # Z

    .prologue
    .line 7894
    const/4 v0, 0x1

    .line 7895
    .local v0, "bUpdateProfile":Z
    const-string v4, "Update profile"

    .line 7896
    .local v4, "reason":Ljava/lang/String;
    add-int/lit8 v2, p1, -0xa

    .line 7898
    .local v2, "i":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    if-gez v2, :cond_5

    .line 7899
    :cond_0
    const/4 v0, 0x0

    .line 7900
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "mSlotArray is null"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    const-string v5, "mActionTypeList is null"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-gez v2, :cond_4

    const-string v5, "Wrong slot"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7956
    :cond_1
    :goto_3
    const-string v5, "DCT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UpdateProfilePolicyCheck: slot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " function="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bUpdateProfile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7959
    return v0

    .line 7900
    :cond_2
    const-string v5, ""

    goto :goto_0

    :cond_3
    const-string v5, ""

    goto :goto_1

    :cond_4
    const-string v5, ""

    goto :goto_2

    .line 7906
    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 7907
    const/4 v0, 0x0

    .line 7908
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t contain this slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7911
    :cond_6
    const/4 v3, 0x0

    .line 7913
    .local v3, "mAction":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-le v2, v5, :cond_a

    .line 7915
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mAction":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 7921
    .restart local v3    # "mAction":[Ljava/lang/String;
    :goto_4
    if-nez v3, :cond_7

    .line 7922
    const/4 v0, 0x0

    .line 7923
    const-string v4, "Action list is null"

    .line 7927
    :cond_7
    if-eqz v0, :cond_8

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ACTION_TYPE_RADIO_TECH:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ordinal()I

    move-result v5

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p2

    if-eq v5, p2, :cond_8

    .line 7929
    const/4 v0, 0x0

    .line 7930
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t contain this rat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7934
    :cond_8
    if-eqz v0, :cond_9

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ACTION_TYPE_FUNCTION:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ordinal()I

    move-result v5

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p3

    if-eq v5, p3, :cond_9

    .line 7936
    const/4 v0, 0x0

    .line 7937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t contain this function = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7942
    :cond_9
    if-eqz v0, :cond_1

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ACTION_TYPE_FUNCTION:Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy$ActionType;->ordinal()I

    move-result v5

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    if-nez p4, :cond_1

    .line 7946
    const/4 v0, 0x0

    .line 7947
    const-string v4, "Don\'t update by non-preferred data sub slot"

    goto/16 :goto_3

    .line 7918
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mAction":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "mAction":[Ljava/lang/String;
    goto :goto_4

    .line 7950
    .end local v3    # "mAction":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 7951
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 7952
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check failed, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 7874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7875
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7876
    .local v1, "it":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 7878
    .local v3, "s":[Ljava/lang/String;
    const-string v4, "[mSlotArray="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mSlotArray:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mActionTypeList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7882
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 7883
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$UpdateProfilePolicy;->mActionTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7882
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7886
    :cond_0
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7887
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
