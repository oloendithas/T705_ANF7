.class public Lcom/android/internal/policy/impl/MultiPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final FEATURE_DISABLE_LEFT_RESIZE:Z = true

.field static final FEATURE_GUIDE_MOVE_LAYOUT_ENABLED:Z = true

.field static final FEATURE_GUIDE_RESIZE_LAYOUT_ENABLED:Z = true

.field static final FLOATING_CYCLE_DEBUG:Z = false

.field static final FLOATING_SIZE_DEBUG:Z = false

.field private static final MESSAGE_REQUEST_STATE:I = 0x64

.field static final SAFE_DEBUG:Z = true

.field private static final STATE_FLOATING:I = 0x2

.field private static final STATE_MINIMIZED_FLOATING:I = 0x4

.field private static final STATE_NONE:I = -0x1

.field private static final STATE_NORMAL:I = 0x1

.field private static final STATE_SCALED_FLOATING:I = 0x3

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"

.field static final TEMP_TOAST_HEIGHT:I = 0x28


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentLayoutGenerated:Z

.field private mContentRootContainer:Landroid/view/ViewGroup;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCustomMinimizeView:Landroid/view/View;

.field private mDecorBackground:Landroid/graphics/drawable/Drawable;

.field private mFocusLineColor:I

.field private mGuideView:Lcom/android/internal/policy/impl/GuideView;

.field mHandler:Landroid/os/Handler;

.field private mHasWindowFocus:Z

.field private mInitialFlag:I

.field private mIsBorder:Z

