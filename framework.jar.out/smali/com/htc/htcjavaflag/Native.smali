.class Lcom/htc/htcjavaflag/Native;
.super Ljava/lang/Object;
.source "HtcDebugFlag.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "htcflag-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native getLanguageFromJNI()Ljava/lang/String;
.end method

.method static native getProjectFromJNI()Ljava/lang/String;
.end method

.method static native htcDebugFlagFromJNI()I
.end method
