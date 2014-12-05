.class Lcom/android/keyguard/KeyguardMultiPersonaAvatar;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiPersonaAvatar.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActiveAlpha:F

.field private final mActiveScale:F

.field private final mActiveTextAlpha:F

.field private final mAvatarShadowY:F

.field private final mFrameColor:I

.field private final mFrameShadowColor:I

.field private mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

.field private mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

.field private final mHighlightColor:I

.field private final mIconSize:F

.field private final mInactiveAlpha:F

.field private final mInactiveTextAlpha:F

.field private mInit:Z

.field private mPersonaImage:Landroid/widget/ImageView;

.field private mPersonaInfo:Landroid/content/pm/PersonaInfo;

.field private final mShadowRadius:F

.field private final mStroke:F

.field private final mTextColor:I

.field private mTouched:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->TAG:Ljava/lang/String;

    .line 41
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mInit:Z

    .line 94
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mTextColor:I

    .line 96
    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mIconSize:F

    .line 97
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mStroke:F

    .line 98
    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mShadowRadius:F

    .line 99
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mFrameColor:I

    .line 100
    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mFrameShadowColor:I

    .line 101
    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mHighlightColor:I

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mActiveTextAlpha:F

    .line 103
    const/high16 v1, 0x3f000000

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mInactiveTextAlpha:F

    .line 104
    const/high16 v1, 0x3fc00000

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mActiveScale:F

    .line 105
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mActiveAlpha:F

    .line 106
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mInactiveAlpha:F

    .line 107
    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mAvatarShadowY:F

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mTouched:Z

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getPersonaInfo()Landroid/content/pm/PersonaInfo;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mPersonaInfo:Landroid/content/pm/PersonaInfo;

    return-object v0
.end method

.method public setPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .prologue
    .line 240
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 241
    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 242
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setPressed(Z)V

    .line 250
    :goto_1c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mPersonaImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 252
    :cond_21
    return-void

    .line 248
    :cond_22
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setPressed(Z)V

    goto :goto_1c
.end method
