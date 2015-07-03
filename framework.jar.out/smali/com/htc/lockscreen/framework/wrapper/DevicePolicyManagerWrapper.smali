.class public Lcom/htc/lockscreen/framework/wrapper/DevicePolicyManagerWrapper;
.super Ljava/lang/Object;
.source "DevicePolicyManagerWrapper.java"


# static fields
.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static LOG_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DevicePolicyManagerReflection"

    sput-object v0, Lcom/htc/lockscreen/framework/wrapper/DevicePolicyManagerWrapper;->LOG_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyguardDisabledFeatures(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumFailedPasswordsForWipe(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method
