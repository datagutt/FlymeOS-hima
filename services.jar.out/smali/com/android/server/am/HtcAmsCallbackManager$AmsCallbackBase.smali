.class public Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;
.super Ljava/lang/Object;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmsCallbackBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;
    }
.end annotation


# static fields
.field private static mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;


# instance fields
.field public mIsCallbackImplemented:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    sput-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v2, "onMain"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lcom/android/server/am/ActivityManagerService;

    aput-object v4, v3, v8

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v7

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v1, v0, v7

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v2, "onFinishBooting"

    invoke-direct {v1, v2, v9}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v1, v0, v6

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v2, "onGoingToSleep"

    invoke-direct {v1, v2, v9}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v1, v0, v10

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/4 v1, 0x4

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onWakingUp"

    invoke-direct {v2, v3, v9}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onStartProcessLockedNewPackage"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    const-class v5, Landroid/content/pm/ApplicationInfo;

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/4 v1, 0x6

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onStartProcessLocked"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/4 v1, 0x7

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onRealAppNotResponding"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x8

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onRemoveProcessLocked"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x9

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onAttachApplicationLocked"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0xa

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onGenerateApplicationProvidersLocked"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    const-class v5, Landroid/content/pm/ProviderInfo;

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0xb

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onAddRecentTask"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapTaskRecord;

    aput-object v5, v4, v8

    const-class v5, Lcom/android/server/am/HtcWrapTaskRecord;

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0xc

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onBroadcastIntentLocked"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0xd

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onHandleApplicationCrashV2"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    const-class v5, Ljava/util/HashSet;

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0xe

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onAppDiedLocked"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0xf

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onCrashApplication"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    const-class v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x10

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onCleanUpApplicationRecordLocked"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x11

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onHandleTopAppChanged"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x12

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onHandleActivityResumed"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapActivityRecord;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x13

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onHandleActivityPaused"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapActivityRecord;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x14

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onHibernate"

    invoke-direct {v2, v3, v9}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x15

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onHibernateKillApp"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x16

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onResumeFromHibernate"

    invoke-direct {v2, v3, v9}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x17

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onShutdown"

    invoke-direct {v2, v3, v9}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x18

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "beforeStartActivityUncheckedLocked"

    invoke-direct {v2, v3, v9}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x19

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "afterStartActivityUncheckedLocked"

    invoke-direct {v2, v3, v9}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x1a

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onStartActivityUncheckedLockedNewIntent"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapTaskRecord;

    aput-object v5, v4, v8

    const-class v5, Lcom/android/server/am/HtcWrapTaskRecord;

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x1b

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onGenerateProcessError"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v10

    const/4 v5, 0x4

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const/16 v1, 0x1c

    new-instance v2, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    const-string v3, "onAppDiedLockedV2"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/HtcWrapProcessRecord;

    aput-object v5, v4, v8

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v8, 0x1d

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v4, v8, [Z

    iput-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mIsCallbackImplemented:[Z

    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v8, :cond_4

    sget-object v4, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    aget-object v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mIsCallbackImplemented:[Z

    aput-boolean v7, v4, v1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;->mName:Ljava/lang/String;

    sget-object v6, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;->mParamTypes:[Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mIsCallbackImplemented:[Z

    aput-boolean v7, v4, v1

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager;->access$600()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "Unable to find method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mFuncDescriptors:[Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase$FuncDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "() in callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "HtcAmsCallbackManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const-class v4, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mIsCallbackImplemented:[Z

    aput-boolean v7, v4, v1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;->mIsCallbackImplemented:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    goto :goto_1

    :cond_4
    return-void
.end method
