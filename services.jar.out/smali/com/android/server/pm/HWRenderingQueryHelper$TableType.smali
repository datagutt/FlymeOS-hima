.class public final enum Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
.super Ljava/lang/Enum;
.source "HWRenderingQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/HWRenderingQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/pm/HWRenderingQueryHelper$TableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

.field public static final enum BlackList:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

.field public static final enum None:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

.field public static final enum UnknownOrError:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

.field public static final enum WhiteList:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    const-string v1, "WhiteList"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->WhiteList:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    new-instance v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    const-string v1, "BlackList"

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->BlackList:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    new-instance v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    const-string v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->None:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    new-instance v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    const-string v1, "UnknownOrError"

    invoke-direct {v0, v1, v5}, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->UnknownOrError:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->WhiteList:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->BlackList:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->None:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->UnknownOrError:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->$VALUES:[Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    .locals 1

    const-class v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    .locals 1

    sget-object v0, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->$VALUES:[Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    invoke-virtual {v0}, [Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    return-object v0
.end method
