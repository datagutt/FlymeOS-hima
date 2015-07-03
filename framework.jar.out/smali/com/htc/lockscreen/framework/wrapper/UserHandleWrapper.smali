.class public Lcom/htc/lockscreen/framework/wrapper/UserHandleWrapper;
.super Ljava/lang/Object;
.source "UserHandleWrapper.java"


# static fields
.field public static final ALL:Landroid/os/UserHandle;

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_OWNER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/UserHandleWrapper;->ALL:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCallingUserId()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public static final getUserHandle(I)Landroid/os/UserHandle;
    .locals 1

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method
