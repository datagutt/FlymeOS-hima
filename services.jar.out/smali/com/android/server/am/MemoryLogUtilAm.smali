.class public Lcom/android/server/am/MemoryLogUtilAm;
.super Ljava/lang/Object;
.source "MemoryLogUtilAm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryLogUtilAm$IonInfo;,
        Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    }
.end annotation


# static fields
.field private static final DURATION_DUMP_LOW_MEMORY:I = 0x4e20

.field static final FORCE_DUMP_ADJ:I = 0x4

.field static final MIN_DUMP_ADJ:I = 0x6

.field private static final NUM_EXTRAM_MEMINFO:I = 0x9

.field static final PLATFORM_BRCM:I = 0x3

.field static final PLATFORM_NONE:I = 0x0

.field static final PLATFORM_NV:I = 0x1

.field static final PLATFORM_QCT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemoryLogUtilAm"

.field static mPlatform:I

.field private static sFreeCma:J

.field private static sIONInUse:J

.field private static sIONTotal:J

.field private static sKGSLAlloc:J

.field private static sKernelStack:J

.field private static sLastTimeDumpLowMemory:J

.field private static sPageTables:J

.field private static sSwapFree:J

.field private static sSwapTotal:J

.field private static sZramInUse:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native dumpHeader()Ljava/lang/String;
.end method

.method static dumpLRUProcess(Lcom/android/server/am/ProcessRecord;Z)Ljava/lang/String;
    .locals 19

    const-string v16, ""

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const/4 v13, 0x1

    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v3, "service"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ServiceRecord;

    if-eqz v13, :cond_2

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    sub-long v10, v2, v4

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_3

    const-string v2, " <- "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v2, " For "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    const-string v2, "MemoryLogUtilAm"

    const-string v3, "Error dumpLowMemoryLog"

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v16

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v3, "provider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ContentProviderRecord;

    if-eqz v13, :cond_6

    iget-object v2, v8, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_6
    iget-object v2, v8, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_7

    const-string v2, " <- "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v2, "."

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/MemoryLogUtilAm;->dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto :goto_1
.end method

