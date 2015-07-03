.class public Lcom/htc/lockscreen/framework/wrapper/SettingsWrapper;
.super Ljava/lang/Object;
.source "SettingsWrapper.java"


# static fields
.field public static final Global_LOCK_SOUND:Ljava/lang/String; = "lock_sound"

.field public static final Global_UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"

.field public static final Secure_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final System_LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field public static final TRUSTED_SOUND:Ljava/lang/String; = "trusted_sound"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static secure_getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static system_getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method
