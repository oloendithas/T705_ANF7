.class public abstract Lcom/sec/android/glview/TwGLView;
.super Ljava/lang/Object;
.source "TwGLView.java"

# interfaces
.implements Landroid/view/IGLView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;,
        Lcom/sec/android/glview/TwGLView$OnLongClickListener;,
        Lcom/sec/android/glview/TwGLView$OnClickListener;,
        Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;,
        Lcom/sec/android/glview/TwGLView$OnFocusListener;,
        Lcom/sec/android/glview/TwGLView$OnKeyListener;,
        Lcom/sec/android/glview/TwGLView$OnTouchListener;,
        Lcom/sec/android/glview/TwGLView$OnDragListener;
    }
.end annotation


# static fields
.field public static final CLICKABLE:I = 0x4000

.field private static final DEFAULT_REPEAT_CLICK_INTERVAL:I = 0x64

.field public static final DIM_ALPHA_VALUE:F = 0.45f

.field public static final DISABLED:I = 0x20

.field private static final DRAG_HOLD_TIME_ABSOLUTE:I = 0x0

.field private static final DRAG_HOLD_TIME_HIGH:I = 0x12c

.field private static final DRAG_HOLD_TIME_NORMAL:I = 0x1f4

.field public static final DRAG_SENSITIVITY_ABSOLUTE:I = 0x0

.field public static final DRAG_SENSITIVITY_HIGH:I = 0x1

.field public static final DRAG_SENSITIVITY_NORMAL:I = 0x2

.field public static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_MASK:I = 0x1

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final H_ALIGN_CENTER:I = 0x2

.field public static final H_ALIGN_LEFT:I = 0x1

.field public static final H_ALIGN_NONE:I = 0x0

.field public static final H_ALIGN_RIGHT:I = 0x3

.field public static final INVISIBLE:I = 0x4

.field private static final LONG_CLICK_TIME:I = 0x1f4

.field public static final NOT_FOCUSABLE:I = 0x0

.field private static final NO_ID:I = -0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1

.field public static final VISIBLE:I = 0x0

.field public static final V_ALIGN_BOTTOM:I = 0x3

.field public static final V_ALIGN_MIDDLE:I = 0x2

.field public static final V_ALIGN_NONE:I = 0x0

.field public static final V_ALIGN_TOP:I = 0x1


