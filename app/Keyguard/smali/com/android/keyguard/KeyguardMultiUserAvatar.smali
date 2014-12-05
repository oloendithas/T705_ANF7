.class Lcom/android/keyguard/KeyguardMultiUserAvatar;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserAvatar.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActive:Z

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

.field private mPressLock:Z

.field private final mShadowRadius:F

.field private final mStroke:F

.field private final mTextColor:I

.field private mTouched:Z

.field private mUserImage:Landroid/widget/ImageView;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserName:Landroid/widget/TextView;

.field private mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    .line 45
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
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

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    .line 115
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    .line 117
    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    .line 118
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    .line 119
    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    .line 120
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    .line 121
    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    .line 122
    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    .line 123
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    .line 124
    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mAvatarShadowY:F

    .line 127
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v1

    if-nez v1, :cond_64

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v1

    if-nez v1, :cond_83

    .line 128
    :cond_64
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    .line 129
    const v1, 0x3f8ccccd

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    .line 135
    :goto_6b
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    .line 136
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    .line 137
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    .line 141
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 142
    return-void

    .line 131
    :cond_83
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    .line 132
    const/high16 v1, 0x3fc00000

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    goto :goto_6b
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardRectangleFramedDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardCircleFramedDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    return-object v0
.end method

.method public static fromXml(ILandroid/content/Context;Lcom/android/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .registers 7
    .param p0, "resId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userSelector"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .param p3, "info"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 91
    .local v0, "icon":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    invoke-virtual {v0, p3, p2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->init(Landroid/content/pm/UserInfo;Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    .line 92
    return-object v0
.end method

.method private setGuestModeIconTalkBack()V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 309
    iget-object v8, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 310
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v5, :cond_13

    .line 311
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 312
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 326
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_12
    return-void

    .line 315
    :cond_13
    const/4 v4, 0x0

    .line 316
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    .line 317
    .local v2, "message":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 318
    .local v0, "currentUserId":I
    if-nez v0, :cond_43

    :goto_1b
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 320
    .restart local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :try_start_21
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06012d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3c
    .catch Ljava/util/IllegalFormatException; {:try_start_21 .. :try_end_3c} :catch_45

    move-result-object v2

    .line 325
    :cond_3d
    :goto_3d
    iget-object v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_43
    move v6, v7

    .line 318
    goto :goto_1b

    .line 322
    :catch_45
    move-exception v1

    .line 323
    .local v1, "e":Ljava/util/IllegalFormatException;
    sget-boolean v6, Lcom/android/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    if-eqz v6, :cond_3d

    sget-object v6, Lcom/android/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to call setGuestModeIconTalkBack "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d
.end method


# virtual methods
.method public getUserInfo()Landroid/content/pm/UserInfo;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public init(Landroid/content/pm/UserInfo;Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .registers 14
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "userSelector"    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    const v10, 0x1080448

    .line 149
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 150
    iput-object p2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .line 152
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    .line 154
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 156
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/MultiUserAvatarCache;->get(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    iget v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->verifyParams(FIFIFI)Z

    move-result v0

    if-nez v0, :cond_83

    .line 162
    :cond_4f
    const/4 v1, 0x0

    .line 164
    .local v1, "icon":Landroid/graphics/Bitmap;
    :try_start_50
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_b0

    move-result-object v1

    .line 169
    :cond_58
    :goto_58
    if-nez v1, :cond_64

    .line 170
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 173
    :cond_64
    new-instance v0, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFI)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    .line 175
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/MultiUserAvatarCache;->put(ILandroid/graphics/drawable/Drawable;)V

    .line 177
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->reset()V

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :goto_8f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    .line 214
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_af

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 215
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setGuestModeIconTalkBack()V

    .line 216
    :cond_af
    return-void

    .line 165
    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    :catch_b0
    move-exception v9

    .line 166
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    if-eqz v0, :cond_58

    sget-object v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get profile icon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 182
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_ce
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/MultiUserAvatarCache;->get(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    if-eqz v0, :cond_f4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v8, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-virtual/range {v2 .. v8}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->verifyParams(FIFIFI)Z

    move-result v0

    if-nez v0, :cond_12a

    .line 189
    :cond_f4
    const/4 v1, 0x0

    .line 191
    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    :try_start_f5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fc} :catch_138

    move-result-object v1

    .line 196
    :cond_fd
    :goto_fd
    if-nez v1, :cond_109

    .line 197
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 201
    :cond_109
    new-instance v0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    iget v8, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mAvatarShadowY:F

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFIF)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    .line 203
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/MultiUserAvatarCache;->put(ILandroid/graphics/drawable/Drawable;)V

    .line 206
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_12a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->reset()V

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8f

    .line 192
    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    :catch_138
    move-exception v9

    .line 193
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    if-eqz v0, :cond_fd

    sget-object v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get profile icon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fd
.end method

.method public lockPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setPressed(Z)V

    .line 453
    return-void
.end method

.method public setActive(ZZLjava/lang/Runnable;)V
    .registers 11
    .param p1, "active"    # Z
    .param p2, "animate"    # Z
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    .line 290
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    if-ne v1, p1, :cond_8

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    if-eqz v1, :cond_46

    .line 291
    :cond_8
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    .line 293
    if-eqz p1, :cond_4e

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardLinearLayout;

    .line 295
    .local v0, "parent":Lcom/android/keyguard/KeyguardLinearLayout;
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardLinearLayout;->setTopChild(Landroid/view/View;)V

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f060094

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 304
    .end local v0    # "parent":Lcom/android/keyguard/KeyguardLinearLayout;
    :cond_46
    :goto_46
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    const/16 v2, 0x96

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V

    .line 305
    return-void

    .line 300
    :cond_4e
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_46
.end method

.method public setPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 448
    :cond_6
    :goto_6
    return-void

    .line 436
    :cond_7
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 437
    :cond_13
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 438
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 440
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setPressed(Z)V

    .line 446
    :goto_27
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 444
    :cond_2d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setPressed(Z)V

    goto :goto_27
.end method

.method updateVisualsForActive(ZZILjava/lang/Runnable;)V
    .registers 16
    .param p1, "active"    # Z
    .param p2, "animate"    # Z
    .param p3, "duration"    # I
    .param p4, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    const/4 v8, 0x2

    const/high16 v3, 0x3f800000

    const/high16 v1, 0x437f0000

    .line 330
    if-eqz p1, :cond_5a

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    .line 331
    .local v5, "finalAlpha":F
    :goto_9
    if-eqz p1, :cond_5d

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    .line 332
    .local v4, "initAlpha":F
    :goto_d
    if-eqz p1, :cond_60

    .line 333
    .local v3, "finalScale":F
    :goto_f
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->getScale()F

    move-result v2

    .line 336
    .local v2, "initScale":F
    if-eqz p1, :cond_64

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 340
    .local v7, "finalTextAlpha":I
    :goto_27
    iget v9, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    .line 341
    .local v9, "textColor":I
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    if-eqz p2, :cond_69

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    if-eqz v0, :cond_69

    .line 344
    new-array v0, v8, [F

    fill-array-data v0, :array_ec

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 345
    .local v10, "va":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;FFFFZ)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 360
    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;

    invoke-direct {v0, p0, p4}, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    int-to-long v0, p3

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 369
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 427
    .end local v10    # "va":Landroid/animation/ValueAnimator;
    :cond_56
    :goto_56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    .line 428
    return-void

    .line 330
    .end local v2    # "initScale":F
    .end local v3    # "finalScale":F
    .end local v4    # "initAlpha":F
    .end local v5    # "finalAlpha":F
    .end local v7    # "finalTextAlpha":I
    .end local v9    # "textColor":I
    :cond_5a
    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    goto :goto_9

    .line 331
    .restart local v5    # "finalAlpha":F
    :cond_5d
    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    goto :goto_d

    .line 332
    .restart local v4    # "initAlpha":F
    :cond_60
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    div-float/2addr v3, v0

    goto :goto_f

    .line 336
    .restart local v2    # "initScale":F
    .restart local v3    # "finalScale":F
    :cond_64
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    goto :goto_27

    .line 371
    .restart local v7    # "finalTextAlpha":I
    .restart local v9    # "textColor":I
    :cond_69
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setScale(F)V

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setActive(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 375
    if-eqz p4, :cond_56

    .line 376
    invoke-virtual {p0, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_56

    .line 382
    .end local v2    # "initScale":F
    .end local v7    # "finalTextAlpha":I
    .end local v9    # "textColor":I
    :cond_84
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->getScale()F

    move-result v2

    .line 383
    .restart local v2    # "initScale":F
    if-eqz p1, :cond_c6

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 385
    .restart local v7    # "finalTextAlpha":I
    :goto_90
    if-eqz p1, :cond_cb

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 387
    .local v6, "initTextAlpha":I
    :goto_96
    iget v9, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    .line 388
    .restart local v9    # "textColor":I
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    if-eqz p2, :cond_d0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    if-eqz v0, :cond_d0

    .line 391
    new-array v0, v8, [F

    fill-array-data v0, :array_f4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 392
    .restart local v10    # "va":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;

    move-object v1, p0

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;FFFFIIZ)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 406
    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$4;

    invoke-direct {v0, p0, p4}, Lcom/android/keyguard/KeyguardMultiUserAvatar$4;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 414
    int-to-long v0, p3

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 415
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_56

    .line 383
    .end local v6    # "initTextAlpha":I
    .end local v7    # "finalTextAlpha":I
    .end local v9    # "textColor":I
    .end local v10    # "va":Landroid/animation/ValueAnimator;
    :cond_c6
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    goto :goto_90

    .line 385
    .restart local v7    # "finalTextAlpha":I
    :cond_cb
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    goto :goto_96

    .line 417
    .restart local v6    # "initTextAlpha":I
    .restart local v9    # "textColor":I
    :cond_d0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setScale(F)V

    .line 418
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setActive(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 421
    if-eqz p4, :cond_56

    .line 422
    invoke-virtual {p0, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_56

    .line 344
    :array_ec
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 391
    :array_f4
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
