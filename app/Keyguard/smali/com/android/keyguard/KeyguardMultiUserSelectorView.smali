.class public Lcom/android/keyguard/KeyguardMultiUserSelectorView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mIsListClosed:Z


# instance fields
.field private mActiveUser:Landroid/content/pm/UserInfo;

.field private mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

.field private mActiveUserAvatarSubstituted:Z

.field private mArrowBtn:Landroid/widget/ImageButton;

.field private mArrowButtonListener:Landroid/view/View$OnClickListener;

.field private mAvatarLeftMargin:I

.field private mAvatarWidth:I

.field private mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

.field mOrderAddedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPM:Landroid/os/PowerManager;

.field private mUsersGrid:Landroid/view/ViewGroup;

.field private mViewAnimationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->init(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->init(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatarSubstituted:Z

    .line 88
    iput v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarLeftMargin:I

    .line 89
    iput v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    .line 321
    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$3;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    .line 521
    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$6;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowButtonListener:Landroid/view/View$OnClickListener;

    .line 540
    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->init(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setMobileDataMultiUser()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->clickArrowButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardMultiUserSelectorView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardMultiUserSelectorView;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->startMoveAnimation(ZI)V

    return-void
.end method

.method private addArrowButton(Z)V
    .registers 4
    .param p1, "isListClosed"    # Z

    .prologue
    .line 341
    const/4 v0, 0x1

    if-ne p1, v0, :cond_28

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 347
    :goto_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 348
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    :cond_20
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 352
    return-void

    .line 344
    :cond_28
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_b
.end method

.method private clickArrowButton()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 530
    sget-boolean v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    if-ne v1, v0, :cond_17

    .line 531
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 532
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    :goto_10
    sget-boolean v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    if-nez v1, :cond_1e

    :goto_14
    sput-boolean v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    .line 538
    return-void

    .line 534
    :cond_17
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_10

    .line 537
    :cond_1e
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .registers 7
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v4, 0x0

    .line 329
    const v2, 0x7f03001d

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, p0, p1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->fromXml(ILandroid/content/Context;Lcom/android/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v1

    .line 331
    .local v1, "uv":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 332
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 334
    .local v0, "ll":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarLeftMargin:I

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 335
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/Space;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    return-object v1
.end method

.method private createAnimation(ZIILandroid/content/pm/UserInfo;)Landroid/view/animation/AnimationSet;
    .registers 18
    .param p1, "expanding"    # Z
    .param p2, "userSize"    # I
    .param p3, "userIndex"    # I
    .param p4, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 247
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 249
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_78

    move-object/from16 v0, p4

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_78

    .line 250
    new-instance v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Z)V

    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 279
    :goto_1c
    const/4 v11, 0x0

    .line 280
    .local v11, "fromX":I
    const/4 v12, 0x0

    .line 282
    .local v12, "toX":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_93

    .line 283
    sub-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarLeftMargin:I

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I

    add-int/2addr v2, v3

    mul-int v11, v1, v2

    .line 288
    :goto_2c
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    int-to-float v3, v11

    const/4 v4, 0x0

    int-to-float v5, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 294
    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 295
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 297
    const-string v1, "KeyguardMultiUserSelectorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animation start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : from = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-object v10

    .line 272
    .end local v11    # "fromX":I
    .end local v12    # "toX":I
    :cond_78
    const/4 v1, 0x1

    if-ne p1, v1, :cond_87

    .line 273
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1c

    .line 275
    :cond_87
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1c

    .line 285
    .restart local v11    # "fromX":I
    .restart local v12    # "toX":I
    :cond_93
    sub-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarLeftMargin:I

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I

    add-int/2addr v2, v3

    mul-int v12, v1, v2

    goto :goto_2c
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    if-nez p1, :cond_3

    .line 124
    :goto_2
    return-void

    .line 118
    :cond_3
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mPM:Landroid/os/PowerManager;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarLeftMargin:I

    .line 123
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->initMobileData()V

    goto :goto_2
.end method

.method private initMobileData()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 508
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 509
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 511
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v1, :cond_12

    .line 519
    :cond_11
    :goto_11
    return-void

    .line 515
    :cond_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_11

    .line 516
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setMobileDataOwnerState()V

    .line 517
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setMobileDataMultiUser()V

    goto :goto_11
.end method

.method public static resetListVariable()V
    .registers 1

    .prologue
    .line 623
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    .line 624
    return-void
.end method

.method private setAllClickable(Z)V
    .registers 5
    .param p1, "clickable"    # Z

    .prologue
    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 382
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 383
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 384
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    .end local v1    # "v":Landroid/view/View;
    :cond_19
    return-void
.end method

.method private setMobileDataMultiUser()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 471
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 473
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 474
    .local v1, "currentUserId":I
    const/4 v2, 0x1

    .line 476
    .local v2, "state":Z
    if-nez v1, :cond_57

    .line 477
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_dependent_mobile_settings"

    invoke-static {v5, v6, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_55

    move v2, v3

    .line 483
    :goto_22
    const-string v5, "KeyguardMultiUserSelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMobileDataMultiUser userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 486
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    if-eqz v2, :cond_69

    :goto_51
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 488
    return-void

    :cond_55
    move v2, v4

    .line 477
    goto :goto_22

    .line 480
    :cond_57
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_dependent_mobile_settings"

    invoke-static {v5, v6, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_67

    move v2, v4

    :goto_66
    goto :goto_22

    :cond_67
    move v2, v3

    goto :goto_66

    :cond_69
    move v3, v4

    .line 486
    goto :goto_51
.end method

.method private setMobileDataOwnerState()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 491
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 493
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 495
    .local v1, "currentUserId":I
    if-nez v1, :cond_23

    .line 496
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 497
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_dependent_mobile_settings"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 504
    :cond_23
    :goto_23
    return-void

    .line 500
    :cond_24
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_dependent_mobile_settings"

    invoke-static {v2, v3, v5, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_23
.end method

.method private startMoveAnimation(ZI)V
    .registers 10
    .param p1, "expanding"    # Z
    .param p2, "userSize"    # I

    .prologue
    .line 609
    iget-object v6, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 610
    .local v5, "viewSize":I
    const/4 v1, 0x0

    .line 612
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_9
    if-ge v3, v5, :cond_29

    .line 613
    iget-object v6, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 615
    .local v0, "child":Landroid/view/View;
    instance-of v6, v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-eqz v6, :cond_2a

    move-object v6, v0

    .line 616
    check-cast v6, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 617
    .local v4, "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->createAnimation(ZIILandroid/content/pm/UserInfo;)Landroid/view/animation/AnimationSet;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 612
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :goto_25
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_9

    .line 620
    .end local v0    # "child":Landroid/view/View;
    :cond_29
    return-void

    .restart local v0    # "child":Landroid/view/View;
    :cond_2a
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_25
.end method


# virtual methods
.method public addUsers(Ljava/util/Collection;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "userList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/UserInfo;>;"
    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    if-nez v11, :cond_4b

    .line 145
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    .line 147
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setMobileDataOwnerState()V

    .line 150
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v10

    .line 151
    .local v10, "versionInfo":Landroid/os/Bundle;
    const-string v11, "2.0"

    const-string v12, "version"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4b

    .line 152
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 154
    .local v3, "mUm":Landroid/os/UserManager;
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v12, "persona"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 156
    .local v2, "mPm":Landroid/os/PersonaManager;
    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v11}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v11

    if-eqz v11, :cond_4b

    .line 157
    invoke-virtual {v2}, Landroid/os/PersonaManager;->getParentUserForCurrentPersona()I

    move-result v0

    .line 158
    .local v0, "activeUserId":I
    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4b} :catch_a5

    .line 167
    .end local v0    # "activeUserId":I
    .end local v2    # "mPm":Landroid/os/PersonaManager;
    .end local v3    # "mUm":Landroid/os/UserManager;
    .end local v10    # "versionInfo":Landroid/os/Bundle;
    :cond_4b
    :goto_4b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 168
    .local v8, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    invoke-static {v8, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 206
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_aa

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v11

    if-nez v11, :cond_aa

    .line 207
    sget-boolean v11, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    invoke-direct {p0, v11}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->addArrowButton(Z)V

    .line 209
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 211
    .local v7, "userSize":I
    const/4 v6, 0x0

    .local v6, "userIdx":I
    :goto_6c
    if-ge v6, v7, :cond_dc

    .line 212
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 214
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v12, 0x64

    if-ge v11, v12, :cond_a2

    .line 215
    sget-boolean v11, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    if-eqz v11, :cond_8a

    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    if-eqz v11, :cond_a2

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v12, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v11, v12, :cond_a2

    .line 217
    :cond_8a
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v9

    .line 218
    .local v9, "uv":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    .line 220
    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    if-eqz v11, :cond_a2

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v12, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v11, v12, :cond_a2

    .line 221
    iput-object v9, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 211
    .end local v9    # "uv":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    :cond_a2
    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    .line 162
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userIdx":I
    .end local v7    # "userSize":I
    .end local v8    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catch_a5
    move-exception v4

    .line 163
    .local v4, "re":Landroid/os/RemoteException;
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    goto :goto_4b

    .line 227
    .end local v4    # "re":Landroid/os/RemoteException;
    .restart local v8    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_aa
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    .line 228
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b1
    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_dc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 229
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v12, 0x64

    if-ge v11, v12, :cond_b1

    .line 230
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v9

    .line 231
    .restart local v9    # "uv":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    if-eqz v11, :cond_d5

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v12, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v11, v12, :cond_d5

    .line 232
    iput-object v9, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 234
    :cond_d5
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_b1

    .line 239
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "uv":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    :cond_dc
    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-eqz v11, :cond_e6

    .line 240
    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    .line 243
    :cond_e6
    return-void
.end method

.method finalizeActiveUserNow(Z)V
    .registers 5
    .param p1, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 315
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-eqz v1, :cond_15

    .line 316
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    .line 317
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    sget-boolean v2, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    if-nez v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    .line 319
    :cond_15
    return-void
.end method

.method public finalizeActiveUserView(Z)V
    .registers 6
    .param p1, "animate"    # Z

    .prologue
    .line 302
    if-eqz p1, :cond_11

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$2;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    :goto_10
    return-void

    .line 310
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserNow(Z)V

    goto :goto_10
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 391
    instance-of v1, p1, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-nez v1, :cond_7

    .line 468
    :cond_6
    :goto_6
    return-void

    .line 394
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-eqz v1, :cond_6

    move-object v0, p1

    .line 398
    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 399
    .local v0, "avatar":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 434
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-ne v1, v0, :cond_21

    .line 436
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->showUnlockHint()V

    .line 437
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->clickArrowButton()V

    goto :goto_6

    .line 441
    :cond_21
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->hideSecurityView(I)V

    .line 442
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setAllClickable(Z)V

    .line 443
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    .line 445
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setMobileDataOwnerState()V

    .line 448
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mPM:Landroid/os/PowerManager;

    if-eqz v1, :cond_3e

    .line 449
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 451
    :cond_3e
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    new-instance v2, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)V

    invoke-virtual {v1, v4, v5, v2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_6
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 127
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 130
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 134
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 136
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    if-eqz v0, :cond_10

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->userActivity()V

    .line 359
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    .line 140
    return-void
.end method
