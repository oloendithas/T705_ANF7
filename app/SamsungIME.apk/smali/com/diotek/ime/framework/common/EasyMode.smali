.class public Lcom/diotek/ime/framework/common/EasyMode;
.super Ljava/lang/Object;
.source "EasyMode.java"


# static fields
.field public static final BASIC_MODE_RATIO:F = 1.0f

.field private static final DEBUG:Z = false

.field public static EASY_MODE_RATIO:F = 0.0f

.field private static final EASY_MODE_SWITCH_VALUE_FROM_SETTNG_PROVIDER:Ljava/lang/String; = "easy_mode_switch"

.field private static final MODE_BASIC:I = 0x1

.field private static mEasyModeRatio:F

.field public static mEasyModeStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/framework/common/EasyMode;->mEasyModeStatus:Z

    .line 18
    const/high16 v0, 0x3fc00000

    sput v0, Lcom/diotek/ime/framework/common/EasyMode;->EASY_MODE_RATIO:F

    .line 20
    sget v0, Lcom/diotek/ime/framework/common/EasyMode;->EASY_MODE_RATIO:F

    sput v0, Lcom/diotek/ime/framework/common/EasyMode;->mEasyModeRatio:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEasyModeRatio()F
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/diotek/ime/framework/common/EasyMode;->mEasyModeRatio:F

    return v0
.end method

.method public static getEasyModeStandardRatio()F
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/diotek/ime/framework/common/EasyMode;->EASY_MODE_RATIO:F

    return v0
.end method

.method public static getEasyModeStatus()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/diotek/ime/framework/common/EasyMode;->mEasyModeStatus:Z

    return v0
.end method

.method public static isDeviceEasyModeOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 30
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setEasyModeStandardRatio(F)V
    .locals 0
    .param p0, "value"    # F

    .prologue
    .line 63
    sput p0, Lcom/diotek/ime/framework/common/EasyMode;->EASY_MODE_RATIO:F

    .line 64
    return-void
.end method

.method public static setEasyModeStatus(Z)V
    .locals 1
    .param p0, "status"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lcom/diotek/ime/framework/common/EasyMode;->mEasyModeStatus:Z

    .line 39
    if-eqz p0, :cond_0

    .line 40
    sget v0, Lcom/diotek/ime/framework/common/EasyMode;->EASY_MODE_RATIO:F

    sput v0, Lcom/diotek/ime/framework/common/EasyMode;->mEasyModeRatio:F

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    const/high16 v0, 0x3f800000

    sput v0, Lcom/diotek/ime/framework/common/EasyMode;->mEasyModeRatio:F

    goto :goto_0
.end method
