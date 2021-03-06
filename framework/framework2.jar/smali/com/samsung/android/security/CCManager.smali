.class public Lcom/samsung/android/security/CCManager;
.super Ljava/lang/Object;
.source "CCManager.java"


# static fields
.field private static final MDFMODE_DISABLED:I = 0x1

.field private static final MDFMODE_ENABLED:I = 0x4

.field private static final MDFMODE_ENFORCING:I = 0x3

.field private static final MDFMODE_NONE:I = 0x0

.field private static final MDFMODE_READY:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMdfDisabled()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-static {}, Lcom/samsung/android/security/CCManager;->updateMdfStatus()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isMdfEnabled()Z
    .registers 2

    .prologue
    .line 42
    invoke-static {}, Lcom/samsung/android/security/CCManager;->updateMdfStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isMdfEnforced()Z
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Lcom/samsung/android/security/CCManager;->updateMdfStatus()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isMdfReady()Z
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Lcom/samsung/android/security/CCManager;->updateMdfStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static updateMdfStatus()I
    .registers 3

    .prologue
    .line 15
    const-string/jumbo v1, "security.mdpp"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "ccmode":Ljava/lang/String;
    const-string v1, "Disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 18
    const/4 v1, 0x1

    .line 26
    :goto_12
    return v1

    .line 19
    :cond_13
    const-string v1, "Ready"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 20
    const/4 v1, 0x2

    goto :goto_12

    .line 21
    :cond_1d
    const-string v1, "Enforcing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 22
    const/4 v1, 0x3

    goto :goto_12

    .line 23
    :cond_27
    const-string v1, "Enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 24
    const/4 v1, 0x4

    goto :goto_12

    .line 26
    :cond_31
    const/4 v1, 0x0

    goto :goto_12
.end method
