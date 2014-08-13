.class public interface abstract Lcom/diotek/ime/framework/effect/VibrateController;
.super Ljava/lang/Object;
.source "VibrateController.java"


# static fields
.field public static final VIBE_KEY_BACKSPACE_DOWN:[B

.field public static final VIBE_KEY_BACKSPACE_UP:[B

.field public static final VIBE_KEY_FUNCTION:[B

.field public static final VIBE_KEY_FUNCTION_SPACE_DOWN:[B

.field public static final VIBE_KEY_FUNCTION_SPACE_UP:[B

.field public static final VIBE_KEY_FUNCTION_TABLET:[B

.field public static final VIBE_KEY_FUNCTION_TABLET_10INCH:[B

.field public static final VIBE_KEY_FUNCTION_TABLET_8INCH:[B

.field public static final VIBE_KEY_F_AND_J:[B

.field public static final VIBE_KEY_F_AND_J_ENHANCED:[B

.field public static final VIBE_KEY_F_AND_J_TABLET_10INCH:[B

.field public static final VIBE_KEY_F_AND_J_TABLET_8INCH:[B

.field public static final VIBE_KEY_GENERAL:[B

.field public static final VIBE_KEY_GENERAL_DOWN:[B

.field public static final VIBE_KEY_GENERAL_TABLET:[B

.field public static final VIBE_KEY_GENERAL_TABLET_10INCH:[B

.field public static final VIBE_KEY_GENERAL_TABLET_8INCH:[B

.field public static final VIBE_KEY_GENERAL_UP:[B

.field public static final VIBE_KEY_QWERTY_NUMBER_DOWN:[B

.field public static final VIBE_KEY_QWERTY_NUMBER_UP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x2c

    const/16 v4, 0x24

    const/16 v3, 0x3c

    const/16 v2, 0x12

    const/16 v1, 0x1c

    .line 9
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_GENERAL:[B

    .line 16
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_FUNCTION:[B

    .line 23
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_GENERAL_TABLET:[B

    .line 31
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_FUNCTION_TABLET:[B

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_GENERAL_TABLET_10INCH:[B

    .line 47
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_FUNCTION_TABLET_10INCH:[B

    .line 55
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_GENERAL_TABLET_8INCH:[B

    .line 63
    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_FUNCTION_TABLET_8INCH:[B

    .line 71
    new-array v0, v3, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_F_AND_J:[B

    .line 83
    new-array v0, v3, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_F_AND_J_ENHANCED:[B

    .line 95
    new-array v0, v3, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_F_AND_J_TABLET_10INCH:[B

    .line 107
    new-array v0, v3, [B

    fill-array-data v0, :array_b

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_F_AND_J_TABLET_8INCH:[B

    .line 119
    new-array v0, v2, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_GENERAL_UP:[B

    .line 126
    new-array v0, v5, [B

    fill-array-data v0, :array_d

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_GENERAL_DOWN:[B

    .line 136
    new-array v0, v2, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_BACKSPACE_UP:[B

    .line 143
    new-array v0, v5, [B

    fill-array-data v0, :array_f

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_BACKSPACE_DOWN:[B

    .line 153
    new-array v0, v4, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_QWERTY_NUMBER_UP:[B

    .line 162
    new-array v0, v4, [B

    fill-array-data v0, :array_11

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_QWERTY_NUMBER_DOWN:[B

    .line 171
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_FUNCTION_SPACE_UP:[B

    .line 179
    new-array v0, v1, [B

    fill-array-data v0, :array_13

    sput-object v0, Lcom/diotek/ime/framework/effect/VibrateController;->VIBE_KEY_FUNCTION_SPACE_DOWN:[B

    return-void

    .line 9
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
    .end array-data

    .line 16
    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x2t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x32t
    .end array-data

    .line 23
    nop

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x1et
        0x0t
    .end array-data

    .line 31
    :array_3
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x20t
        0x2t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x7et
        0x0t
    .end array-data

    .line 39
    :array_4
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x62t
        0x0t
    .end array-data

    .line 47
    :array_5
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x62t
        0x0t
    .end array-data

    .line 55
    :array_6
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x20t
        0x3t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x22t
        0x0t
    .end array-data

    .line 63
    :array_7
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x20t
        0x3t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x22t
        0x0t
    .end array-data

    .line 71
    :array_8
    .array-data 1
        0x1t
        0x0t
        0x3t
        0x0t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x1dt
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x3ct
        -0x1t
        0x30t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x40t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
        0x0t
    .end array-data

    .line 83
    :array_9
    .array-data 1
        0x1t
        0x0t
        0x3t
        0x0t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x1dt
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x3ct
        -0x1t
        0x30t
        0x0t
        0x0t
        0x39t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x3t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x70t
        0x30t
        0x0t
        0x0t
        0x2et
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x2t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x1et
        0x0t
    .end array-data

    .line 95
    :array_a
    .array-data 1
        0x1t
        0x0t
        0x3t
        0x0t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x1dt
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x3ct
        -0x1t
        0x30t
        0x0t
        0x0t
        0x46t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x60t
        0x30t
        0x0t
        0x0t
        0x23t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x2t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x32t
        0x0t
    .end array-data

    .line 107
    :array_b
    .array-data 1
        0x1t
        0x0t
        0x3t
        0x0t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x1dt
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x3ct
        -0x1t
        0x30t
        0x0t
        0x0t
        0x37t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x3t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x70t
        0x30t
        0x0t
        0x0t
        0x1et
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x1et
        0x0t
    .end array-data

    .line 119
    :array_c
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x1et
    .end array-data

    .line 126
    nop

    :array_d
    .array-data 1
        0x2t
        0x0t
        0x3t
        0x0t
        0x24t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x15t
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x20t
        0x2t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x7et
        0x20t
        0x2t
        0x10t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x7et
        0x0t
    .end array-data

    .line 136
    :array_e
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x1et
    .end array-data

    .line 143
    nop

    :array_f
    .array-data 1
        0x2t
        0x0t
        0x3t
        0x0t
        0x24t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x15t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x20t
        0x2t
        0x10t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x7et
        0x20t
        0x2t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x7et
        0x0t
    .end array-data

    .line 153
    :array_10
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x30t
        0x0t
        0x0t
        0x19t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x6et
        0x0t
    .end array-data

    .line 162
    :array_11
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x30t
        0x0t
        0x0t
        0x23t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x2t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x32t
        0x0t
    .end array-data

    .line 171
    :array_12
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x1et
        0x0t
    .end array-data

    .line 179
    :array_13
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x20t
        0x2t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x2et
        0x0t
    .end array-data
.end method


# virtual methods
.method public abstract initialize()V
.end method

.method public abstract release()V
.end method

.method public abstract setMagnitudeLevel(I)V
.end method

.method public abstract setVibrateOn(Z)V
.end method

.method public abstract updateVibrateFromSystemSettings()V
.end method

.method public abstract vibrate(IZ)V
.end method

.method public abstract vibrate(IZZ)V
.end method

.method public abstract vibrateUseWeakenMagnitude(IZZ)V
.end method