# instance fields
.field private glCoordinate:[F

.field private glTransformedCoordinate:[F

.field protected mAlpha:F

.field protected mAlphaChanged:Z

.field private mAnimGLMatrix:[F

.field private mAnimMatrix:[F

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAnimationFinished:Z

.field private mAnimationPending:Z

.field private mAnimationStarted:Z

.field private mAnimationStartedEvent:Z

.field private mAnimationTimeSet:Z

.field protected mAsyncLoad:Z

.field private mBackground:Lcom/sec/android/glview/TwGLView;

.field private mBackgroundResId:I

.field protected mBaseDepth:F

.field protected mBaseLeft:F

.field protected mBaseTop:F

.field private mBound:Landroid/graphics/RectF;

.field private mBypassTouch:Z

.field private mCenterPivot:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mClipping:Z

.field private mCombinedMatrix:[F

.field public mContentDescription:Ljava/lang/String;

.field private mContinuousDrawMode:Z

.field private mDefaultOrientation:I

.field protected mDepthChanged:Z

.field private mDimmed:Z

.field private mDragSensitivity:I

.field private mDragVibration:Z

.field private mDraggable:Z

.field protected mDragging:Z

.field protected mDrawFirstTime:Z

.field private mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mFocused:Z

.field protected final mGLContext:Lcom/sec/android/glview/TwGLContext;

.field protected mHasExtraDescription:Z

.field private mHideAfterAnimation:Z

.field private mHoverFocused:Z

.field private mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

.field protected mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

.field protected mHoverPopupGravity:I

.field protected mHoverPopupOffsetX:I

.field protected mHoverPopupOffsetY:I

.field private final mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected mInScreen:Z

.field private mInternalFocus:Z

.field protected mIsClipped:Z

.field private mLastOrientation:I

.field protected mLayoutUpdated:Z

.field private mLeft:F

.field private mLeftBottom:[F

.field private mLeftTop:[F

.field private mLeftTopCoordinates:[Landroid/graphics/RectF;

.field private mLoaded:Z

.field private mLoading:Z

.field private mLongClickVibration:Z

.field private mLongClickable:Z

.field protected mManualClip:Z

.field private mMatrix:[F

.field private mNextFocusDownId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field private mObjectTag:Ljava/lang/String;

.field private mOldAlpha:F

.field private mOldClipRect:Landroid/graphics/Rect;

.field protected mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

.field protected mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

.field protected mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

.field protected mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

.field protected mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

.field protected mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

.field private mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

.field protected mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

.field private mOrientation:I

.field private mOriginalClipRect:Landroid/graphics/Rect;

.field protected mOriginalDepth:F

.field protected mOriginalLeft:F

.field protected mOriginalTop:F

.field protected mPaddings:Landroid/graphics/Rect;

.field public mParent:Lcom/sec/android/glview/TwGLView;

.field protected mParentClipRect:Landroid/graphics/Rect;

.field private mParentHAlign:I

.field private mParentVAlign:I

.field protected mPositionChanged:Z

.field private mPreviousDragX:F

.field private mPreviousDragY:F

.field private mRepeatClickInterval:I

.field private mRepeatClickWhenLongClicked:Z

.field private mRightBottom:[F

.field private mRightTop:[F

.field private mRotatable:Z

.field private mRotateAnimation:Z

.field private mRotateAnimationDuration:I

.field private mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mRotationMatrix:[F

.field protected mScaleChanged:Z

.field private mScaleMatrix:[F

.field private mScaleX:F

.field private mScaleY:F

.field protected mSizeGiven:Z

.field protected mSizeSpecified:Z

.field public mSubTitle:Ljava/lang/String;

.field private mTempMatrix:[F

.field private mTempOrientation:I

.field protected mThis:Lcom/sec/android/glview/TwGLView;

.field public mTitle:Ljava/lang/String;

.field private mToggleButton:Z

.field private mTop:F

.field private mTransformation:Landroid/view/animation/Transformation;

.field protected mTransformedScreenCoordinate:[F

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTranslateZ:F

.field private mTranslationMatrix:[F

.field protected mViewFlags:I

.field private mViewId:I

.field private mViewTag:I

.field private mVisibility:I

.field private mZCoordinate:F

.field private repeatClick:Ljava/lang/Runnable;

.field private setDragging:Ljava/lang/Runnable;

.field private setLongClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/16 v2, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mID:I

    .line 79
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 94
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 97
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 100
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 103
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 106
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 109
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 112
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 115
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 118
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 120
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 140
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 150
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    .line 152
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 154
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 189
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 192
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 195
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 198
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 201
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 204
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 207
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 210
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 213
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 216
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 219
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 222
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 225
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 228
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 231
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 234
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 236
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    .line 239
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 242
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 257
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 260
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 263
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 266
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 269
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 272
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 274
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 276
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 303
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 306
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 309
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 321
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 323
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mDepthChanged:Z

    .line 325
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 327
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 339
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 345
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 347
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    .line 353
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 356
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 359
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 362
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 365
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 368
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 371
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 373
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 375
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 377
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 379
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 385
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 388
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 400
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 403
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 406
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 409
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 411
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 413
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 415
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 422
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 424
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 426
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 428
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 430
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 432
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 436
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 438
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 442
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 444
    iput-boolean v6, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    .line 446
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    .line 450
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    .line 454
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 455
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 456
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 457
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 458
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 461
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 479
    new-instance v1, Lcom/sec/android/glview/TwGLView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$2;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    .line 500
    new-instance v1, Lcom/sec/android/glview/TwGLView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$3;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    .line 539
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 604
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 632
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 651
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 657
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 688
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 714
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 734
    iput-object v5, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .line 791
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 792
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 793
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 794
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 796
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 797
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 798
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 800
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 801
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 802
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 804
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 805
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 807
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 808
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 810
    invoke-virtual {p0, v3, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 811
    invoke-virtual {p0, v6, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 812
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 813
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 815
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 817
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 818
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "depth"    # F

    .prologue
    const/16 v2, 0x10

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mID:I

    .line 79
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 94
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 97
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 100
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 103
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 106
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 109
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 112
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 115
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 118
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 120
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 140
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 150
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    .line 152
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 154
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 189
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 192
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 195
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 198
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 201
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 204
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 207
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 210
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 213
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 216
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 219
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 222
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 225
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 228
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 231
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 234
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 236
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    .line 239
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 242
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 257
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 260
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 263
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 266
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 269
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 272
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 274
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 276
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 303
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 306
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 309
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 321
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 323
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDepthChanged:Z

    .line 325
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 327
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 339
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 345
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 347
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    .line 353
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 356
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 359
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 362
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 365
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 368
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 371
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 373
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 375
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 377
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 379
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 385
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 388
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 400
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 403
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 406
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 409
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 411
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 413
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 415
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 422
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 424
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 426
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 428
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 430
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 432
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 436
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 438
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 442
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 444
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    .line 446
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    .line 450
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    .line 454
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 455
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 456
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 457
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 458
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 461
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 479
    new-instance v1, Lcom/sec/android/glview/TwGLView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$2;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    .line 500
    new-instance v1, Lcom/sec/android/glview/TwGLView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$3;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    .line 539
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 604
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 632
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 651
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 657
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 688
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 714
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 734
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .line 833
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 834
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 835
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 836
    iput p4, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 838
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 839
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 840
    iput p4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 842
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 843
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 844
    iput p4, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 846
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 847
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 849
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 850
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 852
    invoke-virtual {p0, v3, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 853
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 854
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 855
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 857
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 859
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 860
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mID:I

    .line 79
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 94
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 97
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 100
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 103
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 106
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 109
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 112
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 115
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 118
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 120
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 140
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 150
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    .line 152
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 154
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 189
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 192
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 195
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 198
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 201
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 204
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 207
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 210
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 213
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 216
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 219
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 222
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 225
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 228
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 231
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 234
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 236
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    .line 239
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 242
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 257
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 260
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 263
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 266
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 269
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 272
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 274
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 276
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 303
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 306
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 309
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 321
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 323
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDepthChanged:Z

    .line 325
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 327
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 339
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 345
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 347
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    .line 353
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 356
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 359
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 362
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 365
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 368
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 371
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 373
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 375
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 377
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 379
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 385
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 388
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 400
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 403
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 406
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 409
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 411
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 413
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 415
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 422
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 424
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 426
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 428
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 430
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 432
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 436
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 438
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 442
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 444
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    .line 446
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    .line 450
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    .line 454
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 455
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 456
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 457
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 458
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 461
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 479
    new-instance v1, Lcom/sec/android/glview/TwGLView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$2;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    .line 500
    new-instance v1, Lcom/sec/android/glview/TwGLView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$3;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    .line 539
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 604
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 632
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 651
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 657
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 688
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 714
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 734
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .line 877
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 878
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 880
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 881
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 883
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 884
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 885
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 887
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 888
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 889
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 891
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 892
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 894
    invoke-virtual {p0, v4, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 895
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 896
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 897
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 899
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 900
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 901
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "depth"    # F

    .prologue
    const/16 v2, 0x10

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mID:I

    .line 79
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 94
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 97
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 100
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 103
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 106
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 109
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 112
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 115
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 118
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 120
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 140
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 150
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    .line 152
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 154
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 189
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 192
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 195
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 198
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 201
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 204
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 207
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 210
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 213
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 216
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 219
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 222
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 225
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 228
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 231
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 234
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 236
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    .line 239
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 242
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 257
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 260
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 263
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 266
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 269
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 272
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 274
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 276
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 303
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 306
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 309
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 321
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 323
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDepthChanged:Z

    .line 325
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 327
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 339
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 345
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 347
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    .line 353
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 356
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 359
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 362
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 365
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 368
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 371
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 373
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    .line 375
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 377
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 379
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 385
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 388
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 400
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 403
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 406
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 409
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 411
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 413
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 415
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 422
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 424
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 426
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 428
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 430
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 432
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 436
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 438
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 442
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 444
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    .line 446
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    .line 450
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    .line 454
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 455
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 456
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 457
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 458
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 461
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 479
    new-instance v1, Lcom/sec/android/glview/TwGLView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$2;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    .line 500
    new-instance v1, Lcom/sec/android/glview/TwGLView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$3;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    .line 539
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 604
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 632
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 651
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 657
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 688
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 714
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 734
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .line 920
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 922
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 923
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 925
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 926
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 928
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 929
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 931
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 932
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 934
    iput p6, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 936
    invoke-virtual {p0, v4, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 937
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 938
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 939
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 941
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 942
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 943
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/glview/TwGLView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/glview/TwGLView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/glview/TwGLView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private declared-synchronized combineMatrices()V
    .locals 3

    .prologue
    .line 2760
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V

    .line 2761
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2765
    :goto_0
    monitor-exit p0

    return-void

    .line 2760
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2762
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private transformScreenCoordinates(IIII)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3240
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3241
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3242
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3243
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3244
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3245
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3246
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 3247
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 3248
    return-void
.end method


# virtual methods
.method public addView(ILcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 3950
    return-void
.end method

.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 3947
    return-void
.end method

.method public final bringToFront()V
    .locals 1

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 2306
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 2308
    :cond_0
    return-void
.end method

.method public final declared-synchronized cancelAnimation()V
    .locals 2

    .prologue
    .line 2379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2387
    :goto_0
    monitor-exit p0

    return-void

    .line 2382
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2383
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 2385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 2386
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 2215
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 2216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 2217
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 2219
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 2220
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 2221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2223
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_1

    .line 2224
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 2225
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 2227
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_2

    .line 2228
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 2229
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 2231
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v1, :cond_3

    .line 2232
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v1}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 2233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 2235
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 2237
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_4

    .line 2238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 2242
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v1, :cond_5

    .line 2243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 2247
    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v1, :cond_7

    .line 2248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    .line 2249
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 2248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2250
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2252
    .end local v0    # "i":I
    :cond_7
    monitor-exit p0

    return-void

    .line 2215
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected final clearClip()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3365
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 3366
    return-void
.end method

.method protected final declared-synchronized clip()V
    .locals 5

    .prologue
    .line 3349
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-nez v0, :cond_0

    .line 3350
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3356
    :goto_0
    monitor-exit p0

    return-void

    .line 3355
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glScissor(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 1798
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 1799
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1810
    :cond_0
    :goto_0
    return v0

    .line 1802
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1806
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-eqz v1, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw()V
    .locals 0

    .prologue
    .line 3939
    return-void
.end method

.method public final declared-synchronized draw([FLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "parentMatrix"    # [F
    .param p2, "parentClipRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x4

    .line 2594
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-nez v3, :cond_1

    .line 2595
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2596
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2740
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2603
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eq v3, v4, :cond_0

    .line 2607
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v3, :cond_2

    .line 2608
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 2611
    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    if-eqz v3, :cond_3

    .line 2612
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2618
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 2620
    .local v0, "currentMatrix":[F
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_8

    .line 2621
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    if-nez v3, :cond_6

    .line 2623
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2624
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long v1, v3, v5

    .line 2625
    .local v1, "timeMillis":J
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    if-eqz v3, :cond_4

    .line 2626
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2594
    .end local v0    # "currentMatrix":[F
    .end local v1    # "timeMillis":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2630
    .restart local v0    # "currentMatrix":[F
    .restart local v1    # "timeMillis":J
    :cond_4
    :try_start_2
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    if-eqz v3, :cond_9

    .line 2631
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 2632
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 2633
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 2634
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2643
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v1, v2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2644
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2650
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    invoke-static {v3}, Lcom/sec/android/glview/TwGLUtil;->toGLMatrix([F)[F

    .line 2651
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V

    .line 2653
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 2659
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 2678
    .end local v1    # "timeMillis":J
    :cond_6
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    if-eqz v3, :cond_7

    .line 2679
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 2680
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2681
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V

    .line 2682
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 2689
    :cond_7
    :goto_2
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    if-eqz v3, :cond_8

    .line 2690
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 2691
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    if-eqz v3, :cond_8

    .line 2692
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/glview/TwGLView$5;

    invoke-direct {v4, p0}, Lcom/sec/android/glview/TwGLView$5;-><init>(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2701
    :cond_8
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    invoke-static {v3, p1, v0}, Lcom/sec/android/app/camera/Util;->multiplyMM([F[F[F)V

    .line 2703
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    if-eqz v3, :cond_f

    .line 2705
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 2706
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2707
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-eqz v3, :cond_d

    .line 2708
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 2709
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 2710
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onOutOfScreen()V

    goto/16 :goto_0

    .line 2635
    .restart local v1    # "timeMillis":J
    :cond_9
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    if-eqz v3, :cond_5

    .line 2636
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 2637
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 2638
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2640
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    goto/16 :goto_1

    .line 2661
    :cond_a
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    if-eqz v3, :cond_b

    .line 2662
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/glview/TwGLView$4;

    invoke-direct {v4, p0}, Lcom/sec/android/glview/TwGLView$4;-><init>(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2669
    :cond_b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 2671
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    if-eqz v3, :cond_6

    .line 2672
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2684
    .end local v1    # "timeMillis":J
    :cond_c
    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    goto :goto_2

    .line 2714
    :cond_d
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    if-nez v3, :cond_e

    .line 2715
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2716
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 2724
    :cond_e
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 2728
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->dispatchDraw()V

    .line 2730
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_10

    .line 2731
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 2733
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onDraw()V

    .line 2734
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 2735
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v3, :cond_11

    .line 2736
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 2737
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v3, :cond_0

    .line 2738
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2717
    :cond_12
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2718
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    goto :goto_3

    .line 2720
    :cond_13
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2721
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public dumpViewHierarchy(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 4021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4022
    .local v1, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 4023
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4022
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4025
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 4026
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Clip(Manual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    :goto_1
    return-void

    .line 4029
    :cond_1
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 8
    .param p1, "focusedView"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "direction"    # I

    .prologue
    .line 3612
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_2

    .line 3613
    :cond_0
    const/4 v4, 0x0

    .line 3657
    :cond_1
    :goto_0
    return-object v4

    .line 3615
    :cond_2
    const/4 v4, 0x0

    .line 3618
    .local v4, "resultView":Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v3

    .line 3619
    .local v3, "left":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v5

    .line 3620
    .local v5, "top":F
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v0

    .line 3621
    .local v0, "focusedViewLeft":F
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v1

    .line 3622
    .local v1, "focusedViewTop":F
    sub-float v7, v0, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3623
    .local v2, "horizontalOffset":F
    sub-float v7, v1, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 3625
    .local v6, "verticalOffset":F
    sparse-switch p2, :sswitch_data_0

    .line 3655
    const/4 v4, 0x0

    goto :goto_0

    .line 3627
    :sswitch_0
    cmpl-float v7, v0, v3

    if-lez v7, :cond_1

    .line 3628
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 3629
    move-object v4, p0

    goto :goto_0

    .line 3634
    :sswitch_1
    cmpg-float v7, v0, v3

    if-gez v7, :cond_1

    .line 3635
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 3636
    move-object v4, p0

    goto :goto_0

    .line 3641
    :sswitch_2
    cmpl-float v7, v1, v5

    if-lez v7, :cond_1

    .line 3642
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 3643
    move-object v4, p0

    goto :goto_0

    .line 3648
    :sswitch_3
    cmpg-float v7, v1, v5

    if-gez v7, :cond_1

    .line 3649
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 3650
    move-object v4, p0

    goto :goto_0

    .line 3625
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 3672
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 3682
    .end local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :cond_0
    :goto_0
    return-object p0

    .line 3675
    .restart local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    if-eqz v1, :cond_2

    move-object p0, v0

    .line 3676
    goto :goto_0

    .line 3679
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 3682
    goto :goto_0
.end method

.method public findViewById(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 3591
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    if-ne v0, p1, :cond_0

    .line 3594
    .end local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 3605
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    if-ne v0, p1, :cond_0

    .line 3608
    .end local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000

    const v0, 0x3ee66666

    .line 1065
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_1

    .line 1066
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    if-eqz v3, :cond_0

    :goto_0
    mul-float/2addr v0, v2

    .line 1069
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 1066
    goto :goto_0

    .line 1069
    :cond_1
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    if-eqz v3, :cond_2

    :goto_2
    mul-float/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1764
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getBottom()F
    .locals 2

    .prologue
    .line 1592
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1593
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1596
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    .line 1598
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public getBypassTouch()Z
    .locals 1

    .prologue
    .line 2486
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    return v0
.end method

.method public final getCenterPivot()Z
    .locals 1

    .prologue
    .line 1126
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2530
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 2532
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipRectArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 2536
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getContentArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1740
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaLeft()F

    move-result v0

    .line 1741
    .local v0, "left":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaTop()F

    move-result v1

    .line 1742
    .local v1, "top":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v4

    add-float/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public getContentAreaHeight()F
    .locals 2

    .prologue
    .line 1760
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaLeft()F
    .locals 2

    .prologue
    .line 1732
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaTop()F
    .locals 2

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaWidth()F
    .locals 2

    .prologue
    .line 1751
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Lcom/sec/android/glview/TwGLContext;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method public getCurrentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1773
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v4

    .line 1774
    .local v4, "offsetX":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v5

    .line 1775
    .local v5, "offsetY":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v6

    add-float v1, v6, v4

    .line 1776
    .local v1, "currentLeft":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v6

    add-float v3, v6, v5

    .line 1777
    .local v3, "currentTop":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float v2, v1, v6

    .line 1778
    .local v2, "currentRight":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float v0, v3, v6

    .line 1780
    .local v0, "currentBottom":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6
.end method

.method public getCurrentBottom()F
    .locals 2

    .prologue
    .line 1719
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentContentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 1785
    .local v0, "current":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getCurrentDepth()F
    .locals 2

    .prologue
    .line 1728
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getDepth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateZ()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentLeft()F
    .locals 2

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentRight()F
    .locals 2

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentTop()F
    .locals 2

    .prologue
    .line 1710
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getDepth()F
    .locals 2

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1603
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getDepth()F

    move-result v1

    add-float/2addr v0, v1

    .line 1605
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    goto :goto_0
.end method

.method protected getDimState()Z
    .locals 1

    .prologue
    .line 2332
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    return v0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    return v0
.end method

.method public final getHeight()F
    .locals 2

    .prologue
    .line 1626
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1627
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method protected getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;
    .locals 1

    .prologue
    .line 4041
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 1359
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    return v0
.end method

.method public getInternalFocus()Z
    .locals 2

    .prologue
    .line 3690
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 3691
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 3692
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 3694
    :cond_0
    return v0
.end method

.method public getInternalFocusParent()Lcom/sec/android/glview/TwGLView;
    .locals 1

    .prologue
    .line 3698
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    if-eqz v0, :cond_0

    .line 3703
    .end local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :goto_0
    return-object p0

    .line 3700
    .restart local p0    # "this":Lcom/sec/android/glview/TwGLView;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 3701
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getInternalFocusParent()Lcom/sec/android/glview/TwGLView;

    move-result-object p0

    goto :goto_0

    .line 3703
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public getLayoutZ()F
    .locals 1

    .prologue
    .line 1517
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    return v0
.end method

.method public final getLeft()F
    .locals 2

    .prologue
    .line 1530
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1531
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1533
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1538
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 1539
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1541
    :goto_1
    return v0

    .line 1535
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1536
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_0

    .line 1541
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    goto :goto_1
.end method

.method public final getLeftTop(I)[F
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000

    .line 1257
    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1258
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1260
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    if-eqz v2, :cond_3

    .line 1261
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 1262
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    .line 1264
    .local v1, "centerY":F
    packed-switch p1, :pswitch_data_0

    .line 1292
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    return-object v2

    .line 1266
    .restart local v0    # "centerX":F
    .restart local v1    # "centerY":F
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    aput v3, v2, v5

    .line 1267
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    aput v3, v2, v6

    goto :goto_0

    .line 1270
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v2, v5

    .line 1271
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    aput v3, v2, v6

    goto :goto_0

    .line 1274
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 1275
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    .line 1278
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    aput v3, v2, v5

    .line 1279
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v6

    goto :goto_0

    .line 1286
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    .line 1287
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v2, v5

    .line 1288
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v2, v6

    goto :goto_0

    .line 1264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 2580
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    return v0
.end method

.method protected getMatrix()[F
    .locals 1

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    return-object v0
.end method

.method public final getMoveLayoutX()F
    .locals 2

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1882
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getMoveLayoutY()F
    .locals 2

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1889
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getMoveLayoutZ()F
    .locals 2

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1894
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutZ()F

    move-result v1

    add-float/2addr v0, v1

    .line 1896
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getNextFocusDownId()I
    .locals 1

    .prologue
    .line 1406
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    return v0
.end method

.method public final getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 1394
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    return v0
.end method

.method public final getNextFocusRightId()I
    .locals 1

    .prologue
    .line 1398
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    return v0
.end method

.method public final getNextFocusUpId()I
    .locals 1

    .prologue
    .line 1402
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    return v0
.end method

.method public final getObjectTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    return-object v0
.end method

.method public getOnClickListener()Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method public getOnFocusListener()Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method public getOnLongClickListener()Lcom/sec/android/glview/TwGLView$OnLongClickListener;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    return-object v0
.end method

.method public getOnTouchListener()Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLAbsoluteLayout"
    .end annotation

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1474
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    .line 1477
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    goto :goto_0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getParentHAlign()I
    .locals 1

    .prologue
    .line 1192
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    return v0
.end method

.method public final getParentVAlign()I
    .locals 1

    .prologue
    .line 1201
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    return v0
.end method

.method public getRepeatClickInterval()I
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    return v0
.end method

.method public final getRight()F
    .locals 2

    .prologue
    .line 1577
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1578
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1581
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    .line 1583
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final getRotatable()Z
    .locals 1

    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    return v0
.end method

.method public final getRotateAnimation()Z
    .locals 1

    .prologue
    .line 1145
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    return v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 3915
    const/4 v0, 0x0

    return v0
.end method

.method public final getSizeGiven()Z
    .locals 1

    .prologue
    .line 1490
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    return v0
.end method

.method protected final getSizeSpecified()Z
    .locals 1

    .prologue
    .line 1486
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 1

    .prologue
    .line 1355
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleButton()Z
    .locals 1

    .prologue
    .line 4037
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    return v0
.end method

.method public final getTop()F
    .locals 2

    .prologue
    .line 1556
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1557
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1559
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1564
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 1565
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1567
    :goto_1
    return v0

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1562
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_0

    .line 1567
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_1
.end method

.method public final getTranslateX()F
    .locals 2

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 3061
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    .line 3063
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    goto :goto_0
.end method

.method public final getTranslateY()F
    .locals 2

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 3073
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    .line 3075
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final getTranslateZ()F
    .locals 2

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 3085
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateZ()F

    move-result v1

    add-float/2addr v0, v1

    .line 3087
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    goto :goto_0
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 2263
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    return v0
.end method

.method public final getWidth()F
    .locals 2

    .prologue
    .line 1614
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1615
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public abstract initSize()V
.end method

.method public isAnimationFinished()Z
    .locals 1

    .prologue
    .line 2390
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    return v0
.end method

.method public final isClickable()Z
    .locals 2

    .prologue
    .line 3728
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClipped()Z
    .locals 1

    .prologue
    .line 3969
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    return v0
.end method

.method public isDim()Z
    .locals 2

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    or-int/2addr v0, v1

    .line 2328
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 3521
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    return v0
.end method

.method public final isFocusable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3724
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    .prologue
    .line 3719
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    return v0
.end method

.method public isInScreen()Z
    .locals 1

    .prologue
    .line 3965
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    return v0
.end method

.method public isParentRotatable()Z
    .locals 1

    .prologue
    .line 3708
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 3709
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3710
    const/4 v0, 0x1

    .line 3715
    :goto_0
    return v0

    .line 3712
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isParentRotatable()Z

    move-result v0

    goto :goto_0

    .line 3715
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatClickWhenLongClicked()Z
    .locals 1

    .prologue
    .line 1026
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method public final isVisible()I
    .locals 1

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2268
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 2270
    :goto_0
    return v0

    .line 2268
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 2270
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    goto :goto_0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 3487
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3488
    const/4 v0, 0x1

    .line 3490
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 3495
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3496
    const/4 v0, 0x1

    .line 3498
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized load()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2547
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    if-eqz v2, :cond_2

    .line 2548
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2549
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 2550
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2569
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 2553
    goto :goto_0

    .line 2556
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-nez v2, :cond_0

    .line 2559
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onLoad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 2561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 2563
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 2564
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->load()Z

    .line 2569
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    goto :goto_0

    .line 2566
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 2567
    goto :goto_0

    .line 2547
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mBottom()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLAbsoluteLayout"
    .end annotation

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    return v0
.end method

.method protected mClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public mLeft()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLAbsoluteLayout"
    .end annotation

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    return v0
.end method

.method public mRight()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLAbsoluteLayout"
    .end annotation

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    return v0
.end method

.method public mTop()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "GLAbsoluteLayout"
    .end annotation

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    return v0
.end method

.method public final mapPoint([FFF)V
    .locals 7
    .param p1, "transformedScreenCoordinate"    # [F
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F

    .prologue
    const/4 v3, 0x3

    const/high16 v2, 0x3f800000

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 3227
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput p2, v0, v1

    .line 3228
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput p3, v0, v6

    .line 3229
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput v2, v0, v3

    .line 3230
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aput v2, v0, v3

    .line 3231
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 3233
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 3234
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aget v0, v0, v6

    aput v0, p1, v6

    .line 3236
    return-void
.end method

.method protected final mapPointReverse([FFF)V
    .locals 11
    .param p1, "transformedScreenCoordinate"    # [F
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F

    .prologue
    .line 3162
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v10, v2, 0x4

    .line 3163
    .local v10, "orientation":I
    if-nez v10, :cond_0

    .line 3164
    const/4 v2, 0x0

    aput p2, p1, v2

    .line 3165
    const/4 v2, 0x1

    aput p3, p1, v2

    .line 3205
    :goto_0
    return-void

    .line 3169
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 3173
    .local v0, "coordinateTransformMatrix":[F
    invoke-virtual {p0, v10}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v9

    .line 3174
    .local v9, "leftTop":[F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_1

    .line 3175
    const/4 v2, 0x0

    aget v3, v9, v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 3176
    const/4 v2, 0x1

    aget v3, v9, v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 3179
    :cond_1
    const/4 v2, 0x4

    new-array v7, v2, [F

    .line 3180
    .local v7, "glLeftTopCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000

    aput v3, v7, v2

    .line 3181
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-static {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 3183
    const/4 v2, 0x4

    new-array v8, v2, [F

    .line 3184
    .local v8, "glRotatedLeftTopCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000

    aput v3, v8, v2

    .line 3185
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-static {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 3187
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3188
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3189
    const/4 v1, 0x0

    mul-int/lit8 v2, v10, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 3190
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v8, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    neg-float v4, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3195
    const/4 v2, 0x4

    new-array v5, v2, [F

    .line 3196
    .local v5, "glCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000

    aput v3, v5, v2

    .line 3197
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, v5, p2, p3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 3199
    const/4 v2, 0x4

    new-array v1, v2, [F

    .line 3200
    .local v1, "glTransformedCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000

    aput v3, v1, v2

    .line 3201
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 3203
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v2, p1, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getScreenCoordinateFromGLCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    goto/16 :goto_0
.end method

.method public final declared-synchronized moveBaseDepthLayout(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 2005
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 2006
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2013
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2014
    monitor-exit p0

    return-void

    .line 2005
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized moveBaseDepthLayout(FZ)V
    .locals 1
    .param p1, "z"    # F
    .param p2, "update"    # Z

    .prologue
    .line 2017
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 2018
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2025
    if-eqz p2, :cond_0

    .line 2026
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    :cond_0
    monitor-exit p0

    return-void

    .line 2017
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized moveBaseDepthLayoutAbsolute(F)V
    .locals 2
    .param p1, "z"    # F

    .prologue
    .line 2048
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutZ()F

    move-result v0

    .line 2050
    .local v0, "moveZ":F
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 2051
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2058
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2059
    monitor-exit p0

    return-void

    .line 2048
    .end local v0    # "moveZ":F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized moveBaseDepthLayoutAbsolute(FZ)V
    .locals 2
    .param p1, "z"    # F
    .param p2, "update"    # Z

    .prologue
    .line 2062
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutZ()F

    move-result v0

    .line 2064
    .local v0, "moveZ":F
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    .line 2065
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2072
    if-eqz p2, :cond_0

    .line 2073
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2075
    :cond_0
    monitor-exit p0

    return-void

    .line 2062
    .end local v0    # "moveZ":F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized moveBaseLayout(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1990
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1991
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1993
    .local v0, "height":F
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 1994
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 1996
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1997
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1998
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1999
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2001
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2002
    monitor-exit p0

    return-void

    .line 1990
    .end local v0    # "height":F
    .end local v1    # "width":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized moveBaseLayoutAbsolute(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2031
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    .line 2032
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 2033
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    .line 2034
    .local v1, "moveX":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v2

    .line 2036
    .local v2, "moveY":F
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 2037
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 2039
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 2040
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 2041
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 2042
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 2044
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2045
    monitor-exit p0

    return-void

    .line 2031
    .end local v0    # "height":F
    .end local v1    # "moveX":F
    .end local v2    # "moveY":F
    .end local v3    # "width":F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized moveBaseLayoutAbsolute(FFZ)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 2078
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    .line 2079
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 2080
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    .line 2081
    .local v1, "moveX":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v2

    .line 2083
    .local v2, "moveY":F
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 2084
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 2086
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 2087
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 2088
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 2089
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 2091
    if-eqz p3, :cond_0

    .line 2092
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2094
    :cond_0
    monitor-exit p0

    return-void

    .line 2078
    .end local v0    # "height":F
    .end local v1    # "moveX":F
    .end local v2    # "moveY":F
    .end local v3    # "width":F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized moveDepthLayout(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 1917
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 1921
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    monitor-exit p0

    return-void

    .line 1917
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveDepthLayoutAbsolute(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 1979
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 1986
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    monitor-exit p0

    return-void

    .line 1979
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveLayout(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1908
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1909
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1910
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1911
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1913
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1914
    monitor-exit p0

    return-void

    .line 1908
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized moveLayoutAbsolute(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1953
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1954
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1956
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1957
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1958
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1959
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1961
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1962
    monitor-exit p0

    return-void

    .line 1953
    .end local v0    # "height":F
    .end local v1    # "width":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized moveLayoutAbsolute(FFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 1965
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1966
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1968
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1969
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1970
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1971
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1973
    if-eqz p3, :cond_0

    .line 1974
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1976
    :cond_0
    monitor-exit p0

    return-void

    .line 1965
    .end local v0    # "height":F
    .end local v1    # "width":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onAlphaUpdated()V
    .locals 1

    .prologue
    .line 3926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 3927
    return-void
.end method

.method protected onDepthUpdated()V
    .locals 1

    .prologue
    .line 3930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDepthChanged:Z

    .line 3931
    return-void
.end method

.method protected abstract onDraw()V
.end method

.method public onFocusStatusChanged(I)V
    .locals 9
    .param p1, "focusStatus"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3864
    if-ne p1, v7, :cond_3

    .line 3865
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 3866
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorRefesh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3872
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getFocusResourceId()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3874
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 3875
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 3876
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 3881
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_2

    .line 3882
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 3884
    :cond_2
    return-void

    .line 3879
    :cond_3
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    goto :goto_0
.end method

.method public onHoverStatusChanged(I)V
    .locals 10
    .param p1, "hoverStatus"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3887
    if-nez p1, :cond_2

    .line 3888
    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 3889
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorRefesh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3891
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getHoverResourceId()I

    move-result v6

    .line 3892
    .local v6, "hoverResId":I
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3894
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 3895
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 3896
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 3907
    .end local v6    # "hoverResId":I
    :cond_1
    :goto_0
    return-void

    .line 3899
    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 3901
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3902
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_1

    .line 3903
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3513
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3517
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 3922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 3923
    return-void
.end method

.method protected abstract onLoad()Z
.end method

.method protected onOrientationChanged(I)V
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v9, 0x40000000

    .line 3539
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v1, :cond_4

    .line 3540
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 3541
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-ne v1, p1, :cond_0

    .line 3581
    :goto_0
    return-void

    .line 3545
    :cond_0
    move v8, p1

    .line 3546
    .local v8, "tempOrientation":I
    if-nez v8, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-ne v1, v2, :cond_6

    .line 3547
    const/4 v8, 0x4

    .line 3552
    :cond_1
    :goto_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    sub-int/2addr v1, v8

    mul-int/lit8 v7, v1, 0x5a

    .line 3553
    .local v7, "degree":I
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 3555
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_4

    .line 3556
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    if-nez v1, :cond_7

    .line 3557
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    if-eqz v1, :cond_2

    .line 3558
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 3559
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_3

    .line 3560
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 3562
    :cond_3
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    invoke-static {v1}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation(F)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3563
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 3576
    .end local v7    # "degree":I
    .end local v8    # "tempOrientation":I
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v1, :cond_5

    .line 3577
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    mul-int/lit8 v2, p1, 0x5a

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/HoverPopupWindow;->setRotation(I)V

    .line 3580
    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3548
    .restart local v8    # "tempOrientation":I
    :cond_6
    if-ne v8, v2, :cond_1

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-nez v1, :cond_1

    .line 3549
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    goto :goto_1

    .line 3565
    .restart local v7    # "degree":I
    :cond_7
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v9

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 3566
    .local v0, "anim":Landroid/view/animation/RotateAnimation;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 3567
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3568
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_8

    .line 3569
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3570
    :cond_8
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3571
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_2
.end method

.method protected onOutOfScreen()V
    .locals 1

    .prologue
    .line 3961
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 3962
    return-void
.end method

.method protected abstract onReset()V
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 3509
    const/4 v0, 0x0

    return v0
.end method

.method protected parentClipRect()Landroid/graphics/Rect;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "ClipRect"
    .end annotation

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1640
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized refreshClipRect()V
    .locals 6

    .prologue
    .line 3285
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 3340
    :goto_0
    monitor-exit p0

    return-void

    .line 3289
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 3290
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 3291
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 3292
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 3294
    .local v0, "bottom":I
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/sec/android/glview/TwGLView;->transformScreenCoordinates(IIII)V

    .line 3296
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 3297
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 3298
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 3299
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 3301
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_0

    .line 3325
    :goto_1
    if-gt v1, v2, :cond_1

    if-le v3, v0, :cond_2

    .line 3326
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 3327
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 3328
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 3329
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 3332
    :cond_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_3

    .line 3333
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    .line 3335
    :cond_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3336
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_4

    .line 3337
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    .line 3339
    :cond_4
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3285
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 3303
    .restart local v0    # "bottom":I
    .restart local v1    # "left":I
    .restart local v2    # "right":I
    .restart local v3    # "top":I
    :pswitch_0
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 3304
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 3305
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 3306
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 3307
    goto :goto_1

    .line 3309
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 3310
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 3311
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 3312
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 3313
    goto/16 :goto_1

    .line 3315
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 3316
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 3317
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 3318
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    float-to-int v0, v4

    .line 3319
    goto/16 :goto_1

    .line 3301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 3958
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 3740
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 3744
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILcom/sec/android/glview/TwGLView;)Z
    .locals 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedView"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 3748
    if-nez p2, :cond_0

    .line 3749
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_6

    .line 3750
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLContext;->onFocusChanged(Lcom/sec/android/glview/TwGLView;)V

    move v2, v3

    .line 3860
    :goto_0
    return v2

    .line 3754
    :cond_0
    const/4 v0, 0x0

    .line 3755
    .local v0, "nextViewToFocus":Lcom/sec/android/glview/TwGLView;
    move v1, p1

    .line 3759
    .local v1, "revisedDirection":I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isParentRotatable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3760
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3811
    move v1, p1

    .line 3817
    :cond_1
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 3842
    :cond_2
    :goto_2
    if-nez v0, :cond_4

    .line 3843
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v5

    if-ne v2, v5, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    if-eqz v2, :cond_3

    move v2, v4

    .line 3844
    goto :goto_0

    .line 3762
    :pswitch_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_1

    .line 3764
    :sswitch_0
    const/16 v1, 0x82

    .line 3765
    goto :goto_1

    .line 3767
    :sswitch_1
    const/16 v1, 0x21

    .line 3768
    goto :goto_1

    .line 3770
    :sswitch_2
    const/16 v1, 0x11

    .line 3771
    goto :goto_1

    .line 3773
    :sswitch_3
    const/16 v1, 0x42

    goto :goto_1

    .line 3778
    :pswitch_1
    sparse-switch p1, :sswitch_data_2

    goto :goto_1

    .line 3780
    :sswitch_4
    const/16 v1, 0x42

    .line 3781
    goto :goto_1

    .line 3783
    :sswitch_5
    const/16 v1, 0x11

    .line 3784
    goto :goto_1

    .line 3786
    :sswitch_6
    const/16 v1, 0x82

    .line 3787
    goto :goto_1

    .line 3789
    :sswitch_7
    const/16 v1, 0x21

    goto :goto_1

    .line 3794
    :pswitch_2
    sparse-switch p1, :sswitch_data_3

    goto :goto_1

    .line 3796
    :sswitch_8
    const/16 v1, 0x21

    .line 3797
    goto :goto_1

    .line 3799
    :sswitch_9
    const/16 v1, 0x82

    .line 3800
    goto :goto_1

    .line 3802
    :sswitch_a
    const/16 v1, 0x42

    .line 3803
    goto :goto_1

    .line 3805
    :sswitch_b
    const/16 v1, 0x11

    goto :goto_1

    .line 3819
    :sswitch_c
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    if-eq v2, v5, :cond_2

    .line 3820
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_2

    .line 3824
    :sswitch_d
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    if-eq v2, v5, :cond_2

    .line 3825
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_2

    .line 3829
    :sswitch_e
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    if-eq v2, v5, :cond_2

    .line 3830
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_2

    .line 3834
    :sswitch_f
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    if-eq v2, v5, :cond_2

    .line 3835
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_2

    .line 3846
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3847
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getInternalFocusParent()Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5, v2, p2, v1}, Lcom/sec/android/glview/TwGLContext;->findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 3853
    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 3854
    invoke-virtual {v0, p1, v6}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move v2, v3

    .line 3856
    goto/16 :goto_0

    .line 3849
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2, v6, p2, v1}, Lcom/sec/android/glview/TwGLContext;->findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_3

    .end local v0    # "nextViewToFocus":Lcom/sec/android/glview/TwGLView;
    .end local v1    # "revisedDirection":I
    :cond_6
    move v2, v4

    .line 3860
    goto/16 :goto_0

    .line 3760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3817
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_c
        0x21 -> :sswitch_e
        0x42 -> :sswitch_d
        0x82 -> :sswitch_f
    .end sparse-switch

    .line 3762
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    .line 3778
    :sswitch_data_2
    .sparse-switch
        0x11 -> :sswitch_4
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch

    .line 3794
    :sswitch_data_3
    .sparse-switch
        0x11 -> :sswitch_8
        0x21 -> :sswitch_a
        0x42 -> :sswitch_9
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 3976
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 3977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 3978
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 3979
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 3981
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 3982
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 3984
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 3985
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 3987
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3988
    monitor-exit p0

    return-void

    .line 3976
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetBaseDepth()V
    .locals 1

    .prologue
    .line 2207
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOriginalDepth:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2209
    monitor-exit p0

    return-void

    .line 2207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetBaseLayout()V
    .locals 4

    .prologue
    .line 2189
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 2190
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 2192
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2193
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2194
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2195
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2197
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2198
    monitor-exit p0

    return-void

    .line 2189
    .end local v0    # "height":F
    .end local v1    # "width":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetClipRect()V
    .locals 1

    .prologue
    .line 3274
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 3275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    .line 3276
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3277
    monitor-exit p0

    return-void

    .line 3274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetDepth()V
    .locals 1

    .prologue
    .line 2201
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBaseDepth:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mZCoordinate:F

    .line 2203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    monitor-exit p0

    return-void

    .line 2201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected resetDrag()V
    .locals 2

    .prologue
    .line 3528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 3529
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3530
    return-void
.end method

.method public final declared-synchronized resetLayout()V
    .locals 4

    .prologue
    .line 2177
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 2178
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 2180
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2181
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2182
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2183
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2185
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2186
    monitor-exit p0

    return-void

    .line 2177
    .end local v0    # "height":F
    .end local v1    # "width":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized resetScale()V
    .locals 2

    .prologue
    .line 2771
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 2773
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2775
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2777
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 2778
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2779
    monitor-exit p0

    return-void

    .line 2771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetTransformMatrix()V
    .locals 2

    .prologue
    .line 2746
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2753
    :goto_0
    monitor-exit p0

    return-void

    .line 2749
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2750
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2751
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2752
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2746
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetTranslate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2810
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2822
    :goto_0
    monitor-exit p0

    return-void

    .line 2813
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2815
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2817
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2818
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 2819
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    .line 2821
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2810
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized rotateDegree(I)V
    .locals 7
    .param p1, "degree"    # I

    .prologue
    const/high16 v4, 0x40000000

    .line 3135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3149
    :goto_0
    monitor-exit p0

    return-void

    .line 3138
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3140
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 3142
    .local v6, "currentPivot":[F
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 3144
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3145
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 3146
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3148
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3135
    .end local v6    # "currentPivot":[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized scale(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v5, 0x40000000

    .line 2790
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2791
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2793
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 2794
    .local v0, "currentPivot":[F
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2796
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2797
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-static {v1, v2, p1, p2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2798
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2800
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 2801
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 2803
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2804
    monitor-exit p0

    return-void

    .line 2790
    .end local v0    # "currentPivot":[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1052
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1053
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 1054
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mOldAlpha:F

    .line 1055
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->updateAlpha()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    :cond_0
    monitor-exit p0

    return-void

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2342
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2343
    monitor-exit p0

    return-void

    .line 2342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;Z)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "hideAfterAnimation"    # Z

    .prologue
    .line 2354
    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 2355
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2356
    monitor-exit p0

    return-void

    .line 2354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAsyncLoad(Z)V
    .locals 0
    .param p1, "async"    # Z

    .prologue
    .line 1042
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 1043
    return-void
.end method

.method public declared-synchronized setBackground(I)Z
    .locals 7
    .param p1, "resId"    # I

    .prologue
    .line 2410
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 2411
    const/4 v0, 0x0

    .line 2420
    :goto_0
    monitor-exit p0

    return v0

    .line 2413
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2414
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 2415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2417
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 2418
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2419
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2420
    const/4 v0, 0x1

    goto :goto_0

    .line 2410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBackgroundAlpha(I)Z
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 2474
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2475
    const/4 v0, 0x0

    .line 2478
    :goto_0
    monitor-exit p0

    return v0

    .line 2477
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2478
    const/4 v0, 0x1

    goto :goto_0

    .line 2474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBypassTouch(Z)V
    .locals 1
    .param p1, "bypass"    # Z

    .prologue
    .line 2482
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2483
    monitor-exit p0

    return-void

    .line 2482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCenterPivot(Z)V
    .locals 1
    .param p1, "centerPivot"    # Z

    .prologue
    .line 1117
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    monitor-exit p0

    return-void

    .line 1117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 3736
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit16 v1, v0, -0x4001

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    .line 3737
    return-void

    .line 3736
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setClipRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 3265
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 3267
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    .line 3268
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3269
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3271
    monitor-exit p0

    return-void

    .line 3264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setClipping(Z)V
    .locals 1
    .param p1, "clipping"    # Z

    .prologue
    .line 3257
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 3258
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-eqz v0, :cond_0

    .line 3259
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3261
    :cond_0
    monitor-exit p0

    return-void

    .line 3257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mContentDescription:Ljava/lang/String;

    .line 1379
    return-void
.end method

.method public final declared-synchronized setContinuousDrawMode(Z)V
    .locals 1
    .param p1, "continuousDrawMode"    # Z

    .prologue
    .line 2400
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2401
    monitor-exit p0

    return-void

    .line 2400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDefaultOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 3097
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 3098
    rsub-int/lit8 v0, p1, 0x4

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 3099
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3100
    monitor-exit p0

    return-void

    .line 3097
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDim(Z)V
    .locals 1
    .param p1, "dimmed"    # Z

    .prologue
    .line 2317
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2318
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2322
    :goto_0
    monitor-exit p0

    return-void

    .line 2320
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDimmed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDragSensitivity(I)V
    .locals 1
    .param p1, "sensitivity"    # I

    .prologue
    .line 548
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 552
    :cond_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 553
    return-void
.end method

.method public setDragVibration(Z)V
    .locals 0
    .param p1, "vibration"    # Z

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 523
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 1003
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 1004
    return-void
.end method

.method public setExtraDescription(Z)V
    .locals 0
    .param p1, "hasExtraDescription"    # Z

    .prologue
    .line 4045
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 4046
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    .prologue
    .line 3732
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    .line 3733
    return-void

    .line 3732
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 1861
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1876
    :goto_0
    monitor-exit p0

    return-void

    .line 1864
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1865
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 1868
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1869
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setHeight(F)V

    .line 1872
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_3

    .line 1873
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setHeight(F)V

    .line 1875
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1861
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHoverPopupGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 4054
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 4055
    return-void
.end method

.method public setHoverPopupOffset(II)V
    .locals 0
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 4049
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 4050
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 4051
    return-void
.end method

.method public setInternalFocus(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 3686
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 3687
    return-void
.end method

.method public final setLeftTop(IFF)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 1215
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1216
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 1219
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 1220
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 1222
    :cond_2
    return-void
.end method

.method public final setLeftTop(IFFZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "update"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1235
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1238
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 1240
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 1243
    :cond_2
    if-eqz p4, :cond_3

    .line 1244
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 1245
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 1247
    :cond_3
    return-void
.end method

.method public final setLeftTop(I[F)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "leftTops"    # [F

    .prologue
    .line 1304
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1305
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1308
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1309
    return-void
.end method

.method public setLongClickVibration(Z)V
    .locals 0
    .param p1, "vibration"    # Z

    .prologue
    .line 1038
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mLongClickVibration:Z

    .line 1039
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0
    .param p1, "longClickable"    # Z

    .prologue
    .line 1030
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 1031
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1422
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 1423
    return-void
.end method

.method public setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1450
    if-eqz p1, :cond_0

    .line 1451
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 1452
    const/4 v0, 0x1

    .line 1454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1410
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 1411
    return-void
.end method

.method public setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1426
    if-eqz p1, :cond_0

    .line 1427
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 1428
    const/4 v0, 0x1

    .line 1430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1414
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 1415
    return-void
.end method

.method public setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1434
    if-eqz p1, :cond_0

    .line 1435
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 1436
    const/4 v0, 0x1

    .line 1438
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1418
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 1419
    return-void
.end method

.method public setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1442
    if-eqz p1, :cond_0

    .line 1443
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 1444
    const/4 v0, 0x1

    .line 1446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setNinePatchBackground(I)Z
    .locals 7
    .param p1, "resId"    # I

    .prologue
    .line 2430
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 2431
    const/4 v0, 0x0

    .line 2441
    :goto_0
    monitor-exit p0

    return v0

    .line 2433
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2434
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 2435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2437
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 2438
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2439
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 2440
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2441
    const/4 v0, 0x1

    goto :goto_0

    .line 2430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNinePatchBackground(II)Z
    .locals 8
    .param p1, "resId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 2453
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 2454
    const/4 v0, 0x0

    .line 2464
    :goto_0
    monitor-exit p0

    return v0

    .line 2456
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2457
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 2458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2460
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 2461
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    int-to-float v7, p2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 2462
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 2463
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2464
    const/4 v0, 0x1

    goto :goto_0

    .line 2453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setObjectTag(I)V
    .locals 1
    .param p1, "objectId"    # I

    .prologue
    .line 1317
    invoke-static {p1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 1318
    return-void
.end method

.method public final setObjectTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "commandString"    # Ljava/lang/String;

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mObjectTag:Ljava/lang/String;

    .line 1327
    return-void
.end method

.method public setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 984
    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnClickListener;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 724
    return-void
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnDragListener;

    .prologue
    .line 993
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 994
    return-void
.end method

.method public setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .prologue
    .line 969
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 970
    return-void
.end method

.method public setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .prologue
    .line 965
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 966
    return-void
.end method

.method public setOnLongClickListener(Lcom/sec/android/glview/TwGLView$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .prologue
    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 738
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnLongClickListener:Lcom/sec/android/glview/TwGLView$OnLongClickListener;

    .line 739
    return-void
.end method

.method public setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    .line 778
    return-void
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 953
    return-void
.end method

.method public final declared-synchronized setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 3109
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 3110
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 3126
    :goto_0
    monitor-exit p0

    return-void

    .line 3117
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 3118
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 3120
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->updateRotationMatrix()V

    .line 3122
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    if-eqz v0, :cond_2

    .line 3123
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;->onOrientationChanged(I)V

    .line 3125
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 2496
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 2497
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 2498
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2500
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 2501
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2503
    :cond_1
    monitor-exit p0

    return-void

    .line 2496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setParentHAlign(I)V
    .locals 0
    .param p1, "halign"    # I

    .prologue
    .line 1173
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 1174
    return-void
.end method

.method public final setParentVAlign(I)V
    .locals 0
    .param p1, "valign"    # I

    .prologue
    .line 1183
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 1184
    return-void
.end method

.method public setRepeatClickInterval(I)V
    .locals 0
    .param p1, "milliSeconds"    # I

    .prologue
    .line 1011
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickInterval:I

    .line 1012
    return-void
.end method

.method public setRepeatClickWhenLongClicked(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1019
    if-eqz p1, :cond_0

    .line 1020
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    .line 1022
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    .line 1023
    return-void
.end method

.method public declared-synchronized setRotatable(Z)V
    .locals 1
    .param p1, "rotatable"    # Z

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    monitor-exit p0

    return-void

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimation(Z)V
    .locals 1
    .param p1, "rotateAnimation"    # Z

    .prologue
    .line 1136
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    monitor-exit p0

    return-void

    .line 1136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimationDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 1154
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    monitor-exit p0

    return-void

    .line 1154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1149
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1150
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    :cond_0
    monitor-exit p0

    return-void

    .line 1149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 1822
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1823
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 1826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 1828
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1831
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 1832
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1835
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1836
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1839
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1840
    monitor-exit p0

    return-void

    .line 1822
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mSubTitle:Ljava/lang/String;

    .line 1375
    return-void
.end method

.method public final setTag(I)V
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 1345
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    .line 1346
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setObjectTag(I)V

    .line 1347
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1363
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 1366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 1370
    :cond_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    .line 1371
    return-void
.end method

.method public setToggleButton()V
    .locals 1

    .prologue
    .line 4033
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 4034
    return-void
.end method

.method public final declared-synchronized setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 2280
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eq v0, p1, :cond_0

    .line 2281
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 2282
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2287
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2288
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2290
    :cond_1
    monitor-exit p0

    return-void

    .line 2280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVisibility(IZ)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "update"    # Z

    .prologue
    .line 2293
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 2294
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    .line 2295
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2298
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2299
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2301
    :cond_1
    monitor-exit p0

    return-void

    .line 2293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 1843
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1858
    :goto_0
    monitor-exit p0

    return-void

    .line 1846
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1847
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1848
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 1850
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1851
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    .line 1854
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_3

    .line 1855
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setWidth(F)V

    .line 1857
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1843
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startAnimation()V
    .locals 2

    .prologue
    .line 2362
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2376
    :goto_0
    monitor-exit p0

    return-void

    .line 2365
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 2366
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 2368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 2373
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 2375
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2370
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 2371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 3377
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    packed-switch v0, :pswitch_data_0

    .line 3386
    const/16 v6, 0x1f4

    .line 3389
    .local v6, "dragHoldTime":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 3390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    .line 3391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    .line 3392
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 3393
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_0

    .line 3394
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 3395
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    if-nez v0, :cond_2

    .line 3396
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3401
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3402
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3474
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-eqz v0, :cond_11

    .line 3475
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v7

    .line 3482
    :goto_3
    return v0

    .line 3379
    .end local v6    # "dragHoldTime":I
    :pswitch_0
    const/4 v6, 0x0

    .line 3380
    .restart local v6    # "dragHoldTime":I
    goto :goto_0

    .line 3382
    .end local v6    # "dragHoldTime":I
    :pswitch_1
    const/16 v6, 0x12c

    .line 3383
    .restart local v6    # "dragHoldTime":I
    goto :goto_0

    .line 3398
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3404
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 3405
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_8

    .line 3406
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_7

    .line 3407
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 3408
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_4

    .line 3409
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 3411
    :cond_4
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3412
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    move v0, v7

    .line 3413
    goto :goto_3

    .line 3415
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_6

    .line 3416
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    sub-float v4, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    sub-float v5, v1, v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 3418
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    .line 3419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    .line 3420
    if-eqz v6, :cond_8

    move v0, v7

    .line 3421
    goto :goto_3

    .line 3422
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3423
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 3426
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3428
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3429
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3430
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3431
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3435
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_e

    .line 3436
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_d

    .line 3437
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_b

    .line 3438
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_a

    .line 3439
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 3441
    :cond_a
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3446
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 3451
    :cond_c
    :goto_4
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3452
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3453
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3454
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3448
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3449
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_4

    .line 3457
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 3458
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_10

    .line 3459
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_f

    .line 3460
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_f

    .line 3461
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 3464
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 3466
    :cond_10
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3467
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3468
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3469
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3479
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3480
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3482
    :cond_12
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_3

    .line 3377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized translate(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x3f000000

    .line 2956
    monitor-enter p0

    cmpl-float v2, p1, v3

    if-nez v2, :cond_0

    cmpl-float v2, p2, v3

    if-nez v2, :cond_0

    .line 2975
    :goto_0
    monitor-exit p0

    return-void

    .line 2959
    :cond_0
    move v0, p1

    .line 2960
    .local v0, "alignedX":F
    move v1, p2

    .line 2963
    .local v1, "alignedY":F
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2964
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 2965
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 2968
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v4, v0}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v5, v1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2970
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2972
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2973
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2974
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2956
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized translate(FFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f000000

    .line 3002
    monitor-enter p0

    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    .line 3025
    :goto_0
    monitor-exit p0

    return-void

    .line 3005
    :cond_0
    move v0, p1

    .line 3006
    .local v0, "alignedX":F
    move v1, p2

    .line 3009
    .local v1, "alignedY":F
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3010
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 3011
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 3014
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3015
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 3017
    cmpl-float v2, p3, v5

    if-eqz v2, :cond_2

    .line 3018
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 3022
    :goto_1
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 3023
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 3024
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3002
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3020
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized translate(FFFZ)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "update"    # Z

    .prologue
    const/high16 v5, 0x3f000000

    const/4 v4, 0x0

    .line 3028
    monitor-enter p0

    cmpl-float v2, p1, v4

    if-nez v2, :cond_0

    cmpl-float v2, p2, v4

    if-nez v2, :cond_0

    cmpl-float v2, p3, v4

    if-nez v2, :cond_0

    .line 3052
    :goto_0
    monitor-exit p0

    return-void

    .line 3031
    :cond_0
    move v0, p1

    .line 3032
    .local v0, "alignedX":F
    move v1, p2

    .line 3035
    .local v1, "alignedY":F
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3036
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 3037
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 3039
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3040
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 3042
    if-eqz p4, :cond_2

    .line 3043
    cmpl-float v2, p3, v4

    if-eqz v2, :cond_3

    .line 3044
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 3049
    :cond_2
    :goto_1
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 3050
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 3051
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3028
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3046
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized translate(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x3f000000

    .line 2978
    monitor-enter p0

    cmpl-float v2, p1, v3

    if-nez v2, :cond_0

    cmpl-float v2, p2, v3

    if-nez v2, :cond_0

    .line 2999
    :goto_0
    monitor-exit p0

    return-void

    .line 2981
    :cond_0
    move v0, p1

    .line 2982
    .local v0, "alignedX":F
    move v1, p2

    .line 2985
    .local v1, "alignedY":F
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2986
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 2987
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 2990
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v4, v0}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v5, v1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2992
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2994
    if-eqz p3, :cond_2

    .line 2995
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2997
    :cond_2
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2998
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2978
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized translateAbsolute(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v6, 0x3f000000

    .line 2825
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    float-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    float-to-double v2, v2

    float-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2850
    :goto_0
    monitor-exit p0

    return-void

    .line 2828
    :cond_0
    move v0, p1

    .line 2829
    .local v0, "alignedX":F
    move v1, p2

    .line 2832
    .local v1, "alignedY":F
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2833
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2836
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2837
    add-float v2, p1, v6

    float-to-int v2, v2

    int-to-float v0, v2

    .line 2838
    add-float v2, p2, v6

    float-to-int v2, v2

    int-to-float v1, v2

    .line 2842
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v4, v0}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v5, v1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2844
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2846
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2848
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2849
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2825
    .end local v0    # "alignedX":F
    .end local v1    # "alignedY":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized translateAbsolute(FFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/high16 v6, 0x3f000000

    .line 2853
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    float-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    float-to-double v2, v2

    float-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    float-to-double v2, v2

    float-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2882
    :goto_0
    monitor-exit p0

    return-void

    .line 2856
    :cond_0
    move v0, p1

    .line 2857
    .local v0, "alignedX":F
    move v1, p2

    .line 2860
    .local v1, "alignedY":F
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2861
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2864
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2865
    add-float v2, p1, v6

    float-to-int v2, v2

    int-to-float v0, v2

    .line 2866
    add-float v2, p2, v6

    float-to-int v2, v2

    int-to-float v1, v2

    .line 2870
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v4, v0}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v5, v1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v6, p3}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2872
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2874
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    float-to-double v2, v2

    float-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2875
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2879
    :goto_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2880
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 2881
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2853
    .end local v0    # "alignedX":F
    .end local v1    # "alignedY":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2877
    .restart local v0    # "alignedX":F
    .restart local v1    # "alignedY":F
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized translateAbsolute(FFFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "update"    # Z

    .prologue
    const/high16 v6, 0x3f000000

    .line 2914
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    float-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    float-to-double v2, v2

    float-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    float-to-double v2, v2

    float-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2945
    :goto_0
    monitor-exit p0

    return-void

    .line 2917
    :cond_0
    move v0, p1

    .line 2918
    .local v0, "alignedX":F
    move v1, p2

    .line 2921
    .local v1, "alignedY":F
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2922
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2925
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2926
    add-float v2, p1, v6

    float-to-int v2, v2

    int-to-float v0, v2

    .line 2927
    add-float v2, p1, v6

    float-to-int v2, v2

    int-to-float v1, v2

    .line 2931
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v4, v0}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v5, v1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v6, p3}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2933
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2935
    if-eqz p4, :cond_2

    .line 2936
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F

    float-to-double v2, v2

    float-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2937
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2942
    :cond_2
    :goto_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2943
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 2944
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mTranslateZ:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2914
    .end local v0    # "alignedX":F
    .end local v1    # "alignedY":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2939
    .restart local v0    # "alignedX":F
    .restart local v1    # "alignedY":F
    :cond_3
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized translateAbsolute(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    const/high16 v6, 0x3f000000

    .line 2885
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    float-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    float-to-double v2, v2

    float-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 2911
    :goto_0
    monitor-exit p0

    return-void

    .line 2888
    :cond_0
    move v0, p1

    .line 2889
    .local v0, "alignedX":F
    move v1, p2

    .line 2892
    .local v1, "alignedY":F
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2893
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2896
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2897
    add-float v2, p1, v6

    float-to-int v2, v2

    int-to-float v0, v2

    .line 2898
    add-float v2, p2, v6

    float-to-int v2, v2

    int-to-float v1, v2

    .line 2902
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v4, v0}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v5, v1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2904
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2906
    if-eqz p3, :cond_2

    .line 2907
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 2909
    :cond_2
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2910
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2885
    .end local v0    # "alignedX":F
    .end local v1    # "alignedY":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public updateAlpha()V
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1094
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 1095
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 1098
    :cond_0
    return-void
.end method

.method public updateLayout(Z)V
    .locals 2
    .param p1, "depthUpdated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2097
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 2098
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 2099
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 2102
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 2103
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 2105
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 2106
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 2108
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 2109
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onDepthUpdated()V

    .line 2111
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2113
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v0, :cond_4

    .line 2114
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->updateRotationMatrix()V

    .line 2117
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    if-eqz v0, :cond_5

    .line 2118
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->updateScaleMatrix()V

    .line 2120
    :cond_5
    return-void
.end method

.method public final declared-synchronized updateRotationMatrix()V
    .locals 9

    .prologue
    const/high16 v3, 0x40000000

    .line 2123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2125
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 2126
    .local v6, "currentPivot":[F
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 2127
    .local v8, "rotationPivot":[F
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v7

    .line 2129
    .local v7, "leftTop":[F
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    if-eqz v0, :cond_0

    .line 2130
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    .line 2131
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    .line 2133
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2135
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2136
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2137
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2152
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2153
    monitor-exit p0

    return-void

    .line 2139
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2140
    const/4 v0, 0x0

    aget v1, v7, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 2141
    const/4 v0, 0x1

    aget v1, v7, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 2144
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2145
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2147
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2148
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2149
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2123
    .end local v6    # "currentPivot":[F
    .end local v7    # "leftTop":[F
    .end local v8    # "rotationPivot":[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized updateScaleMatrix()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000

    .line 2156
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleChanged:Z

    .line 2158
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 2161
    .local v0, "currentPivot":[F
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2162
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2164
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2166
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2167
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    const/high16 v5, 0x3f800000

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2168
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2170
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2171
    monitor-exit p0

    return-void

    .line 2156
    .end local v0    # "currentPivot":[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
