.class public Lcom/htc/lockscreen/framework/wrapper/PhoneConstantsWrapper;
.super Ljava/lang/Object;
.source "PhoneConstantsWrapper.java"


# static fields
.field public static PIN_GENERAL_FAILURE:I

.field public static PIN_PASSWORD_INCORRECT:I

.field public static PIN_RESULT_SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/htc/lockscreen/framework/wrapper/PhoneConstantsWrapper;->PIN_RESULT_SUCCESS:I

    const/4 v0, 0x1

    sput v0, Lcom/htc/lockscreen/framework/wrapper/PhoneConstantsWrapper;->PIN_PASSWORD_INCORRECT:I

    const/4 v0, 0x2

    sput v0, Lcom/htc/lockscreen/framework/wrapper/PhoneConstantsWrapper;->PIN_GENERAL_FAILURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