.method static dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/MemoryLogUtilAm;->dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v4, 0x6

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_1
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v4, 0x5

    if-gt v3, v4, :cond_3

    const-string v3, "com.htc.launcher"

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v7, 0x1

    :cond_3
    sget-wide v4, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    sub-long v22, v10, v4

    if-nez v12, :cond_4

    const-wide/16 v4, 0x4e20

    cmp-long v3, v22, v4

    if-gez v3, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v3, v22, v4

    if-lez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    const/16 v19, 0x0

    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    const-string v3, "MemoryLogUtilAm"

    const-string v4, "LowMemDetail: dump begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LowMemDetail: TOP_APP= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v3, "MemoryLogUtilAm"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_5

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpHeader()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    :goto_3
    if-ltz v13, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/android/server/am/MemoryLogUtilAm;->dumpLRUProcess(Lcom/android/server/am/ProcessRecord;Z)Ljava/lang/String;

    move-result-object v16

    if-eqz v7, :cond_6

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpHeader()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    const-string v3, "MemoryLogUtilAm"

    const-string v4, "Error while dumping low memory logs."

    invoke-static {v3, v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    :try_start_1
    const-string v3, "/proc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v17

    move-object/from16 v8, v17

    array-length v15, v8

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_a

    aget v2, v8, v14

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    const/4 v3, 0x0

    const-string v4, "native"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/MemoryLogUtilAm;->dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    if-eqz v7, :cond_9

    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_a
    if-eqz v7, :cond_b

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemoryLogFromFile(Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpNVAllocationLog()V

    const-string v3, "MemoryLogUtilAm"

    const-string v4, "LowMemDetail: dump end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_b
    :try_start_2
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemoryLogFromFile(Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5
.end method

.method static dumpMemInfo()Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->readExtraMemInfo()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Total, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Free, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getBuffersSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Buffers, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Cached, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getShmemSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Shmem, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSlabSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Slab, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getKernelStack()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB KernelStack, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getPageTable()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB PageTable, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getKGSLAlloc()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB KGSL_ALLOC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getIONToal()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB ION_Total, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getIONInUse()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB ION_InUse, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getFreeCma()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB FreeCma, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapTotal()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB SwapTotal, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapFree()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB SwapFree, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getZramInUse()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB ZramInUse."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MemoryLogUtilAm"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method static dumpMemoryLogFromFile(Z)Ljava/lang/String;
    .locals 36

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v28, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    const-string v17, "/sys/kernel/debug/nvmap/iovmm/clients"

    :cond_0
    :goto_0
    if-eqz v17, :cond_1

    :try_start_0
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v28, Ljava/io/FileReader;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_a

    const-string v29, "MemoryLogUtilAm"

    sget v28, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    move-object/from16 v28, v16

    :goto_2
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_1

    :catch_0
    move-exception v8

    move-object v13, v14

    :goto_3
    :try_start_2
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error logging memory file "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_1

    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_4
    const-string v17, "/d/ion/iommu"

    :try_start_4
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_17

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/io/BufferedReader;

    new-instance v28, Ljava/io/FileReader;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_2
    :goto_5
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_14

    const-string v28, "client              pid"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_10

    const-string v28, "client          creator"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_10

    const-string v28, "\\s+"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x1

    aget-object v28, v25, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x2

    aget-object v29, v25, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_c

    const/16 v28, 0x3

    aget-object v28, v25, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v8

    move-object v13, v14

    :goto_6
    :try_start_6
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error logging memory file "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v13, :cond_3

    :try_start_7
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :cond_3
    :goto_7
    const-string v17, "/d/ion/heaps/system"

    :try_start_8
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_20

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/io/BufferedReader;

    new-instance v28, Ljava/io/FileReader;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_4
    :goto_8
    :try_start_9
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1f

    const-string v28, "\\s+"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    const-string v28, "client              pid"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "total orphaned"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "deferred free"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_18

    :cond_6
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ion-heaps : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ion-heaps : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_8

    :catch_2
    move-exception v8

    move-object v13, v14

    :goto_9
    :try_start_a
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error logging memory file "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v13, :cond_7

    :try_start_b
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :cond_7
    :goto_a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_8
    sget v28, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    const-string v17, "/d/ion/ion-system-extra"

    goto/16 :goto_0

    :cond_9
    :try_start_c
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ion-extra : "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result-object v28

    goto/16 :goto_2

    :cond_a
    if-eqz v14, :cond_21

    :try_start_d
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    move-object v13, v14

    goto/16 :goto_4

    :catch_3
    move-exception v28

    move-object v13, v14

    goto/16 :goto_4

    :catchall_0
    move-exception v28

    :goto_b
    if-eqz v13, :cond_b

    :try_start_e
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    :cond_b
    :goto_c
    throw v28

    :cond_c
    :try_start_f
    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const/16 v30, 0x3

    aget-object v30, v25, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    add-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v28

    move-object v13, v14

    :goto_d
    if-eqz v13, :cond_d

    :try_start_10
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    :cond_d
    :goto_e
    throw v28

    :cond_e
    :try_start_11
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x1

    aget-object v28, v25, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x2

    aget-object v29, v25, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_f

    new-instance v28, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    const/16 v29, 0x1

    aget-object v29, v25, v29

    const/16 v30, 0x2

    aget-object v30, v25, v30

    const/16 v31, 0x3

    aget-object v31, v25, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v28

    invoke-virtual {v12, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v30, v0

    const/16 v29, 0x3

    aget-object v29, v25, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    goto/16 :goto_5

    :cond_10
    const-string v28, "Total bytes currently"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v28, "_"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v15, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v28, v11, 0x1

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "iommu : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "%1$16s %2$16s %3$16d"

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v7, v30, v31

    const/16 v31, 0x1

    aput-object v20, v30, v31

    const/16 v31, 0x2

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v28, "MemoryLogUtilAm"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_11

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_12
    const-string v28, "client          creator"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_13

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "iommu : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "size (hex)"

    const-string v30, "      size"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v28, "MemoryLogUtilAm"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_13
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "iommu : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "iommu : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_14
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_15
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "iommu : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%1$16s %2$16s %3$14d"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mClient:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v31, v32

    const/16 v32, 0x1

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mCreator:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v31, v32

    const/16 v32, 0x2

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v28, "MemoryLogUtilAm"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_15

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_10

    :cond_16
    move-object v13, v14

    :cond_17
    if-eqz v13, :cond_3

    :try_start_12
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_7

    :catch_4
    move-exception v28

    goto/16 :goto_7

    :cond_18
    const/16 v28, 0x3

    :try_start_13
    aget-object v28, v25, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    new-instance v21, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    const/16 v28, 0x1

    aget-object v28, v25, v28

    const/16 v29, 0x2

    aget-object v29, v25, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    add-long v28, v28, v18

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_8

    :catchall_2
    move-exception v28

    move-object v13, v14

    :goto_11
    if-eqz v13, :cond_19

    :try_start_14
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    :cond_19
    :goto_12
    throw v28

    :cond_1a
    :try_start_15
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_1b
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_1e

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1c
    :goto_13
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    const-string v28, "ion-heaps : %1$16s  %2$15d  %3$15d"

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual {v15}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getProcessName()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-virtual {v15}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getPid()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const-string v28, "MemoryLogUtilAm"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1c

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_1d
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->clear()V

    :cond_1e
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ion-heaps : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ion-heaps : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_8

    :cond_1f
    move-object v13, v14

    :cond_20
    if-eqz v13, :cond_7

    :try_start_16
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5

    goto/16 :goto_a

    :catch_5
    move-exception v28

    goto/16 :goto_a

    :catch_6
    move-exception v28

    goto/16 :goto_4

    :catch_7
    move-exception v29

    goto/16 :goto_c

    :catch_8
    move-exception v28

    goto/16 :goto_7

    :catch_9
    move-exception v29

    goto/16 :goto_e

    :catch_a
    move-exception v28

    goto/16 :goto_a

    :catch_b
    move-exception v29

    goto/16 :goto_12

    :catchall_3
    move-exception v28

    goto/16 :goto_11

    :catch_c
    move-exception v8

    goto/16 :goto_9

    :catchall_4
    move-exception v28

    goto/16 :goto_d

    :catch_d
    move-exception v8

    goto/16 :goto_6

    :catchall_5
    move-exception v28

    move-object v13, v14

    goto/16 :goto_b

    :catch_e
    move-exception v8

    goto/16 :goto_3

    :cond_21
    move-object v13, v14

    goto/16 :goto_4
.end method

.method static dumpNVAllocationLog()V
    .locals 24

    sget v19, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v14, Ljava/io/File;

    const-string v19, "/sys/kernel/debug/nvmap/iovmm/allocations"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v12, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x1

    const/4 v15, 0x0

    const-string v16, ""

    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v22, "\\s+"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    const/16 v19, 0x2

    aget-object v19, v17, v19

    const-string v22, "PID"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    const/16 v19, 0x0

    aget-object v19, v17, v19

    const-string v22, "total"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    const-string v22, "MemoryLogUtilAm"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LowMemDetail: NVMapInfo, Type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v23, ", Size: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v5

    move-object v7, v8

    :goto_3
    :try_start_2
    const-string v19, "MemoryLogUtilAm"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error logging mvmap allocation file "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v19

    goto/16 :goto_0

    :cond_3
    :try_start_4
    const-string v19, "MemoryLogUtilAm"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LowMemDetail: NVMapInfo, Total: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x2

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    if-eqz v8, :cond_b

    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v7, v8

    goto/16 :goto_0

    :cond_5
    const/16 v19, 0x0

    :try_start_6
    aget-object v19, v17, v19

    const-string v22, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    if-nez v9, :cond_7

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    const-string v22, "MemoryLogUtilAm"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LowMemDetail: NVMapInfo, Type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v23, ", Size: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v19

    move-object v7, v8

    :goto_5
    if-eqz v7, :cond_6

    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_6
    throw v19

    :cond_7
    :try_start_8
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const/16 v19, 0x1

    aget-object v16, v17, v19

    const/16 v19, 0x2

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v19, 0x3

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const-string v19, "MemoryLogUtilAm"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LowMemDetail: NVMapInfo, processName: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", pid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", total: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    const-string v18, ""

    const/16 v19, 0x2

    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v11, v0, :cond_9

    const-string v18, "0"

    :goto_7
    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-nez v13, :cond_a

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    const/16 v19, 0x2

    aget-object v19, v17, v19

    const/16 v22, 0x0

    add-int/lit8 v23, v11, -0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_7

    :cond_a
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v22, v22, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v19

    move-object v7, v8

    goto/16 :goto_0

    :catch_3
    move-exception v22

    goto/16 :goto_6

    :catchall_1
    move-exception v19

    goto/16 :goto_5

    :catch_4
    move-exception v5

    goto/16 :goto_3

    :cond_b
    move-object v7, v8

    goto/16 :goto_0
.end method

.method public static final native dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public static final native getDetailRegionMemory(ILjava/lang/String;)[I
.end method

.method private static getFreeCma()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    return-wide v0
.end method

.method private static getIONInUse()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    return-wide v0
.end method

.method private static getIONToal()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    return-wide v0
.end method

.method private static getKGSLAlloc()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    return-wide v0
.end method

.method private static getKernelStack()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    return-wide v0
.end method

.method private static getPageTable()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    return-wide v0
.end method

.method public static final native getRegionMemory(ILjava/lang/String;)J
.end method

.method private static getSwapFree()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    return-wide v0
.end method

.method private static getSwapTotal()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    return-wide v0
.end method

.method private static getValue(Ljava/lang/String;)J
    .locals 4

    const-string v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private static getZramInUse()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    return-wide v0
.end method

.method static init()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/debug/nvmap/iovmm/clients"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libbrcm_ril.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0
.end method

.method private static readExtraMemInfo()V
    .locals 10

    const-wide/16 v8, 0x0

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/meminfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    const/16 v5, 0x9

    if-ge v2, v5, :cond_c

    const-string v5, "KernelStack:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "PageTables:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kgslalloc:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kgsl_alloc:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-string v5, "IonTotal:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "ION_ALLOC:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ioninuse:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const-string v5, "FreeCma:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "CmaFree:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    const-string v5, "SwapTotal:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    const-string v5, "SwapFree:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    const-string v5, "ZramAlloc:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz v1, :cond_13

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    :cond_d
    :goto_1
    sget-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_e

    :try_start_3
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/block/zram0/mem_used_total"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v5

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_e

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_e
    :goto_4
    return-void

    :catch_1
    move-exception v5

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v5

    :goto_5
    if-eqz v0, :cond_d

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_6
    if-eqz v0, :cond_f

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_f
    :goto_7
    throw v5

    :cond_10
    move-object v0, v1

    :cond_11
    if-eqz v0, :cond_e

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    goto :goto_4

    :catchall_1
    move-exception v5

    :goto_8
    if-eqz v0, :cond_12

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_12
    :goto_9
    throw v5

    :catch_5
    move-exception v6

    goto :goto_7

    :catch_6
    move-exception v5

    goto :goto_4

    :catch_7
    move-exception v6

    goto :goto_9

    :catchall_2
    move-exception v5

    move-object v0, v1

    goto :goto_8

    :catch_8
    move-exception v5

    goto :goto_3

    :catchall_3
    move-exception v5

    move-object v0, v1

    goto :goto_6

    :catch_9
    move-exception v5

    move-object v0, v1

    goto :goto_5

    :cond_13
    move-object v0, v1

    goto :goto_1
.end method