.field private mIvt:[B

.field private mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mLastOrientation:I

.field private mLastRotated:Z

.field private mLastStackBound:Landroid/graphics/Rect;

.field private mMinimizedIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizedLabel:Ljava/lang/CharSequence;

.field private mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOutLineColor:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mResizablePadding:Landroid/graphics/Rect;

.field private mStackBound:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private final mThickness:I

.field private final mThicknessBorderPaintInner:F

.field private final mThicknessBorderPaintOuter:F

.field private final mThicknessForUnFocused:I

.field mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

.field private mTitleBarHeight:I

.field private mTmpBound:Landroid/graphics/Rect;

.field private mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mUnFocusLineColor:I

.field private final mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameRightRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameTopRect:Landroid/graphics/Rect;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

.field private mWindowIconic:Landroid/widget/ImageView;

.field private mWindowTitleBar:Landroid/view/View;

.field sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

.field sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 259
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 116
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    .line 135
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    .line 148
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 177
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z

    .line 179
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    .line 182
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_178

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    .line 192
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 506
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    .line 1696
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 1697
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 1709
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1713
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    .line 2114
    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    .line 2115
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    .line 2227
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    .line 260
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_83

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 265
    :cond_83
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    .line 270
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initResource()V

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805ef

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805f0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805f1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805ee

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    .line 281
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    .line 283
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    .line 284
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintInner:F

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintOuter:F

    .line 290
    return-void

    .line 182
    :array_178
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
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
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusLineColor:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnFocusLineColor:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintInner:F

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOutLineColor:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintOuter:F

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/graphics/Paint;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Canvas;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->drawBorderBitmap(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/GuideView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/widget/ImageView;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method private adjustMinimizedStackBoxBound(Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1432
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1433
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x1050128

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1435
    .local v1, "originPixelSize":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1436
    .local v4, "screenSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1439
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int v3, v5, v1

    .line 1440
    .local v3, "right":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int v0, v5, v1

    .line 1442
    .local v0, "bottom":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_3b

    .line 1443
    iget v5, p1, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1448
    :cond_30
    :goto_30
    iget v5, v4, Landroid/graphics/Point;->y:I

    if-le v0, v5, :cond_46

    .line 1449
    iget v5, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1454
    :cond_3a
    :goto_3a
    return-void

    .line 1444
    :cond_3b
    iget v5, v4, Landroid/graphics/Point;->x:I

    if-le v3, v5, :cond_30

    .line 1445
    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_30

    .line 1450
    :cond_46
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v5, v6, :cond_3a

    .line 1451
    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3a
.end method

.method private adjustScaleFactor()V
    .registers 11

    .prologue
    .line 1149
    const/high16 v3, 0x3f800000

    .line 1150
    .local v3, "hScale":F
    const/high16 v6, 0x3f800000

    .line 1151
    .local v6, "vScale":F
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_68

    .line 1152
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1153
    .local v2, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1154
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1155
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_4d

    .line 1156
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1157
    .local v1, "di":Landroid/view/DisplayInfo;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_37

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    if-gt v7, v8, :cond_45

    :cond_37
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v7

    if-nez v7, :cond_4d

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    if-ge v7, v8, :cond_4d

    .line 1159
    :cond_45
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 1160
    .local v5, "temp":I
    iget v7, v4, Landroid/graphics/Point;->y:I

    iput v7, v4, Landroid/graphics/Point;->x:I

    .line 1161
    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 1165
    .end local v1    # "di":Landroid/view/DisplayInfo;
    .end local v5    # "temp":I
    :cond_4d
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 1166
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 1177
    .end local v2    # "display":Landroid/view/Display;
    .end local v4    # "size":Landroid/graphics/Point;
    :cond_68
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1178
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    if-eqz v7, :cond_7b

    .line 1179
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    .line 1181
    :cond_7b
    return-void
.end method

.method private adjustStackBoxBound(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1457
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v0, v3, 0x3

    .line 1458
    .local v0, "boundaryX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v1, v3, 0x3

    .line 1459
    .local v1, "boundaryY":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1460
    .local v2, "maxSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1462
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_3b

    .line 1463
    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1469
    :cond_2b
    :goto_2b
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_4b

    .line 1470
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1475
    :cond_3a
    :goto_3a
    return-void

    .line 1465
    :cond_3b
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v3, v0, :cond_2b

    .line 1466
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2b

    .line 1472
    :cond_4b
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v3, v4, :cond_3a

    .line 1473
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_3a
.end method

.method private checkFunctionState()V
    .registers 11

    .prologue
    .line 462
    const/4 v5, 0x0

    .line 463
    .local v5, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 464
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_99

    .line 465
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 466
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_55

    .line 467
    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_9a

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 468
    .local v4, "applicationMetaData":Landroid/os/Bundle;
    :goto_1f
    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 469
    .local v2, "activityMetaData":Landroid/os/Bundle;
    if-eqz v2, :cond_a3

    .line 470
    const-string v8, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "activityFunction":Ljava/lang/String;
    if-eqz v0, :cond_a3

    .line 472
    new-instance v6, Ljava/util/ArrayList;

    const-string v8, "\\|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_9c

    .line 476
    .end local v0    # "activityFunction":Ljava/lang/String;
    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3a
    if-nez v6, :cond_a1

    .line 477
    if-eqz v4, :cond_a1

    .line 478
    :try_start_3e
    const-string v8, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "applicationFunction":Ljava/lang/String;
    if-eqz v3, :cond_a1

    .line 480
    new-instance v5, Ljava/util/ArrayList;

    const-string v8, "\\|"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_55} :catch_9e

    .line 485
    .end local v2    # "activityMetaData":Landroid/os/Bundle;
    .end local v3    # "applicationFunction":Ljava/lang/String;
    .end local v4    # "applicationMetaData":Landroid/os/Bundle;
    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_55
    :goto_55
    if-eqz v5, :cond_99

    .line 486
    :try_start_57
    const-string v8, "minimize"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 487
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x1020355

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 490
    :cond_6d
    const-string v8, "maximize"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 491
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x1020357

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :cond_83
    const-string v8, "exit"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 495
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x1020359

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_99} :catch_9c

    .line 502
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_99
    :goto_99
    return-void

    .line 467
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_9a
    const/4 v4, 0x0

    goto :goto_1f

    .line 500
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_9c
    move-exception v8

    goto :goto_99

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "activityMetaData":Landroid/os/Bundle;
    .restart local v4    # "applicationMetaData":Landroid/os/Bundle;
    .restart local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_9e
    move-exception v8

    move-object v5, v6

    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_99

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a1
    move-object v5, v6

    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_55

    :cond_a3
    move-object v6, v5

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3a
.end method

.method private dismissGuide()V
    .registers 2

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    if-eqz v0, :cond_9

    .line 1798
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GuideView;->dismiss()V

    .line 1800
    :cond_9
    return-void
.end method

.method private drawBorderBitmap(Landroid/graphics/Canvas;II)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1559
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1561
    .local v1, "mTmpDrawRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1563
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, v3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1564
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1565
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1568
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1569
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1570
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1573
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v3, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1574
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1575
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1578
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p3, v3

    invoke-virtual {v1, v5, v3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1579
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1580
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1610
    :goto_58
    return-void

    .line 1582
    :cond_59
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1583
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    .line 1584
    .local v2, "zone":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_98

    .line 1585
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_84

    .line 1587
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v3, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1588
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1589
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_58

    .line 1592
    :cond_84
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p3, v3

    invoke-virtual {v1, v5, v3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1593
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1594
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_58

    .line 1597
    :cond_98
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_ae

    .line 1599
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, v3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1600
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1601
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_58

    .line 1604
    :cond_ae
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1605
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1606
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_58
.end method

.method private drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1508
    if-nez p4, :cond_3

    .line 1555
    :cond_2
    return-void

    .line 1511
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v13, v1

    .line 1512
    .local v13, "thickness":I
    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1513
    .local v10, "localPaint":Landroid/graphics/Paint;
    const/high16 v1, 0x3f800000

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1514
    const/4 v11, 0x0

    .line 1515
    .local v11, "rotationAdjX":I
    const/4 v12, 0x0

    .line 1516
    .local v12, "rotationAdjY":I
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 1520
    .local v8, "display":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 1521
    .local v7, "degrees":I
    packed-switch v7, :pswitch_data_86

    .line 1536
    :goto_25
    :pswitch_25
    if-lez v13, :cond_2

    .line 1537
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_28
    if-ge v9, v13, :cond_5a

    .line 1539
    int-to-float v2, v11

    add-int v1, v9, v12

    int-to-float v3, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int v1, v9, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1542
    int-to-float v2, v11

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v12

    int-to-float v3, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1537
    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 1523
    .end local v9    # "i":I
    :pswitch_53
    const/4 v11, 0x1

    .line 1524
    const/4 v12, 0x1

    .line 1525
    goto :goto_25

    .line 1527
    :pswitch_56
    const/4 v11, 0x1

    .line 1528
    goto :goto_25

    .line 1532
    :pswitch_58
    const/4 v12, 0x1

    goto :goto_25

    .line 1546
    .restart local v9    # "i":I
    :cond_5a
    const/4 v9, 0x0

    :goto_5b
    if-ge v9, v13, :cond_2

    .line 1548
    add-int v1, v9, v11

    int-to-float v2, v1

    int-to-float v3, v12

    add-int v1, v9, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1551
    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v11

    int-to-float v2, v1

    int-to-float v3, v12

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1546
    add-int/lit8 v9, v9, 0x1

    goto :goto_5b

    .line 1521
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_53
        :pswitch_56
        :pswitch_25
        :pswitch_58
    .end packed-switch
.end method

.method private forceHideInputMethod()Z
    .registers 3

    .prologue
    .line 1395
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1396
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 1397
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 1399
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_11

    .line 294
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 295
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 297
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method private getState()I
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 310
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 312
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_22

    .line 324
    :goto_d
    :pswitch_d
    return v1

    .line 316
    :pswitch_e
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    .line 317
    goto :goto_d

    .line 318
    :cond_16
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 319
    const/4 v1, 0x3

    goto :goto_d

    .line 321
    :cond_20
    const/4 v1, 0x2

    goto :goto_d

    .line 312
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private initResource()V
    .registers 5

    .prologue
    const v3, 0x1060086

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusLineColor:I

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOutLineColor:I

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnFocusLineColor:I

    .line 336
    return-void
.end method

.method private initStackBound(Z)V
    .registers 5
    .param p1, "force"    # Z

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz p1, :cond_1b

    .line 1144
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1146
    :cond_1b
    return-void
.end method

.method private isRotated(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 2118
    packed-switch p1, :pswitch_data_8

    .line 2126
    :goto_4
    :pswitch_4
    return v0

    .line 2121
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 2118
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private moveStackBound(IIZ)V
    .registers 7
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "moving"    # Z

    .prologue
    .line 1418
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1419
    .local v0, "stackBound":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1421
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1b

    .line 1422
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustMinimizedStackBoxBound(Landroid/graphics/Rect;)V

    .line 1427
    :cond_16
    :goto_16
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 1428
    return-void

    .line 1423
    :cond_1b
    if-nez p3, :cond_16

    .line 1424
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBoxBound(Landroid/graphics/Rect;)V

    goto :goto_16
.end method

.method private needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 6
    .param p1, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x2

    .line 1902
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1912
    :cond_a
    :goto_a
    return v1

    .line 1906
    :cond_b
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1907
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_17

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v3, :cond_a

    .line 1912
    :cond_17
    const/4 v1, 0x1

    goto :goto_a
.end method

.method private refreshUI(Z)V
    .registers 3
    .param p1, "animation"    # Z

    .prologue
    .line 1236
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(ZI)V

    .line 1237
    return-void
.end method

.method private refreshUI(ZI)V
    .registers 20
    .param p1, "animation"    # Z
    .param p2, "forceState"    # I

    .prologue
    .line 1239
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    .line 1241
    .local v13, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v12, -0x1

    .line 1242
    .local v12, "state":I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_1b

    .line 1243
    move/from16 v12, p2

    .line 1250
    :goto_c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    .line 1252
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1253
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1255
    .local v5, "flags":I
    packed-switch v12, :pswitch_data_2b2

    .line 1392
    :cond_1a
    :goto_1a
    return-void

    .line 1245
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "flags":I
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v12

    goto :goto_c

    .line 1257
    .restart local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "flags":I
    :pswitch_20
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    if-eqz v15, :cond_36

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    :cond_36
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3e
    :goto_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_51

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1260
    .local v3, "contents":Landroid/view/ViewGroup;
    if-eqz v3, :cond_3e

    .line 1261
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3e

    .line 1263
    .end local v3    # "contents":Landroid/view/ViewGroup;
    :cond_51
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    and-int/lit16 v15, v15, 0x200

    if-nez v15, :cond_68

    .line 1266
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v15, v15, -0x201

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1268
    :cond_68
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    const/high16 v16, 0x4000000

    and-int v15, v15, v16

    if-eqz v15, :cond_7a

    .line 1269
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v16, 0x4000000

    or-int v15, v15, v16

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1271
    :cond_7a
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v5, v15, :cond_1a

    .line 1272
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1a

    .line 1277
    .end local v7    # "i$":Ljava/util/Iterator;
    :pswitch_84
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v16, 0x1020356

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_1a

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v11

    .line 1284
    .local v11, "stackBound":Landroid/graphics/Rect;
    iget v15, v11, Landroid/graphics/Rect;->left:I

    if-gez v15, :cond_b7

    .line 1285
    iget v15, v11, Landroid/graphics/Rect;->left:I

    neg-int v15, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1286
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 1290
    :cond_b7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 1291
    .local v4, "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    if-eqz v4, :cond_102

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_102

    .line 1292
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_ca
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-ge v6, v15, :cond_102

    .line 1293
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1294
    .local v14, "view":Landroid/view/View;
    if-eqz v14, :cond_e3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e3

    .line 1292
    .end local v14    # "view":Landroid/view/View;
    :cond_e0
    :goto_e0
    add-int/lit8 v6, v6, 0x1

    goto :goto_ca

    .line 1297
    .restart local v14    # "view":Landroid/view/View;
    :cond_e3
    instance-of v15, v14, Landroid/view/ViewGroup;

    if-eqz v15, :cond_e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object v15, v14

    check-cast v15, Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e0

    .line 1298
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    check-cast v14, Landroid/view/ViewGroup;

    .end local v14    # "view":Landroid/view/View;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e0

    .line 1302
    .end local v6    # "i":I
    :cond_102
    const/4 v8, 0x0

    .line 1303
    .local v8, "isContentParentSize":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 1304
    .local v9, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v15, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_118

    iget v15, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_118

    .line 1306
    const/4 v8, 0x1

    .line 1308
    :cond_118
    if-eqz p1, :cond_162

    if-eqz v8, :cond_162

    .line 1309
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const v16, 0x10a005c

    invoke-static/range {v15 .. v16}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    .line 1310
    .local v1, "animController":Landroid/view/animation/LayoutAnimationController;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    if-eqz v15, :cond_14e

    .line 1311
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    new-instance v16, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 1314
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    .line 1327
    .end local v1    # "animController":Landroid/view/animation/LayoutAnimationController;
    :cond_14e
    :goto_14e
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v16, -0x4000001

    and-int v15, v15, v16

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1328
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v5, v15, :cond_1a

    .line 1329
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1a

    .line 1317
    :cond_162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_185
    :goto_185
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_199

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1321
    .restart local v3    # "contents":Landroid/view/ViewGroup;
    if-eqz v3, :cond_185

    .line 1322
    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_185

    .line 1324
    .end local v3    # "contents":Landroid/view/ViewGroup;
    :cond_199
    if-eqz p1, :cond_19d

    if-eqz v8, :cond_14e

    :cond_19d
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    goto :goto_14e

    .line 1334
    .end local v4    # "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isContentParentSize":Z
    .end local v9    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "stackBound":Landroid/graphics/Rect;
    :pswitch_1a4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    .line 1335
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1336
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 1337
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v15

    if-eqz v15, :cond_22a

    .line 1338
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 1343
    :goto_1c4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    if-eqz v15, :cond_1dc

    .line 1344
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1345
    .local v10, "mainContents":Landroid/view/ViewGroup;
    if-eqz v10, :cond_1dc

    .line 1346
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    .end local v10    # "mainContents":Landroid/view/ViewGroup;
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1f0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_206

    .line 1351
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForPortraitOrientation()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForLandscapeOrientation()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1356
    :cond_206
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    if-eqz v15, :cond_234

    .line 1357
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_214
    :goto_214
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_234

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1358
    .restart local v3    # "contents":Landroid/view/ViewGroup;
    if-eqz v3, :cond_214

    .line 1359
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_214

    .line 1340
    .end local v3    # "contents":Landroid/view/ViewGroup;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_22a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c4

    .line 1364
    :cond_234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1366
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v15, v15, 0x200

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1367
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v16, -0x4000001

    and-int v15, v15, v16

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1368
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v5, v15, :cond_1a

    .line 1369
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1a

    .line 1373
    :pswitch_257
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1374
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 1375
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v15

    if-eqz v15, :cond_28d

    .line 1376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    :goto_272
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_27a
    :goto_27a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_297

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1381
    .restart local v3    # "contents":Landroid/view/ViewGroup;
    if-eqz v3, :cond_27a

    .line 1382
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_27a

    .line 1378
    .end local v3    # "contents":Landroid/view/ViewGroup;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_28d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto :goto_272

    .line 1384
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1386
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v15, v15, 0x200

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1387
    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v5, v15, :cond_1a

    .line 1388
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1a

    .line 1255
    nop

    :pswitch_data_2b2
    .packed-switch 0x1
        :pswitch_20
        :pswitch_257
        :pswitch_1a4
        :pswitch_84
    .end packed-switch
.end method

.method private requestState(I)V
    .registers 10
    .param p1, "state"    # I

    .prologue
    const/16 v7, 0x800

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1185
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1186
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 1191
    packed-switch p1, :pswitch_data_80

    .line 1231
    :cond_19
    :goto_19
    return-void

    .line 1193
    :pswitch_1a
    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1194
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_19

    .line 1198
    :pswitch_25
    invoke-virtual {v0, v5, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 1199
    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1200
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1201
    invoke-virtual {v0, v7, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1202
    invoke-virtual {v0, v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1203
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_19

    .line 1207
    :pswitch_3e
    invoke-virtual {v0, v5, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 1208
    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1209
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1210
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1211
    invoke-virtual {v0, v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1212
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_19

    .line 1216
    :pswitch_57
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v2, 0x1020356

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_19

    .line 1222
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v5, :cond_74

    .line 1223
    invoke-virtual {v0, v5, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 1224
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1226
    :cond_74
    invoke-virtual {v0, v6, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1227
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_19

    .line 1191
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_25
        :pswitch_3e
        :pswitch_57
    .end packed-switch
.end method

.method private setMinimizeViewVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 2049
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2053
    :cond_9
    :goto_9
    return-void

    .line 2050
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2051
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9
.end method

.method private setMinimizedDrawable(Landroid/widget/ImageView;)V
    .registers 3
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1c

    .line 1407
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 1408
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    .line 1409
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    .line 1411
    :cond_1c
    if-eqz p1, :cond_28

    .line 1412
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1413
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1415
    :cond_28
    return-void
.end method

.method private setStackBound(Landroid/graphics/Rect;Z)V
    .registers 5
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "resize"    # Z

    .prologue
    .line 1478
    if-nez p1, :cond_3

    .line 1501
    :cond_2
    :goto_2
    return-void

    .line 1481
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBoxBound(Landroid/graphics/Rect;)V

    .line 1485
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1488
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1494
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1495
    if-eqz p2, :cond_2

    .line 1496
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v0, :cond_2

    .line 1497
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method private showGuide(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    if-nez v0, :cond_10

    .line 1809
    new-instance v0, Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/GuideView;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    .line 1811
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GuideView;->show(IIII)V

    .line 1812
    return-void
.end method

.method private showGuide(Landroid/graphics/Rect;I)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    .line 1803
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    .line 1804
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GuideView;->setType(I)V

    .line 1805
    return-void
.end method

.method private updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 5
    .param p1, "newStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v2, 0x1

    .line 301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 305
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 306
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 307
    return-void
.end method


# virtual methods
.method public arrangeScaleStackBound()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 2056
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isResumed()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2112
    :cond_a
    :goto_a
    return-void

    .line 2060
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-ne v6, v9, :cond_a

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/16 v7, 0x800

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2065
    const/4 v0, 0x0

    .line 2066
    .local v0, "bChangedStackBox":Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v3

    .line 2067
    .local v3, "stackBound":Landroid/graphics/Rect;
    if-eqz v3, :cond_a

    .line 2068
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    .line 2069
    .local v2, "requestedOrientation":I
    packed-switch v2, :pswitch_data_b4

    .line 2085
    :pswitch_35
    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    if-ne v6, v9, :cond_a3

    .line 2086
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v6, v7, :cond_44

    const/4 v0, 0x1

    .line 2093
    :cond_44
    :goto_44
    if-eqz v0, :cond_a

    .line 2094
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2095
    .local v5, "stackWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2097
    .local v4, "stackHeight":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2098
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2099
    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 2100
    iget v6, v1, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_6b

    iget v5, v1, Landroid/graphics/Point;->y:I

    .line 2101
    :cond_6b
    iget v6, v1, Landroid/graphics/Point;->x:I

    if-le v4, v6, :cond_71

    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 2103
    :cond_71
    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 2104
    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 2106
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 2107
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 2108
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2109
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_a

    .line 2074
    .end local v1    # "displaySize":Landroid/graphics/Point;
    .end local v4    # "stackHeight":I
    .end local v5    # "stackWidth":I
    :pswitch_8b
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_44

    const/4 v0, 0x1

    goto :goto_44

    .line 2081
    :pswitch_97
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v6, v7, :cond_44

    const/4 v0, 0x1

    goto :goto_44

    .line 2087
    :cond_a3
    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    if-ne v6, v8, :cond_44

    .line 2088
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v6, v7, :cond_44

    const/4 v0, 0x1

    goto :goto_44

    .line 2069
    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_97
        :pswitch_8b
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_97
        :pswitch_8b
        :pswitch_97
        :pswitch_8b
        :pswitch_35
        :pswitch_97
        :pswitch_8b
    .end packed-switch
.end method

.method public disableMultiWindow(Z)V
    .registers 5
    .param p1, "disable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2038
    const/4 v0, 0x0

    .line 2039
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2040
    if-eqz v0, :cond_18

    .line 2041
    const/16 v2, 0x4000

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2042
    const/4 v2, 0x2

    if-nez p1, :cond_19

    :goto_10
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2043
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2045
    :cond_18
    return-void

    .line 2042
    :cond_19
    const/4 v1, 0x0

    goto :goto_10
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .registers 4

    .prologue
    .line 383
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .registers 13
    .param p1, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    const v10, 0x1020358

    const v6, 0x1020356

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 388
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 390
    .local v3, "ret":Landroid/view/ViewGroup;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    .line 391
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 394
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 395
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090078

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 398
    const v4, 0x1090079

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 399
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v5, 0x1020354

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    .line 400
    new-instance v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    .line 401
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 403
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 409
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 415
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v5, 0x102035a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v5, 0x102035a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 421
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 423
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkFunctionState()V

    .line 425
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 426
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v5, 0x1020353

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    .line 427
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 428
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 431
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_f9

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_ff

    .line 432
    :cond_f9
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    .line 435
    :cond_ff
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 436
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 437
    .local v2, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForPortraitOrientation()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 438
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForLandscapeOrientation()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 440
    const-string v4, "MultiPhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateLayout : sMinimumStackBoundForPortraitOrient"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sMinimumStackBoundForLandscapeOrient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 446
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    .line 448
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_159

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v4

    if-eq v4, v7, :cond_159

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-eqz v4, :cond_159

    .line 449
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    .line 452
    :cond_159
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 453
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    .line 454
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isRotated(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    .line 455
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    .line 457
    return-object v3
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 356
    return-object p0
.end method

.method public getOptionsPanelGravity()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 340
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_33

    .line 341
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 342
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 343
    .local v2, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 345
    .local v1, "requestOrientation":I
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    if-ne v1, v5, :cond_33

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v5, :cond_30

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_33

    .line 348
    :cond_30
    const/16 v3, 0x51

    .line 351
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "requestOrientation":I
    .end local v2    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_32
    return v3

    :cond_33
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    goto :goto_32
.end method

.method public getStackBound()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isTouchBlocked()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const v5, 0x3e4ccccd

    const/4 v2, 0x1

    .line 361
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_1b

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 378
    :cond_1b
    :goto_1b
    return v1

    .line 365
    :cond_1c
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 366
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 367
    :cond_2b
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 368
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_54

    .line 369
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1b

    move v1, v2

    .line 370
    goto :goto_1b

    .line 373
    :cond_54
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1b

    move v1, v2

    .line 374
    goto :goto_1b
.end method

.method public minimizeWindow(IZ)V
    .registers 8
    .param p1, "windowMode"    # I
    .param p2, "hide"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 1940
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    .line 1941
    .local v0, "state":I
    if-ne v0, v4, :cond_9

    .line 1951
    :cond_8
    :goto_8
    return-void

    .line 1946
    :cond_9
    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 1947
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 1948
    .local v1, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1949
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    goto :goto_8
.end method

.method public moveWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1921
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 1922
    .local v0, "listener":Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1923
    return-void
.end method

.method public multiWindow(IZ)V
    .registers 4
    .param p1, "windowMode"    # I
    .param p2, "pinup"    # Z

    .prologue
    .line 1931
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 1932
    return-void
.end method

.method public normalWindow(I)V
    .registers 3
    .param p1, "windowMode"    # I

    .prologue
    .line 1958
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 1959
    return-void
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .registers 23
    .param p1, "configDiff"    # I

    .prologue
    .line 2133
    const/4 v9, 0x0

    .line 2134
    .local v9, "oldRect":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 2136
    .local v8, "newRect":Landroid/graphics/Rect;
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 2225
    :cond_a
    :goto_a
    return-void

    .line 2140
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    .line 2142
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getRotation()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isRotated(I)Z

    move-result v14

    .line 2143
    .local v14, "rotated":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v14, :cond_a

    .line 2147
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    .line 2149
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v17

    packed-switch v17, :pswitch_data_24c

    goto :goto_a

    .line 2151
    :pswitch_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_a

    .line 2155
    :pswitch_69
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 2156
    const/4 v10, 0x0

    .line 2157
    .local v10, "relativeL":F
    const/4 v12, 0x0

    .line 2158
    .local v12, "relativeT":F
    const/4 v11, 0x0

    .line 2159
    .local v11, "relativeR":F
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 2160
    .local v7, "maxSize":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v13

    .line 2162
    .local v13, "requestOrientation":I
    if-eqz v13, :cond_94

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_19c

    .line 2164
    :cond_94
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v16

    .line 2165
    .local v16, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v16, :cond_a4

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v17

    if-eqz v17, :cond_b6

    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-nez v17, :cond_a

    .line 2175
    :cond_b6
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v17, v18

    .line 2176
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 2177
    const/16 v17, 0x0

    cmpl-float v17, v11, v17

    if-lez v17, :cond_116

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v17, v17, v18

    if-lez v17, :cond_116

    .line 2178
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    mul-float v17, v17, v10

    add-float v18, v10, v11

    div-float v10, v17, v18

    .line 2180
    :cond_116
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 2182
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2183
    .restart local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3851b717

    add-float v18, v18, v10

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 2184
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3851b717

    add-float v18, v18, v12

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 2185
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 2186
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 2190
    .end local v16    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_17d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18e

    .line 2191
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustMinimizedStackBoxBound(Landroid/graphics/Rect;)V

    .line 2193
    :cond_18e
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 2194
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    goto/16 :goto_a

    .line 2188
    :cond_19c
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v8    # "newRect":Landroid/graphics/Rect;
    goto :goto_17d

    .line 2197
    .end local v7    # "maxSize":Landroid/graphics/Point;
    .end local v10    # "relativeL":F
    .end local v11    # "relativeR":F
    .end local v12    # "relativeT":F
    .end local v13    # "requestOrientation":I
    :pswitch_1ba
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 2198
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 2200
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 2201
    .local v4, "display":Landroid/view/Display;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 2202
    .local v15, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2203
    const/4 v5, 0x0

    .line 2204
    .local v5, "dx":I
    const/4 v6, 0x0

    .line 2205
    .local v6, "dy":I
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2207
    .restart local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    if-gez v17, :cond_219

    .line 2208
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v5, v0

    .line 2212
    :cond_1eb
    :goto_1eb
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_232

    .line 2213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 2217
    :cond_207
    :goto_207
    if-nez v5, :cond_20b

    if-eqz v6, :cond_20e

    .line 2218
    :cond_20b
    invoke-virtual {v9, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2220
    :cond_20e
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    goto/16 :goto_a

    .line 2209
    :cond_219
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1eb

    .line 2210
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    goto :goto_1eb

    .line 2214
    :cond_232
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_207

    .line 2215
    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    goto :goto_207

    .line 2149
    nop

    :pswitch_data_24c
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_1ba
        :pswitch_69
        :pswitch_69
    .end packed-switch
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .registers 11
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 1721
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_15

    .line 1722
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_14

    .line 1723
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeAllPanels()V

    .line 1724
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z

    .line 1794
    :cond_14
    :goto_14
    return-void

    .line 1730
    :cond_15
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_50

    .line 1732
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v7, :cond_3b

    .line 1733
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 1736
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_37

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1737
    :cond_37
    invoke-virtual {p0, v4, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeWindow(IZ)V

    goto :goto_14

    .line 1739
    .end local v1    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_3b
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-nez v2, :cond_14

    const/high16 v2, 0x20000

    invoke-virtual {p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1740
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 1741
    invoke-direct {p0, v4, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(ZI)V

    goto :goto_14

    .line 1746
    :cond_50
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1749
    .local v0, "currStackBound":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v2, :cond_74

    .line 1750
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-eq v2, v5, :cond_8c

    .line 1751
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-eqz v2, :cond_8a

    move v2, v3

    :goto_71
    invoke-interface {v5, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    .line 1765
    :cond_74
    :goto_74
    invoke-virtual {p1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 1766
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v2

    if-eq v2, v6, :cond_86

    .line 1767
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1768
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    .line 1770
    :cond_86
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    goto :goto_14

    :cond_8a
    move v2, v4

    .line 1751
    goto :goto_71

    .line 1752
    :cond_8c
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eq v2, v5, :cond_a2

    .line 1753
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_74

    .line 1754
    :cond_a2
    invoke-virtual {p1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_74

    .line 1755
    if-eqz v0, :cond_74

    .line 1756
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v2, v5, :cond_c2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-eq v2, v5, :cond_74

    .line 1758
    :cond_c2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto :goto_74

    .line 1776
    :cond_c8
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1779
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v7, :cond_d7

    .line 1780
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 1781
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1785
    :cond_d7
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v2, :cond_de

    .line 1786
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    .line 1789
    :cond_de
    if-eqz v0, :cond_14

    .line 1790
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_14
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 1706
    const/4 v0, 0x1

    return v0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1966
    const/4 v0, 0x0

    .line 1967
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_16

    .line 1968
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1969
    if-eqz v0, :cond_16

    .line 1970
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 1971
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1972
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 1975
    :cond_16
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_c

    .line 1983
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 1985
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1986
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    .line 1987
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    .line 1989
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v0, :cond_33

    .line 1990
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1991
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1993
    :cond_33
    return-void
.end method

.method public setMinimizeView(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v4, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2000
    if-nez p1, :cond_48

    .line 2001
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eqz v3, :cond_19

    .line 2002
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2003
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2004
    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    .line 2006
    :cond_19
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v4, 0x1020353

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    .line 2007
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2008
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050117

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2009
    .local v1, "minimizeSize":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    new-array v5, v5, [I

    aput v1, v5, v6

    aput v1, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    .line 2035
    .end local v1    # "minimizeSize":I
    :cond_47
    :goto_47
    return-void

    .line 2011
    :cond_48
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_47

    .line 2017
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_47

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_47

    .line 2023
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    .line 2024
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2025
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2026
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v3, :cond_75

    .line 2027
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2029
    :cond_75
    invoke-virtual {p1, v6, v6}, Landroid/view/View;->measure(II)V

    .line 2030
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2031
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2032
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    new-array v5, v5, [I

    aput v2, v5, v6

    aput v0, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    .line 2033
    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    goto :goto_47
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .prologue
    .line 1700
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 1701
    const/4 v0, 0x1

    return v0
.end method
