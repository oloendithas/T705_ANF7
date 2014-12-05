.class public final Lcom/android/keyguard/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BoundedLayout:[I

.field public static final KeyguardGlowStripView:[I

.field public static final KeyguardSecurityViewFlipper_Layout:[I

.field public static final MultiPaneChallengeLayout:[I

.field public static final MultiPaneChallengeLayout_Layout:[I

.field public static final NumPadKey:[I

.field public static final PagedView:[I

.field public static final SlidingChallengeLayout_Layout:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 15864
    new-array v0, v3, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/android/keyguard/R$styleable;->BoundedLayout:[I

    .line 15915
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/android/keyguard/R$styleable;->KeyguardGlowStripView:[I

    .line 15984
    new-array v0, v3, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/android/keyguard/R$styleable;->KeyguardSecurityViewFlipper_Layout:[I

    .line 16029
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100c4

    aput v2, v0, v1

    sput-object v0, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout:[I

    .line 16059
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout_Layout:[I

    .line 16197
    new-array v0, v3, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/android/keyguard/R$styleable;->NumPadKey:[I

    .line 16239
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_74

    sput-object v0, Lcom/android/keyguard/R$styleable;->PagedView:[I

    .line 16306
    new-array v0, v3, [I

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/android/keyguard/R$styleable;->SlidingChallengeLayout_Layout:[I

    return-void

    .line 15864
    nop

    :array_42
    .array-data 4
        0x7f01000e
        0x7f01000f
    .end array-data

    .line 15915
    :array_4a
    .array-data 4
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
    .end array-data

    .line 15984
    :array_56
    .array-data 4
        0x7f010009
        0x7f01000b
    .end array-data

    .line 16059
    :array_5e
    .array-data 4
        0x7f010000
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    .line 16197
    :array_6c
    .array-data 4
        0x7f01000c
        0x7f01000d
    .end array-data

    .line 16239
    :array_74
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data

    .line 16306
    :array_7e
    .array-data 4
        0x7f010008
        0x7f010009
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
