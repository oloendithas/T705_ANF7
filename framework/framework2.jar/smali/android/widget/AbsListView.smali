.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$HoverScrollHandler;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$TwSmoothScrollByMove;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected AIR_VIEW_WINSET:Z

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private isHoveringUIEnabled:Z

.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentKeyCode:I

.field private mDVFSCookie:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSHelperBUS:Landroid/os/DVFSHelper;

.field private mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private mDVFSHelperGPU:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverBottomAreaHeight_DP:I

.field private mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoverTopAreaHeight_DP:I

.field private mHoveredOnEllipsizedText:Z

.field private mIsChildViewEnabled:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field final mIsScrap:[Z

.field private mIsShiftkeyPressed:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mMotionPosition:I

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mMultiSelectionStart:Z

.field private mOldAdapterItemCount:I

.field private mOldKeyCode:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field public mTwCurrentFocusPosition:I

.field private mTwCustomMultiChoiceMode:Z

.field private mTwDistanceFromTrackedChildTop:I

.field private mTwDragBlockBottom:I

.field private mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mTwDragBlockLeft:I

.field private mTwDragBlockRect:Landroid/graphics/Rect;

.field private mTwDragBlockRight:I

.field private mTwDragBlockTop:I

.field private mTwDragEndX:I

.field private mTwDragEndY:I

.field private mTwDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTwDragSelectedItemSize:I

.field private mTwDragSelectedViewPosition:I

.field private mTwDragStartX:I

.field private mTwDragStartY:I

.field private mTwPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTwScrollAmount:I

.field private mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

.field private mTwTrackedChild:Landroid/view/View;

.field private mTwTrackedChildPosition:I

.field private mTwTwScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field private methodPauseGc:Ljava/lang/reflect/Method;

.field private methodResumeGc:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 808
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1043
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 139
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 140
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 141
    iput-object v4, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 143
    iput-boolean v3, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 274
    iput v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 307
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 332
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 337
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 347
    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 352
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 358
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 363
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 368
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 373
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 378
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 383
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 388
    iput v3, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 436
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 467
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 510
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 530
    iput v5, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 532
    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 558
    iput v5, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 561
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 564
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 572
    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 573
    iput-object v4, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 620
    iput v3, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 639
    const/high16 v1, 0x3f800000

    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 641
    new-array v1, v6, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 651
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 656
    iput v3, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 663
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 714
    iput v3, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 746
    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight_DP:I

    .line 748
    const/16 v1, 0x19

    iput v1, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight_DP:I

    .line 750
    iput v3, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 752
    iput v3, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 762
    iput-wide v7, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 764
    iput-wide v7, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 766
    iput-wide v7, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 768
    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 770
    iput-wide v7, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 772
    iput v5, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 777
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 782
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 788
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 793
    const/16 v1, 0xa

    iput v1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I

    .line 798
    iput v3, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 803
    iput-boolean v3, p0, Landroid/widget/AbsListView;->isHoveringUIEnabled:Z

    .line 826
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 831
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 832
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 833
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 834
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 836
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 840
    iput v5, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 841
    iput v5, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    .line 842
    iput v3, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 843
    iput v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 844
    iput v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 845
    iput v5, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 848
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mMultiSelectionStart:Z

    .line 850
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    .line 851
    iput v5, p0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 854
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 855
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 856
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 857
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 858
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 860
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 861
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 862
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 863
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 865
    iput-object v4, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 866
    iput v5, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 867
    iput v3, p0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 870
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 938
    iput-object v4, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 939
    iput-object v4, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    .line 940
    iput-object v4, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    .line 941
    iput-object v4, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 942
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 943
    iput v3, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 944
    iput-object v4, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 945
    iput-object v4, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 1029
    iput-boolean v3, p0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 3480
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 4441
    iput v3, p0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 4442
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5232
    iput v5, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5234
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5235
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5236
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6549
    iput-object v4, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6550
    iput-object v4, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6551
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/widget/AbsListView;->mTwScrollAmount:I

    .line 8739
    new-instance v1, Landroid/widget/AbsListView$5;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8808
    iput v3, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 1044
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 1046
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1048
    invoke-virtual {p0, v6}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 1049
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1050
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 1051
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1056
    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_124

    .line 1057
    const-string v1, "AbsListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1062
    :cond_124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->isHoveringUIEnabled:Z

    .line 1063
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1066
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1067
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1070
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 140
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 141
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 143
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 274
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 307
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 332
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 337
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 347
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 352
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 358
    new-instance v9, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 363
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 368
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 373
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 378
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 383
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 388
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 436
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 467
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 510
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 530
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 532
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 558
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 561
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 564
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 572
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 573
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 620
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 639
    const/high16 v9, 0x3f800000

    iput v9, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 641
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 651
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 656
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 663
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 714
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 746
    const/16 v9, 0xf

    iput v9, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight_DP:I

    .line 748
    const/16 v9, 0x19

    iput v9, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight_DP:I

    .line 750
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 752
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 762
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 764
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 766
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 768
    const-wide/16 v9, 0x12c

    iput-wide v9, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 770
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 772
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 777
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 782
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 788
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 793
    const/16 v9, 0xa

    iput v9, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I

    .line 798
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 803
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->isHoveringUIEnabled:Z

    .line 826
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 831
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 832
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 833
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 834
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 836
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 840
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 841
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    .line 842
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 843
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 844
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 845
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 848
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mMultiSelectionStart:Z

    .line 850
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    .line 851
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 854
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 855
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 856
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 857
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 858
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 860
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 861
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 862
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 863
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 865
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 866
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 867
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 870
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 938
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 939
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    .line 940
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    .line 941
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 942
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 943
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 944
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 945
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 1029
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 3480
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 4441
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 4442
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5232
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5234
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5235
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5236
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6549
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6550
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6551
    const/16 v9, 0x1f4

    iput v9, p0, Landroid/widget/AbsListView;->mTwScrollAmount:I

    .line 8739
    new-instance v9, Landroid/widget/AbsListView$5;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8808
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 1071
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 1073
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1075
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1078
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1079
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_166

    .line 1080
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1083
    :cond_166
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1086
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1087
    .local v6, "stackFromBottom":Z
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 1089
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1090
    .local v4, "scrollingCacheEnabled":Z
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1092
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1093
    .local v8, "useTextFilter":Z
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 1095
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1097
    .local v7, "transcriptMode":I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 1099
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1100
    .local v1, "color":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 1102
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 1103
    .local v3, "enableFastScroll":Z
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1105
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1106
    .local v5, "smoothScrollbar":Z
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1108
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1109
    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1117
    iget-object v9, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v9, :cond_1db

    .line 1118
    const-string v9, "AbsListView"

    const-string v10, "Get MotionRecognitionManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const-string/jumbo v9, "motion_recognition"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v9, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1123
    :cond_1db
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsListView;->isHoveringUIEnabled:Z

    .line 1124
    return-void
.end method

.method private acceptFilter()Z
    .registers 2

    .prologue
    .line 2324
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic access$000(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z
    .registers 6
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;II)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/AbsListView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic access$1302(Landroid/widget/AbsListView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/widget/AbsListView$CheckForLongPress;

    .prologue
    .line 128
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1802(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 128
    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)Landroid/view/HapticPreDrawListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 128
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 128
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/widget/AbsListView;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4700(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4900(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$5302(Landroid/widget/AbsListView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    return p1
.end method

.method static synthetic access$5400(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5700(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5800(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5900(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$6000(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    return v0
.end method

.method static synthetic access$6100(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    return v0
.end method

.method static synthetic access$6200(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p0}, Landroid/widget/AbsListView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/widget/AbsListView;)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$6302(Landroid/widget/AbsListView;J)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$6400(Landroid/widget/AbsListView;)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    return-wide v0
.end method

.method static synthetic access$6402(Landroid/widget/AbsListView;J)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    return-wide p1
.end method

.method static synthetic access$6500(Landroid/widget/AbsListView;)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    return-wide v0
.end method

.method static synthetic access$6600(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/AbsListView;)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    return-wide v0
.end method

.method static synthetic access$6800(Landroid/widget/AbsListView;)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$6900(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$7002(Landroid/widget/AbsListView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$7100(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$7200(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$7300(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$7400(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$HoverScrollHandler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$7502(Landroid/widget/AbsListView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$800(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AbsListView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method private addToPressItemListArray(II)V
    .registers 7
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 8942
    const/4 v0, 0x0

    .line 8944
    .local v0, "checkCount":I
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_6

    .line 8987
    :goto_5
    return-void

    .line 8948
    :cond_6
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2d

    .line 8949
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 8950
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8985
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 8952
    :cond_23
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 8955
    :cond_2d
    if-ge p1, p2, :cond_5b

    .line 8956
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 8957
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    if-ge v1, v0, :cond_1f

    .line 8958
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 8959
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8963
    :goto_4c
    add-int/lit8 p1, p1, 0x1

    .line 8957
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 8961
    :cond_51
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 8965
    .end local v1    # "i":I
    :cond_5b
    if-le p1, p2, :cond_89

    .line 8966
    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    .line 8967
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_62
    if-ge v1, v0, :cond_1f

    .line 8968
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 8969
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8973
    :goto_7a
    add-int/lit8 p1, p1, -0x1

    .line 8967
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 8971
    :cond_7f
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 8976
    .end local v1    # "i":I
    :cond_89
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 8977
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 8979
    :cond_a0
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f
.end method

.method private clearScrollingCache()V
    .registers 2

    .prologue
    .line 6679
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 6680
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_11

    .line 6681
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 6697
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6699
    :cond_16
    return-void
.end method

.method private contentFits()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1661
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1662
    .local v0, "childCount":I
    if-nez v0, :cond_9

    .line 1665
    :cond_8
    :goto_8
    return v1

    .line 1663
    :cond_9
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v3, :cond_f

    move v1, v2

    goto :goto_8

    .line 1665
    :cond_f
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_32

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_8

    :cond_32
    move v1, v2

    goto :goto_8
.end method

.method private createScrollingCache()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 6671
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_19

    .line 6672
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 6673
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 6674
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 6676
    :cond_19
    return-void
.end method

.method private createTextFilter(Z)V
    .registers 6
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 7738
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_36

    .line 7739
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7740
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7741
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7742
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7743
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7744
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7745
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7746
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7747
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 7748
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7749
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 7751
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_36
    if-eqz p1, :cond_41

    .line 7752
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10301ef

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7756
    :goto_40
    return-void

    .line 7754
    :cond_41
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10301f0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_40
.end method

.method private dismissPopup()V
    .registers 2

    .prologue
    .line 7386
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 7387
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7389
    :cond_9
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3071
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3072
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 3073
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18

    .line 3074
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3075
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3076
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3080
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_18
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_59

    .line 3082
    iget-object v5, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3083
    .local v2, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3085
    if-eqz v1, :cond_22

    .line 3086
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3087
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3088
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_22

    .line 3093
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "selectedPosition":Ljava/lang/Integer;
    :cond_59
    return-void
.end method

.method private finishGlows()V
    .registers 2

    .prologue
    .line 7979
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_e

    .line 7980
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7981
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7983
    :cond_e
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 11
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 7432
    sparse-switch p2, :sswitch_data_a2

    .line 7465
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7434
    :sswitch_b
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7435
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7436
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7437
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7469
    .local v1, "dY":I
    :goto_23
    sub-int v2, v0, v4

    .line 7470
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 7471
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7440
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2d
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7441
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7442
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7443
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7444
    .restart local v1    # "dY":I
    goto :goto_23

    .line 7446
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_46
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7447
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7448
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7449
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7450
    .restart local v1    # "dY":I
    goto :goto_23

    .line 7452
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_5f
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7453
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7454
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7455
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7456
    .restart local v1    # "dY":I
    goto :goto_23

    .line 7459
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_78
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7460
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7461
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7462
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7463
    .restart local v1    # "dY":I
    goto :goto_23

    .line 7432
    nop

    :sswitch_data_a2
    .sparse-switch
        0x1 -> :sswitch_78
        0x2 -> :sswitch_78
        0x11 -> :sswitch_46
        0x21 -> :sswitch_5f
        0x42 -> :sswitch_b
        0x82 -> :sswitch_2d
    .end sparse-switch
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .registers 4

    .prologue
    .line 7759
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_2b

    .line 7760
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7761
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090134

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 7766
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 7768
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 7769
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7771
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_2b
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .registers 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 1128
    invoke-virtual {p0, v10}, Landroid/view/View;->setClickable(Z)V

    .line 1129
    invoke-virtual {p0, v10}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 1130
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1131
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1132
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1134
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3b

    .line 1135
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 1136
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1137
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 1138
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 1139
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 1140
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 1143
    .end local v7    # "configuration":Landroid/view/ViewConfiguration;
    :cond_3b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 1144
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 1148
    :cond_51
    new-instance v1, Landroid/view/HapticPreDrawListener;

    invoke-direct {v1}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1151
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_6d

    .line 1152
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v10, :cond_6b

    move v0, v10

    :cond_6b
    iput-boolean v0, p0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 1156
    :cond_6d
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c8

    .line 1157
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 1158
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1160
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_GPU"

    const/16 v3, 0x10

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    .line 1161
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1163
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_BUS"

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    .line 1164
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1166
    sget v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    if-eqz v0, :cond_c8

    .line 1167
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 1168
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1173
    :cond_c8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 1174
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/widget/AbsListView;->mAudioManager:Landroid/media/AudioManager;

    .line 1178
    :cond_dc
    const-class v6, Ldalvik/system/VMRuntime;

    .line 1180
    .local v6, "clazz":Ljava/lang/Class;
    :try_start_de
    const-string/jumbo v0, "pauseGc"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1181
    const-string/jumbo v0, "resumeGc"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;
    :try_end_105
    .catch Ljava/lang/NoSuchMethodException; {:try_start_de .. :try_end_105} :catch_14b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_de .. :try_end_105} :catch_149

    .line 1187
    :goto_105
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 1188
    .local v9, "value":Landroid/util/TypedValue;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_148

    .line 1189
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010478

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    .line 1191
    .local v8, "resolved":Z
    if-eqz v8, :cond_12b

    .line 1192
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1196
    :cond_12b
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010479

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    .line 1198
    if-eqz v8, :cond_148

    .line 1199
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1204
    .end local v8    # "resolved":Z
    :cond_148
    return-void

    .line 1183
    .end local v9    # "value":Landroid/util/TypedValue;
    :catch_149
    move-exception v0

    goto :goto_105

    .line 1182
    :catch_14b
    move-exception v0

    goto :goto_105
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 5455
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 5456
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5460
    :goto_a
    return-void

    .line 5458
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 5463
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 5464
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5466
    :cond_a
    return-void
.end method

.method private isOwnerThread()Z
    .registers 3

    .prologue
    .line 1761
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 8913
    const-string v0, "AbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8914
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5248
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 5249
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 5252
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_12

    const/16 v14, 0x9

    if-ne v1, v14, :cond_26

    :cond_12
    const/4 v14, 0x2

    if-ne v11, v14, :cond_26

    .line 5253
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 5259
    :cond_1a
    :goto_1a
    const/4 v14, 0x1

    if-eq v11, v14, :cond_32

    .line 5260
    const/4 v14, 0x3

    if-ne v11, v14, :cond_30

    const/4 v14, 0x1

    :goto_21
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5371
    :cond_25
    :goto_25
    return-void

    .line 5254
    :cond_26
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1a

    .line 5255
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    goto :goto_1a

    .line 5260
    :cond_30
    const/4 v14, 0x0

    goto :goto_21

    .line 5263
    :cond_32
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5266
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v14, :cond_25

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_25

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_25

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_25

    .line 5271
    const/16 v14, 0x9

    if-ne v1, v14, :cond_66

    .line 5272
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_25

    .line 5273
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_25

    .line 5278
    :cond_66
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_25

    .line 5282
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_89

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_89

    .line 5283
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5284
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_25

    .line 5288
    :cond_89
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_115

    const/4 v6, 0x1

    .line 5293
    .local v6, "isFingerAirView":Z
    :goto_9d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_117

    const/4 v7, 0x1

    .line 5296
    .local v7, "isFingerAirViewPreview":Z
    :goto_b1
    if-eqz v6, :cond_25

    if-eqz v7, :cond_25

    .line 5299
    :try_start_b5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHovered()Z

    move-result v14

    if-nez v14, :cond_ca

    .line 5300
    const/4 v14, 0x1

    if-ne v11, v14, :cond_c4

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setFingerHovered(Z)V

    .line 5301
    :cond_c4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setHovered(Z)V

    .line 5303
    :cond_ca
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 5304
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 5305
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    .line 5306
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    if-eq v14, v9, :cond_119

    const/4 v2, 0x1

    .line 5307
    .local v2, "bChanged":Z
    :goto_e1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelectorDefault()Z

    move-result v10

    .line 5309
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 5311
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_11b

    .line 5312
    if-nez v10, :cond_f1

    .line 5313
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 5316
    :cond_f1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_108

    .line 5317
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5318
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5319
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5321
    :cond_108
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_10d} :catch_10f

    goto/16 :goto_25

    .line 5367
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_10f
    move-exception v4

    .line 5368
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_25

    .line 5288
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    :cond_115
    const/4 v6, 0x0

    goto :goto_9d

    .line 5293
    .restart local v6    # "isFingerAirView":Z
    :cond_117
    const/4 v7, 0x0

    goto :goto_b1

    .line 5306
    .restart local v7    # "isFingerAirViewPreview":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_119
    const/4 v2, 0x0

    goto :goto_e1

    .line 5325
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_11b
    :try_start_11b
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5327
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5329
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 5331
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 5345
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_18a

    if-eqz v5, :cond_18a

    if-eqz v8, :cond_18a

    .line 5346
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5347
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5354
    :cond_152
    :goto_152
    if-eqz v2, :cond_160

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_160

    .line 5355
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5356
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5359
    :cond_160
    const/16 v14, 0xa

    if-ne v1, v14, :cond_25

    if-nez v10, :cond_25

    .line 5360
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5361
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5362
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 5363
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5364
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 5365
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto/16 :goto_25

    .line 5349
    :cond_18a
    if-nez v10, :cond_152

    .line 5350
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_193} :catch_10f

    goto :goto_152
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 5584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 5586
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 5587
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_30

    .line 5591
    if-nez v2, :cond_31

    const/4 v0, 0x1

    .line 5592
    .local v0, "newPointerIndex":I
    :goto_16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5593
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5594
    iput v3, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5595
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5601
    iget v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5603
    .end local v0    # "newPointerIndex":I
    :cond_30
    return-void

    :cond_31
    move v0, v3

    .line 5591
    goto :goto_16
.end method

.method private onTouchCancel()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5199
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_4a

    .line 5212
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5213
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5214
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5215
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_1a

    .line 5216
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5218
    :cond_1a
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5219
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5220
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5223
    .end local v0    # "motionView":Landroid/view/View;
    :goto_25
    :pswitch_25
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_33

    .line 5224
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5225
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5227
    :cond_33
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5228
    iput v3, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 5229
    return-void

    .line 5201
    :pswitch_38
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_43

    .line 5202
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5204
    :cond_43
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_25

    .line 5199
    nop

    :pswitch_data_4a
    .packed-switch 0x5
        :pswitch_38
        :pswitch_25
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4899
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4900
    iget v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 4902
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4e

    .line 4904
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4905
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v4, :cond_20

    .line 4906
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4908
    :cond_20
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4910
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4911
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4912
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4913
    iput v6, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 4960
    :goto_39
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_4d

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4d

    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 4962
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4964
    :cond_4d
    return-void

    .line 4915
    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 4916
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 4917
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 4919
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_76

    .line 4920
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_91

    .line 4922
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4923
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4924
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4925
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    .line 4926
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 4948
    :cond_76
    :goto_76
    if-ltz v0, :cond_86

    .line 4950
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4951
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4954
    .end local v1    # "v":Landroid/view/View;
    :cond_86
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4955
    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4956
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4957
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_39

    .line 4927
    :cond_91
    if-ltz v0, :cond_76

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 4931
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4934
    iget-boolean v4, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v4, :cond_aa

    .line 4935
    const/16 v4, 0x4e8e

    invoke-virtual {p0, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4940
    :cond_aa
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v4, :cond_b5

    .line 4941
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 4944
    :cond_b5
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_76
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4967
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 4968
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_11

    .line 4969
    const/4 v1, 0x0

    .line 4970
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4973
    :cond_11
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_18

    .line 4976
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4979
    :cond_18
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .line 4981
    .local v3, "y":I
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_66

    .line 5017
    :cond_22
    :goto_22
    :pswitch_22
    return-void

    .line 4987
    :pswitch_23
    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v4

    if-nez v4, :cond_22

    .line 4992
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 4993
    .local v2, "x":F
    int-to-float v4, v3

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v2, v4, v5}, Landroid/view/View;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_22

    .line 4994
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4995
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4996
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_48

    .line 4997
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4999
    :cond_48
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_58

    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_4e
    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5001
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5002
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_22

    .line 4999
    :cond_58
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    goto :goto_4e

    .line 5008
    .end local v0    # "motionView":Landroid/view/View;
    .end local v2    # "x":F
    :pswitch_5b
    iget-boolean v4, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v4, :cond_61

    .line 5009
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 5014
    :cond_61
    :pswitch_61
    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->scrollIfNeeded(I)V

    goto :goto_22

    .line 4981
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_5b
        :pswitch_22
        :pswitch_61
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .registers 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5020
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_410

    .line 5170
    :cond_9
    :goto_9
    :pswitch_9
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 5172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2c

    .line 5173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5178
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 5179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5180
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5182
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5183
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mPointerCount:I

    .line 5192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_68

    .line 5193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 5194
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 5196
    :cond_68
    :goto_68
    return-void

    .line 5024
    :pswitch_69
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5025
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5026
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_220

    .line 5027
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_8e

    .line 5028
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5031
    :cond_8e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 5032
    .local v16, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_1ce

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_1ce

    const/4 v10, 0x1

    .line 5033
    .local v10, "inList":Z
    :goto_c3
    if-eqz v10, :cond_220

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_220

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_e6

    .line 5035
    new-instance v17, Landroid/widget/AbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 5038
    :cond_e6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 5039
    .local v14, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v13, v14, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 5040
    invoke-virtual {v14}, Landroid/widget/AbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 5042
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5044
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_109

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1ff

    .line 5045
    :cond_109
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_1d1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    :goto_117
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5047
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5048
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_1d9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_1d9

    .line 5049
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5050
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 5051
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 5052
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5053
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5054
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 5055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_190

    .line 5056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 5057
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_190

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_190

    .line 5058
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 5061
    :cond_190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a5

    .line 5062
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5064
    :cond_1a5
    new-instance v17, Landroid/widget/AbsListView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 5076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_68

    .line 5032
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_1ce
    const/4 v10, 0x0

    goto/16 :goto_c3

    .line 5045
    .restart local v10    # "inList":Z
    .restart local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_1d1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_117

    .line 5079
    :cond_1d9
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5080
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5081
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_68

    .line 5082
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_68

    .line 5086
    :cond_1ff
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_20f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_220

    :cond_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_220

    .line 5087
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 5092
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v16    # "x":F
    :cond_220
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5093
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_9

    .line 5096
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_22d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 5097
    .local v5, "childCount":I
    if-lez v5, :cond_37c

    .line 5098
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v9

    .line 5099
    .local v9, "firstChildTop":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 5100
    .local v12, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 5101
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 5102
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_2a6

    if-lt v9, v7, :cond_2a6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2a6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v17, v17, v6

    move/from16 v0, v17

    if-gt v12, v0, :cond_2a6

    .line 5105
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5106
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_9

    .line 5108
    :cond_2a6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5109
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5111
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5117
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_347

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_2f9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_347

    :cond_2f9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_319

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move/from16 v0, v17

    if-eq v12, v0, :cond_347

    .line 5122
    :cond_319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_330

    .line 5123
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5125
    :cond_330
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_9

    .line 5129
    :cond_347
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5130
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_369

    .line 5132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5134
    :cond_369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 5135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto/16 :goto_9

    .line 5140
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildBottom":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_37c
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5141
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_9

    .line 5148
    .end local v5    # "childCount":I
    :pswitch_38f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v17, v0

    if-eqz v17, :cond_39f

    .line 5149
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 5153
    :cond_39f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_3b6

    .line 5154
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5156
    :cond_3b6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5157
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5158
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5160
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5161
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_404

    .line 5162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_9

    .line 5164
    :cond_404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_9

    .line 5020
    nop

    :pswitch_data_410
    .packed-switch 0x0
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_22d
        :pswitch_9
        :pswitch_38f
    .end packed-switch
.end method

.method private positionPopup()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7405
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7406
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7407
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7410
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 7411
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_36

    .line 7412
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7417
    :goto_35
    return-void

    .line 7415
    :cond_36
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_35
.end method

.method private positionSelector(IIII)V
    .registers 10
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2933
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2935
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 5469
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 5470
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5471
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5473
    :cond_c
    return-void
.end method

.method private registerMotionListener()V
    .registers 4

    .prologue
    .line 8764
    const-string v0, "[registerDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsListView;->log(Ljava/lang/String;)V

    .line 8765
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_12

    .line 8766
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 8769
    :cond_12
    return-void
.end method

.method private releaseAllBoosters()V
    .registers 2

    .prologue
    .line 948
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2b

    .line 949
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_d

    .line 950
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 952
    :cond_d
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_16

    .line 953
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 955
    :cond_16
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1f

    .line 956
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 958
    :cond_1f
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_28

    .line 959
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 961
    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 963
    :cond_2b
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 8719
    .local p0, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8720
    .local v1, "size":I
    if-lez v1, :cond_2a

    .line 8722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_20

    .line 8723
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 8724
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_1d

    .line 8726
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8732
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1c
    return-object v2

    .line 8722
    .restart local v0    # "i":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 8730
    .end local v2    # "view":Landroid/view/View;
    :cond_20
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1c

    .line 8732
    .end local v0    # "i":I
    :cond_2a
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private scrollIfNeeded(I)V
    .registers 33
    .param p1, "y"    # I

    .prologue
    .line 3934
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v30, p1, v3

    .line 3935
    .local v30, "rawDeltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v17, v30, v3

    .line 3936
    .local v17, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_149

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v18, p1, v3

    .line 3938
    .local v18, "incrementalDeltaY":I
    :goto_1a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_185

    .line 3946
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_31

    .line 3948
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3951
    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_148

    .line 3955
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_58

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_58

    .line 3957
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    .line 3958
    .local v29, "parent":Landroid/view/ViewParent;
    if-eqz v29, :cond_58

    .line 3959
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3964
    .end local v29    # "parent":Landroid/view/ViewParent;
    :cond_58
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_14d

    .line 3965
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v19, v3, v4

    .line 3972
    .local v19, "motionIndex":I
    :goto_68
    const/16 v22, 0x0

    .line 3973
    .local v22, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3974
    .local v21, "motionView":Landroid/view/View;
    if-eqz v21, :cond_78

    .line 3975
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v22

    .line 3979
    :cond_78
    const/16 v16, 0x0

    .line 3980
    .local v16, "atEdge":Z
    if-eqz v18, :cond_86

    .line 3981
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 3985
    :cond_86
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3986
    if-eqz v21, :cond_142

    .line 3989
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3990
    .local v23, "motionViewRealTop":I
    if-eqz v16, :cond_13c

    .line 3993
    move/from16 v0, v18

    neg-int v3, v0

    sub-int v4, v23, v22

    sub-int v5, v3, v4

    .line 3995
    .local v5, "overscroll":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 3997
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ne v3, v4, :cond_cf

    .line 3999
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_cf

    .line 4000
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 4004
    :cond_cf
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v28

    .line 4005
    .local v28, "overscrollMode":I
    if-eqz v28, :cond_e0

    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_13c

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_13c

    .line 4008
    :cond_e0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 4011
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v27, v0

    .line 4014
    .local v27, "oldTouchMode":I
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4015
    if-lez v30, :cond_155

    .line 4018
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v3, :cond_10f

    .line 4019
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    if-nez v3, :cond_10f

    const/4 v3, 0x6

    move/from16 v0, v27

    if-eq v0, v3, :cond_10f

    .line 4020
    const/16 v3, 0x4eac

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4021
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 4026
    :cond_10f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4027
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12e

    .line 4028
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4030
    :cond_12e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 4040
    .end local v5    # "overscroll":I
    .end local v27    # "oldTouchMode":I
    .end local v28    # "overscrollMode":I
    :cond_13c
    :goto_13c
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 4042
    .end local v23    # "motionViewRealTop":I
    :cond_142
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 4110
    .end local v16    # "atEdge":Z
    .end local v19    # "motionIndex":I
    .end local v21    # "motionView":Landroid/view/View;
    .end local v22    # "motionViewPrevTop":I
    :cond_148
    :goto_148
    return-void

    .end local v18    # "incrementalDeltaY":I
    :cond_149
    move/from16 v18, v17

    .line 3936
    goto/16 :goto_1a

    .line 3969
    .restart local v18    # "incrementalDeltaY":I
    :cond_14d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    div-int/lit8 v19, v3, 0x2

    .restart local v19    # "motionIndex":I
    goto/16 :goto_68

    .line 4031
    .restart local v5    # "overscroll":I
    .restart local v16    # "atEdge":Z
    .restart local v21    # "motionView":Landroid/view/View;
    .restart local v22    # "motionViewPrevTop":I
    .restart local v23    # "motionViewRealTop":I
    .restart local v27    # "oldTouchMode":I
    .restart local v28    # "overscrollMode":I
    :cond_155
    if-gez v30, :cond_13c

    .line 4032
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4033
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_176

    .line 4034
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4036
    :cond_176
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_13c

    .line 4044
    .end local v5    # "overscroll":I
    .end local v16    # "atEdge":Z
    .end local v19    # "motionIndex":I
    .end local v21    # "motionView":Landroid/view/View;
    .end local v22    # "motionViewPrevTop":I
    .end local v23    # "motionViewRealTop":I
    .end local v27    # "oldTouchMode":I
    .end local v28    # "overscrollMode":I
    :cond_185
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_148

    .line 4045
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_148

    .line 4046
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v26, v0

    .line 4047
    .local v26, "oldScroll":I
    sub-int v25, v26, v18

    .line 4048
    .local v25, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-le v0, v3, :cond_26e

    const/16 v24, 0x1

    .line 4050
    .local v24, "newDirection":I
    :goto_1a6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_1b2

    .line 4051
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 4054
    :cond_1b2
    move/from16 v0, v18

    neg-int v8, v0

    .line 4055
    .local v8, "overScrollDistance":I
    if-gez v25, :cond_1b9

    if-gez v26, :cond_1bd

    :cond_1b9
    if-lez v25, :cond_272

    if-gtz v26, :cond_272

    .line 4056
    :cond_1bd
    move/from16 v0, v26

    neg-int v8, v0

    .line 4057
    add-int v18, v18, v8

    .line 4062
    :goto_1c2
    if-eqz v8, :cond_217

    .line 4063
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mScrollY:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 4065
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v28

    .line 4066
    .restart local v28    # "overscrollMode":I
    if-eqz v28, :cond_1e8

    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_217

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_217

    .line 4069
    :cond_1e8
    if-lez v30, :cond_276

    .line 4070
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4071
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_209

    .line 4072
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4074
    :cond_209
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 4085
    .end local v28    # "overscrollMode":I
    :cond_217
    :goto_217
    if-eqz v18, :cond_260

    .line 4087
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_227

    .line 4088
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mScrollY:I

    .line 4089
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 4092
    :cond_227
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 4094
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4098
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v20

    .line 4100
    .local v20, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4101
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v20, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 4102
    .restart local v21    # "motionView":Landroid/view/View;
    if-eqz v21, :cond_2a7

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_250
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4103
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 4104
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4106
    .end local v20    # "motionPosition":I
    .end local v21    # "motionView":Landroid/view/View;
    :cond_260
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 4107
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_148

    .line 4048
    .end local v8    # "overScrollDistance":I
    .end local v24    # "newDirection":I
    :cond_26e
    const/16 v24, -0x1

    goto/16 :goto_1a6

    .line 4059
    .restart local v8    # "overScrollDistance":I
    .restart local v24    # "newDirection":I
    :cond_272
    const/16 v18, 0x0

    goto/16 :goto_1c2

    .line 4075
    .restart local v28    # "overscrollMode":I
    :cond_276
    if-gez v30, :cond_217

    .line 4076
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4077
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_297

    .line 4078
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4080
    :cond_297
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_217

    .line 4102
    .end local v28    # "overscrollMode":I
    .restart local v20    # "motionPosition":I
    .restart local v21    # "motionView":Landroid/view/View;
    :cond_2a7
    const/4 v3, 0x0

    goto :goto_250
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1752
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_9

    .line 1753
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1755
    :cond_9
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1702
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_16

    .line 1703
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1709
    :cond_9
    :goto_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 1711
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_15

    .line 1712
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1714
    :cond_15
    return-void

    .line 1704
    :cond_16
    if-eqz p1, :cond_9

    .line 1705
    new-instance v0, Landroid/widget/FastScroller;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    .line 1706
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_9
.end method

.method private showPopup()V
    .registers 2

    .prologue
    .line 7396
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 7397
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7398
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 7400
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 7402
    :cond_10
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .registers 13
    .param p1, "y"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3889
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v1, p1, v7

    .line 3890
    .local v1, "deltaY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3891
    .local v2, "distance":I
    iget v7, p0, Landroid/view/View;->mScrollY:I

    if-eqz v7, :cond_4a

    move v5, v9

    .line 3892
    .local v5, "overscroll":Z
    :goto_f
    if-nez v5, :cond_15

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_6b

    .line 3893
    :cond_15
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3894
    if-eqz v5, :cond_4c

    .line 3895
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3896
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3901
    :goto_1f
    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3902
    invoke-virtual {p0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3903
    iget v7, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3904
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_35

    .line 3905
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3908
    :cond_35
    iget v7, p0, Landroid/widget/AbsListView;->mPointerCount:I

    if-le v7, v9, :cond_5a

    .line 3914
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3915
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e
    if-ge v3, v0, :cond_5a

    .line 3916
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3915
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_4a
    move v5, v8

    .line 3891
    goto :goto_f

    .line 3898
    .restart local v5    # "overscroll":Z
    :cond_4c
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3899
    if-lez v1, :cond_56

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_53
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1f

    :cond_56
    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_53

    .line 3919
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5a
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3922
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 3923
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_66

    .line 3924
    invoke-interface {v6, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3926
    :cond_66
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->scrollIfNeeded(I)V

    move v7, v9

    .line 3930
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_6a
    return v7

    :cond_6b
    move v7, v8

    goto :goto_6a
.end method

.method private twNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1529
    const/4 v8, 0x0

    .line 1530
    .local v8, "handledNotifyMultiSelect":Z
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v7}, Landroid/widget/AdapterView;->twNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v8

    .line 1532
    return v8
.end method

.method private unregisterMotionListener()V
    .registers 3

    .prologue
    .line 8775
    const-string v0, "[unregisterDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsListView;->log(Ljava/lang/String;)V

    .line 8776
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_10

    .line 8777
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 8779
    :cond_10
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .registers 9

    .prologue
    .line 1541
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1542
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1543
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_30

    const/4 v5, 0x1

    .line 1545
    .local v5, "useActivated":Z
    :goto_15
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v1, :cond_3e

    .line 1546
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1547
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1549
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_32

    .line 1550
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1545
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1543
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_30
    const/4 v5, 0x0

    goto :goto_15

    .line 1551
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_32
    if-eqz v5, :cond_2d

    .line 1552
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2d

    .line 1555
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3e
    return-void
.end method

.method private useDefaultSelector()V
    .registers 3

    .prologue
    .line 2048
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2050
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5610
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5611
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5612
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5614
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_b

    .line 5625
    :cond_a
    return-void

    .line 5618
    :cond_b
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v2, :cond_a

    .line 5619
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5620
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5621
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5623
    :cond_1d
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5618
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 7857
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 7816
    return-void
.end method

.method public canScrollList(I)Z
    .registers 12
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6721
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6722
    .local v0, "childCount":I
    if-nez v0, :cond_9

    .line 6734
    :cond_8
    :goto_8
    return v6

    .line 6726
    :cond_9
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6727
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 6728
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_2a

    .line 6729
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 6730
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 6731
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v4, v8, :cond_28

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_8

    :cond_28
    move v6, v7

    goto :goto_8

    .line 6733
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_2a
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6734
    .local v2, "firstTop":I
    if-gtz v1, :cond_38

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_8

    :cond_38
    move v6, v7

    goto :goto_8
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7729
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7885
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .registers 2

    .prologue
    .line 1348
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_9

    .line 1349
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1351
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_12

    .line 1352
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1354
    :cond_12
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1355
    return-void
.end method

.method public clearTextFilter()V
    .registers 3

    .prologue
    .line 7778
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1f

    .line 7779
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7780
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 7781
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7782
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7785
    :cond_1f
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 2429
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2430
    .local v1, "count":I
    if-lez v1, :cond_3c

    .line 2431
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_3a

    .line 2432
    mul-int/lit8 v2, v1, 0x64

    .line 2434
    .local v2, "extent":I
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2435
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2436
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2437
    .local v3, "height":I
    if-lez v3, :cond_1f

    .line 2438
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2441
    :cond_1f
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2442
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2443
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2444
    if-lez v3, :cond_39

    .line 2445
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2453
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_39
    :goto_39
    return v2

    .line 2450
    :cond_3a
    const/4 v2, 0x1

    goto :goto_39

    :cond_3c
    move v2, v6

    .line 2453
    goto :goto_39
.end method

.method protected computeVerticalScrollOffset()I
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 2458
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2459
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2460
    .local v0, "childCount":I
    if-ltz v2, :cond_39

    if-lez v0, :cond_39

    .line 2461
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_3a

    .line 2462
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2463
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2464
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2465
    .local v3, "height":I
    if-lez v3, :cond_39

    .line 2466
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2482
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_39
    :goto_39
    return v7

    .line 2471
    :cond_3a
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2472
    .local v1, "count":I
    if-nez v2, :cond_48

    .line 2473
    const/4 v4, 0x0

    .line 2479
    .local v4, "index":I
    :goto_3f
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_39

    .line 2474
    .end local v4    # "index":I
    :cond_48
    add-int v7, v2, v0

    if-ne v7, v1, :cond_4e

    .line 2475
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_3f

    .line 2477
    .end local v4    # "index":I
    :cond_4e
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_3f
.end method

.method protected computeVerticalScrollRange()I
    .registers 4

    .prologue
    .line 2488
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_28

    .line 2489
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2490
    .local v0, "result":I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_27

    .line 2492
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2497
    :cond_27
    :goto_27
    return v0

    .line 2495
    .end local v0    # "result":I
    :cond_28
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_27
.end method

.method confirmCheckedPositionsById()V
    .registers 18

    .prologue
    .line 7170
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7172
    const/4 v7, 0x0

    .line 7173
    .local v7, "checkedCountChanged":Z
    const/4 v8, 0x0

    .local v8, "checkedIndex":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_a9

    .line 7174
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 7175
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7177
    .local v3, "lastPos":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 7178
    .local v11, "lastPosId":J
    cmp-long v1, v4, v11

    if-eqz v1, :cond_a0

    .line 7180
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 7181
    .local v16, "start":I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 7182
    .local v9, "end":I
    const/4 v10, 0x0

    .line 7183
    .local v10, "found":Z
    move/from16 v15, v16

    .local v15, "searchPos":I
    :goto_49
    if-ge v15, v9, :cond_6b

    .line 7184
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 7185
    .local v13, "searchId":J
    cmp-long v1, v4, v13

    if-nez v1, :cond_9d

    .line 7186
    const/4 v10, 0x1

    .line 7187
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7188
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7193
    .end local v13    # "searchId":J
    :cond_6b
    if-nez v10, :cond_99

    .line 7194
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 7195
    add-int/lit8 v8, v8, -0x1

    .line 7196
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 7197
    const/4 v7, 0x1

    .line 7198
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_99

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_99

    .line 7199
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7173
    .end local v9    # "end":I
    .end local v10    # "found":Z
    .end local v15    # "searchPos":I
    .end local v16    # "start":I
    :cond_99
    :goto_99
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 7183
    .restart local v9    # "end":I
    .restart local v10    # "found":Z
    .restart local v13    # "searchId":J
    .restart local v15    # "searchPos":I
    .restart local v16    # "start":I
    :cond_9d
    add-int/lit8 v15, v15, 0x1

    goto :goto_49

    .line 7204
    .end local v9    # "end":I
    .end local v10    # "found":Z
    .end local v13    # "searchId":J
    .end local v15    # "searchPos":I
    .end local v16    # "start":I
    :cond_a0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_99

    .line 7208
    .end local v3    # "lastPos":I
    .end local v4    # "id":J
    .end local v11    # "lastPosId":J
    :cond_a9
    if-eqz v7, :cond_b8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_b8

    .line 7209
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 7211
    :cond_b8
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3443
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .registers 2

    .prologue
    .line 8030
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8031
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 19
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4449
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 4451
    .local v1, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    .line 4452
    .local v4, "cd":Landroid/content/ClipDescription;
    if-eqz v4, :cond_16

    const-string v13, "cropUri"

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    .line 4453
    :cond_16
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    .line 4609
    :goto_1a
    return v13

    .line 4457
    :cond_1b
    const/4 v13, 0x1

    if-ne v1, v13, :cond_47

    .line 4458
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_3f

    .line 4459
    const/4 v13, 0x1

    const/high16 v14, 0x41c80000

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/high16 v14, 0x3f000000

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 4463
    :cond_3f
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_45

    :cond_45
    const/4 v13, 0x1

    goto :goto_1a

    .line 4466
    :cond_47
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 4467
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 4468
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 4469
    .local v6, "childCount":I
    const/4 v7, 0x0

    .line 4470
    .local v7, "contentBottom":I
    const/4 v9, 0x0

    .line 4471
    .local v9, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 4475
    .local v8, "count":I
    if-eqz v6, :cond_61

    .line 4476
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 4480
    :cond_61
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v13, v14, :cond_130

    const/4 v2, 0x1

    .line 4482
    .local v2, "canScrollDown":Z
    :goto_6d
    if-nez v2, :cond_9c

    if-lez v8, :cond_9c

    .line 4483
    add-int/lit8 v13, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4484
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_9b

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_133

    :cond_9b
    const/4 v2, 0x1

    .line 4489
    .end local v5    # "child":Landroid/view/View;
    :cond_9c
    :goto_9c
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v13, :cond_136

    const/4 v3, 0x1

    .line 4491
    .local v3, "canScrollUp":Z
    :goto_a3
    if-nez v3, :cond_bf

    .line 4492
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-lez v13, :cond_bf

    .line 4493
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4494
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_139

    const/4 v3, 0x1

    .line 4499
    .end local v5    # "child":Landroid/view/View;
    :cond_bf
    :goto_bf
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-le v12, v13, :cond_cd

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v7, v13

    if-lt v12, v13, :cond_d9

    :cond_cd
    if-lez v11, :cond_d9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v13

    if-gt v11, v13, :cond_d9

    if-nez v3, :cond_13b

    if-nez v2, :cond_13b

    .line 4502
    :cond_d9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-eqz v13, :cond_f2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_f2

    .line 4503
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 4506
    :cond_f2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_103

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_108

    .line 4507
    :cond_103
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4510
    :cond_108
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4511
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4512
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4515
    const/4 v13, 0x2

    if-ne v1, v13, :cond_12a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_12a

    .line 4516
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4517
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4520
    :cond_12a
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_1a

    .line 4480
    .end local v2    # "canScrollDown":Z
    .end local v3    # "canScrollUp":Z
    :cond_130
    const/4 v2, 0x0

    goto/16 :goto_6d

    .line 4484
    .restart local v2    # "canScrollDown":Z
    .restart local v5    # "child":Landroid/view/View;
    :cond_133
    const/4 v2, 0x0

    goto/16 :goto_9c

    .line 4489
    .end local v5    # "child":Landroid/view/View;
    :cond_136
    const/4 v3, 0x0

    goto/16 :goto_a3

    .line 4494
    .restart local v3    # "canScrollUp":Z
    .restart local v5    # "child":Landroid/view/View;
    :cond_139
    const/4 v3, 0x0

    goto :goto_bf

    .line 4524
    .end local v5    # "child":Landroid/view/View;
    :cond_13b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v13, :cond_14d

    .line 4525
    new-instance v13, Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 4527
    :cond_14d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_15b

    .line 4528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4530
    :cond_15b
    packed-switch v1, :pswitch_data_288

    .line 4609
    :cond_15e
    :goto_15e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_1a

    .line 4532
    :pswitch_164
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4533
    if-ltz v12, :cond_19d

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_19d

    .line 4535
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15e

    .line 4536
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4538
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 4539
    .local v10, "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v10, Landroid/os/Message;->what:I

    .line 4540
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4541
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15e

    .line 4543
    .end local v10    # "msg":Landroid/os/Message;
    :cond_19d
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v7, v13

    if-lt v12, v13, :cond_15e

    if-gt v12, v7, :cond_15e

    .line 4545
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15e

    .line 4546
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4548
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 4549
    .restart local v10    # "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v10, Landroid/os/Message;->what:I

    .line 4550
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4551
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15e

    .line 4557
    .end local v10    # "msg":Landroid/os/Message;
    :pswitch_1d3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_1de

    .line 4558
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4561
    :cond_1de
    if-ltz v12, :cond_213

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_213

    .line 4563
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15e

    .line 4564
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4566
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 4567
    .restart local v10    # "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v10, Landroid/os/Message;->what:I

    .line 4568
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4569
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_15e

    .line 4571
    .end local v10    # "msg":Landroid/os/Message;
    :cond_213
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v7, v13

    if-lt v12, v13, :cond_15e

    if-gt v12, v7, :cond_15e

    .line 4573
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15e

    .line 4574
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4576
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 4577
    .restart local v10    # "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v10, Landroid/os/Message;->what:I

    .line 4578
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4579
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_15e

    .line 4586
    .end local v10    # "msg":Landroid/os/Message;
    :pswitch_24a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_258

    .line 4587
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4588
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4594
    :cond_258
    :pswitch_258
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_26b

    .line 4595
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 4597
    :cond_26b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4599
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4600
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4601
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4602
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_15e

    .line 4530
    :pswitch_data_288
    .packed-switch 0x2
        :pswitch_1d3
        :pswitch_24a
        :pswitch_258
        :pswitch_164
        :pswitch_258
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    .line 2939
    const/4 v4, 0x0

    .line 2940
    .local v4, "saveCount":I
    const/4 v7, 0x0

    .line 2941
    .local v7, "trackChildTop":I
    const/4 v2, 0x0

    .line 2942
    .local v2, "firstChildPosition":I
    const/4 v3, 0x0

    .line 2944
    .local v3, "lastChildPosition":I
    iget v9, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v9, v9, 0x22

    const/16 v10, 0x22

    if-ne v9, v10, :cond_60

    move v0, v8

    .line 2945
    .local v0, "clipToPadding":Z
    :goto_e
    if-eqz v0, :cond_39

    .line 2946
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2947
    iget v5, p0, Landroid/view/View;->mScrollX:I

    .line 2948
    .local v5, "scrollX":I
    iget v6, p0, Landroid/view/View;->mScrollY:I

    .line 2949
    .local v6, "scrollY":I
    iget v9, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v10, v6

    iget v11, p0, Landroid/view/View;->mRight:I

    add-int/2addr v11, v5

    iget v12, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v12, v6

    iget v13, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v12, v13

    iget v13, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2952
    iget v9, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v9, v9, -0x23

    iput v9, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2955
    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_39
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2956
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_40

    .line 2957
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2960
    :cond_40
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2962
    if-eqz v1, :cond_48

    .line 2963
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2966
    :cond_48
    if-eqz v0, :cond_53

    .line 2967
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2968
    iget v9, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v9, v9, 0x22

    iput v9, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2971
    :cond_53
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-ne v9, v8, :cond_5f

    .line 2972
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    if-nez v8, :cond_62

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    if-nez v8, :cond_62

    .line 2994
    :cond_5f
    :goto_5f
    return-void

    .line 2944
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_60
    const/4 v0, 0x0

    goto :goto_e

    .line 2975
    .restart local v0    # "clipToPadding":Z
    .restart local v1    # "drawSelectorOnTop":Z
    :cond_62
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_6c

    .line 2976
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    .line 2979
    :cond_6c
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 2980
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    .line 2982
    iget v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    if-lt v8, v2, :cond_81

    iget v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    if-gt v8, v3, :cond_81

    .line 2983
    iget v8, p0, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 2986
    :cond_81
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    iget v9, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    if-ge v8, v9, :cond_af

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    :goto_89
    iput v8, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 2987
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    iget v9, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    if-le v8, v9, :cond_b2

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    :goto_93
    iput v8, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 2989
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    iget v10, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    iget v11, p0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    iget v12, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 2990
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2991
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5f

    .line 2986
    :cond_af
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    goto :goto_89

    .line 2987
    :cond_b2
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    goto :goto_93
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 25
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pen_hovering"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d1

    const/4 v11, 0x1

    .line 4207
    .local v11, "isHoveringOn":Z
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pen_hovering_list_scroll"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d4

    const/4 v10, 0x1

    .line 4210
    .local v10, "isHoverListScrollOn":Z
    :goto_38
    const/4 v13, 0x0

    .line 4211
    .local v13, "isMouseHoveringOn":Z
    const/4 v12, 0x0

    .line 4214
    .local v12, "isMouseHoverListScrollOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "mouse_hovering"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d7

    const/4 v13, 0x1

    .line 4215
    :goto_56
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "mouse_hovering_list_scroll"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_da

    const/4 v12, 0x1

    .line 4220
    :goto_72
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    if-nez v19, :cond_8d

    .line 4221
    new-instance v19, Landroid/widget/AbsListView$HoverScrollHandler;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 4223
    :cond_8d
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4226
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->isHoveringUIEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_cc

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_cc

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b6

    if-eqz v11, :cond_cc

    if-eqz v10, :cond_cc

    :cond_b6
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_dc

    if-eqz v13, :cond_cc

    if-nez v12, :cond_dc

    .line 4229
    :cond_cc
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    .line 4436
    :goto_d0
    return v19

    .line 4206
    .end local v10    # "isHoverListScrollOn":Z
    .end local v11    # "isHoveringOn":Z
    .end local v12    # "isMouseHoverListScrollOn":Z
    .end local v13    # "isMouseHoveringOn":Z
    :cond_d1
    const/4 v11, 0x0

    goto/16 :goto_1c

    .line 4207
    .restart local v11    # "isHoveringOn":Z
    :cond_d4
    const/4 v10, 0x0

    goto/16 :goto_38

    .line 4214
    .restart local v10    # "isHoverListScrollOn":Z
    .restart local v12    # "isMouseHoverListScrollOn":Z
    .restart local v13    # "isMouseHoveringOn":Z
    :cond_d7
    const/4 v13, 0x0

    goto/16 :goto_56

    .line 4215
    :cond_da
    const/4 v12, 0x0

    goto :goto_72

    .line 4232
    :cond_dc
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 4233
    .local v17, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 4234
    .local v18, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 4235
    .local v6, "childCount":I
    const/4 v7, 0x0

    .line 4236
    .local v7, "contentBottom":I
    const/4 v15, 0x0

    .line 4237
    .local v15, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 4241
    .local v8, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_108

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    if-gtz v19, :cond_164

    .line 4242
    :cond_108
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight_DP:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    const/high16 v20, 0x3f000000

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 4250
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight_DP:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    const/high16 v20, 0x3f000000

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 4259
    :cond_164
    if-eqz v6, :cond_16a

    .line 4260
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 4264
    :cond_16a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2c9

    const/4 v3, 0x1

    .line 4266
    .local v3, "canScrollDown":Z
    :goto_17f
    if-nez v3, :cond_1c8

    if-lez v8, :cond_1c8

    .line 4267
    add-int/lit8 v19, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4268
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_1c7

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2cc

    :cond_1c7
    const/4 v3, 0x1

    .line 4273
    .end local v5    # "child":Landroid/view/View;
    :cond_1c8
    :goto_1c8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    if-lez v19, :cond_2cf

    const/4 v4, 0x1

    .line 4275
    .local v4, "canScrollUp":Z
    :goto_1d1
    if-nez v4, :cond_1fa

    .line 4276
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    if-lez v19, :cond_1fa

    .line 4277
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4278
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2d2

    const/4 v4, 0x1

    .line 4282
    .end local v5    # "child":Landroid/view/View;
    :cond_1fa
    :goto_1fa
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d5

    const/4 v14, 0x1

    .line 4286
    .local v14, "isPossibleTooltype":Z
    :goto_20d
    if-nez v14, :cond_221

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d8

    :cond_221
    const/4 v14, 0x1

    .line 4290
    :goto_222
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_23c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_262

    :cond_23c
    if-lez v17, :cond_262

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_262

    if-nez v4, :cond_24c

    if-eqz v3, :cond_262

    :cond_24c
    if-eqz v14, :cond_25a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_262

    :cond_25a
    if-eqz v14, :cond_262

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLockScreenMode()Z

    move-result v19

    if-eqz v19, :cond_2ed

    .line 4293
    :cond_262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_282

    .line 4294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 4296
    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_27f
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_282
    .catch Landroid/os/RemoteException; {:try_start_27f .. :try_end_282} :catch_2db

    .line 4302
    :cond_282
    :goto_282
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_29c

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_2ab

    .line 4303
    :cond_29c
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4305
    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_2a8
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2ab
    .catch Landroid/os/RemoteException; {:try_start_2a8 .. :try_end_2ab} :catch_2e4

    .line 4311
    :cond_2ab
    :goto_2ab
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4312
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4313
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4315
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_d0

    .line 4264
    .end local v3    # "canScrollDown":Z
    .end local v4    # "canScrollUp":Z
    .end local v14    # "isPossibleTooltype":Z
    :cond_2c9
    const/4 v3, 0x0

    goto/16 :goto_17f

    .line 4268
    .restart local v3    # "canScrollDown":Z
    .restart local v5    # "child":Landroid/view/View;
    :cond_2cc
    const/4 v3, 0x0

    goto/16 :goto_1c8

    .line 4273
    .end local v5    # "child":Landroid/view/View;
    :cond_2cf
    const/4 v4, 0x0

    goto/16 :goto_1d1

    .line 4278
    .restart local v4    # "canScrollUp":Z
    .restart local v5    # "child":Landroid/view/View;
    :cond_2d2
    const/4 v4, 0x0

    goto/16 :goto_1fa

    .line 4282
    .end local v5    # "child":Landroid/view/View;
    :cond_2d5
    const/4 v14, 0x0

    goto/16 :goto_20d

    .line 4286
    .restart local v14    # "isPossibleTooltype":Z
    :cond_2d8
    const/4 v14, 0x0

    goto/16 :goto_222

    .line 4297
    :catch_2db
    move-exception v9

    .line 4298
    .local v9, "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_282

    .line 4306
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_2e4
    move-exception v9

    .line 4307
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ab

    .line 4318
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_2ed
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_318

    .line 4319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_318

    .line 4322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4327
    :cond_318
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_54a

    .line 4436
    :cond_31f
    :goto_31f
    :pswitch_31f
    const/16 v19, 0x1

    goto/16 :goto_d0

    .line 4329
    :pswitch_323
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4331
    if-ltz v18, :cond_383

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_383

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_31f

    .line 4334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4336
    const/16 v19, 0xb

    const/16 v20, -0x1

    :try_start_355
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_358
    .catch Landroid/os/RemoteException; {:try_start_355 .. :try_end_358} :catch_37a

    .line 4340
    :goto_358
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4341
    .local v16, "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4342
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_31f

    .line 4337
    .end local v16    # "msg":Landroid/os/Message;
    :catch_37a
    move-exception v9

    .line 4338
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_UP"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_358

    .line 4345
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_383
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_31f

    move/from16 v0, v18

    if-gt v0, v7, :cond_31f

    .line 4347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_31f

    .line 4348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4350
    const/16 v19, 0xf

    const/16 v20, -0x1

    :try_start_3b1
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3b4
    .catch Landroid/os/RemoteException; {:try_start_3b1 .. :try_end_3b4} :catch_3d7

    .line 4354
    :goto_3b4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4355
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4356
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_31f

    .line 4351
    .end local v16    # "msg":Landroid/os/Message;
    :catch_3d7
    move-exception v9

    .line 4352
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_DOWN"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b4

    .line 4364
    .end local v9    # "e":Landroid/os/RemoteException;
    :pswitch_3e0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_3ff

    .line 4365
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4366
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4367
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_d0

    .line 4370
    :cond_3ff
    if-ltz v18, :cond_46e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_46e

    .line 4372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_31f

    .line 4373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4376
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_43b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_442

    .line 4378
    :cond_43b
    const/16 v19, 0xb

    const/16 v20, -0x1

    :try_start_43f
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_442
    .catch Landroid/os/RemoteException; {:try_start_43f .. :try_end_442} :catch_465

    .line 4384
    :cond_442
    :goto_442
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4385
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4386
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_31f

    .line 4379
    .end local v16    # "msg":Landroid/os/Message;
    :catch_465
    move-exception v9

    .line 4380
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_UP"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_442

    .line 4389
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_46e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_31f

    move/from16 v0, v18

    if-gt v0, v7, :cond_31f

    .line 4391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_31f

    .line 4392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4ae

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4b5

    .line 4397
    :cond_4ae
    const/16 v19, 0xf

    const/16 v20, -0x1

    :try_start_4b2
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4b5
    .catch Landroid/os/RemoteException; {:try_start_4b2 .. :try_end_4b5} :catch_4d8

    .line 4403
    :cond_4b5
    :goto_4b5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4404
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4405
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_31f

    .line 4398
    .end local v16    # "msg":Landroid/os/Message;
    :catch_4d8
    move-exception v9

    .line 4399
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_DOWN"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b5

    .line 4412
    .end local v9    # "e":Landroid/os/RemoteException;
    :pswitch_4e1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_4fa

    .line 4413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 4417
    :cond_4fa
    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_4fe
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_501
    .catch Landroid/os/RemoteException; {:try_start_4fe .. :try_end_501} :catch_540

    .line 4422
    :goto_501
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4423
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4424
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4425
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_53a

    .line 4428
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4431
    :cond_53a
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_d0

    .line 4418
    :catch_540
    move-exception v9

    .line 4419
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_501

    .line 4327
    nop

    :pswitch_data_54a
    .packed-switch 0x7
        :pswitch_3e0
        :pswitch_31f
        :pswitch_323
        :pswitch_4e1
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 3786
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4616
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 4617
    .local v16, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 4618
    .local v17, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 4620
    .local v10, "contentBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_29

    .line 4621
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    .line 4623
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    if-nez v18, :cond_44

    .line 4624
    new-instance v18, Landroid/widget/AbsListView$HoverScrollHandler;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 4626
    :cond_44
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    sparse-switch v18, :sswitch_data_5aa

    .line 4791
    :cond_4b
    :goto_4b
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    return v18

    .line 4628
    :sswitch_50
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 4629
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 4630
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStart()V

    .line 4631
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 4633
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    .line 4634
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwTrackedChildPosition:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 4636
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b1

    .line 4637
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 4640
    :cond_b1
    if-ltz v17, :cond_ec

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_ec

    .line 4642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_4b

    .line 4643
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4644
    .local v15, "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4645
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4646
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4b

    .line 4648
    .end local v15    # "msg":Landroid/os/Message;
    :cond_ec
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v18, v0

    sub-int v18, v10, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4b

    move/from16 v0, v17

    if-gt v0, v10, :cond_4b

    .line 4650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_4b

    .line 4651
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4652
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4653
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4b

    .line 4661
    .end local v15    # "msg":Landroid/os/Message;
    :sswitch_12b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v18, v0

    if-nez v18, :cond_152

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v18, v0

    if-nez v18, :cond_152

    .line 4662
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 4663
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 4664
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStart()V

    .line 4665
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 4668
    :cond_152
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 4669
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 4670
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 4671
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 4673
    .local v11, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_31a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v18, v0

    :goto_18a
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 4674
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_322

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v18, v0

    :goto_1a8
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 4675
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_32a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v18, v0

    :goto_1c6
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 4676
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_332

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v18, v0

    :goto_1e4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 4678
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1eb
    if-ge v13, v11, :cond_3b0

    .line 4679
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4680
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 4681
    .local v7, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 4682
    .local v9, "childTop":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    .line 4683
    .local v8, "childRight":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 4685
    .local v6, "childBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v7, :cond_22b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v9, :cond_22b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v8, :cond_22b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v0, v6, :cond_2a3

    :cond_22b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v7, :cond_23f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v0, v8, :cond_267

    :cond_23f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v7, :cond_253

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v0, v7, :cond_267

    :cond_253
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v8, :cond_33a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v8, :cond_33a

    :cond_267
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v9, :cond_27b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v0, v6, :cond_2a3

    :cond_27b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v9, :cond_28f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v0, v9, :cond_2a3

    :cond_28f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v6, :cond_33a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v6, :cond_33a

    .line 4689
    :cond_2a3
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 4690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_316

    .line 4691
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4692
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 4693
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 4678
    :cond_316
    :goto_316
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1eb

    .line 4673
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v13    # "i":I
    :cond_31a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v18, v0

    goto/16 :goto_18a

    .line 4674
    :cond_322
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v18, v0

    goto/16 :goto_1a8

    .line 4675
    :cond_32a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v18, v0

    goto/16 :goto_1c6

    .line 4676
    :cond_332
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v18, v0

    goto/16 :goto_1e4

    .line 4696
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childBottom":I
    .restart local v7    # "childLeft":I
    .restart local v8    # "childRight":I
    .restart local v9    # "childTop":I
    .restart local v13    # "i":I
    :cond_33a
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 4697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_316

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4699
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 4700
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_316

    .line 4705
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    :cond_3b0
    if-ltz v17, :cond_3fc

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_3fc

    .line 4707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_3e9

    .line 4708
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4709
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4710
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4730
    .end local v15    # "msg":Landroid/os/Message;
    :cond_3e9
    :goto_3e9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4b

    .line 4731
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4b

    .line 4713
    :cond_3fc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v18, v0

    sub-int v18, v10, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_43a

    move/from16 v0, v17

    if-gt v0, v10, :cond_43a

    .line 4715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_3e9

    .line 4716
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4717
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4718
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3e9

    .line 4723
    .end local v15    # "msg":Landroid/os/Message;
    :cond_43a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_453

    .line 4724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 4727
    :cond_453
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto :goto_3e9

    .line 4737
    .end local v11    # "count":I
    .end local v13    # "i":I
    :sswitch_45c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    .line 4739
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    move/from16 v18, v0

    if-eqz v18, :cond_57d

    .line 4740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4f8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_498

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4f8

    .line 4742
    :cond_498
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4c4

    .line 4743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move-object/from16 v18, v0

    if-nez v18, :cond_4c4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v18, :cond_4c4

    .line 4747
    :cond_4c4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_4ce
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4f8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 4748
    .local v12, "dragSelectedViewPosition":Ljava/lang/Integer;
    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_4ce

    .line 4752
    .end local v12    # "dragSelectedViewPosition":Ljava/lang/Integer;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_4f8
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 4753
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewPosition:I

    .line 4755
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 4756
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 4757
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 4758
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 4760
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 4761
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 4762
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 4763
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 4765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 4766
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemSize:I

    .line 4767
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 4768
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDistanceFromTrackedChildTop:I

    .line 4770
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_57a

    .line 4771
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 4774
    :cond_57a
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStop()V

    .line 4778
    :cond_57d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_596

    .line 4779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 4782
    :cond_596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4b

    .line 4783
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4b

    .line 4626
    nop

    :sswitch_data_5aa
    .sparse-switch
        0x1 -> :sswitch_45c
        0xb -> :sswitch_50
        0xc -> :sswitch_45c
        0xd -> :sswitch_12b
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 5406
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5407
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_b9

    .line 5408
    iget v6, p0, Landroid/view/View;->mScrollY:I

    .line 5409
    .local v6, "scrollY":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_5b

    .line 5410
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 5411
    .local v4, "restoreCount":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    add-int v3, v8, v9

    .line 5412
    .local v3, "leftPadding":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    add-int v5, v8, v9

    .line 5413
    .local v5, "rightPadding":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int v7, v8, v5

    .line 5415
    .local v7, "width":I
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v6

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5416
    .local v1, "edgeY":I
    int-to-float v8, v3

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5417
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5418
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 5419
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v3, v1}, Landroid/widget/EdgeEffect;->setPosition(II)V

    .line 5420
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v10}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 5422
    :cond_58
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5424
    .end local v1    # "edgeY":I
    .end local v3    # "leftPadding":I
    .end local v4    # "restoreCount":I
    .end local v5    # "rightPadding":I
    .end local v7    # "width":I
    :cond_5b
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_b9

    .line 5425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 5426
    .restart local v4    # "restoreCount":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    add-int v3, v8, v9

    .line 5427
    .restart local v3    # "leftPadding":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    add-int v5, v8, v9

    .line 5428
    .restart local v5    # "rightPadding":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int v7, v8, v5

    .line 5429
    .restart local v7    # "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 5431
    .local v2, "height":I
    neg-int v8, v7

    add-int v0, v8, v3

    .line 5432
    .local v0, "edgeX":I
    iget v8, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5433
    .restart local v1    # "edgeY":I
    int-to-float v8, v0

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5434
    const/high16 v8, 0x43340000

    int-to-float v9, v7

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5435
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v7, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5436
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 5438
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    add-int v9, v0, v7

    invoke-virtual {v8, v9, v1}, Landroid/widget/EdgeEffect;->setPosition(II)V

    .line 5439
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 5441
    :cond_b6
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5444
    .end local v0    # "edgeX":I
    .end local v1    # "edgeY":I
    .end local v2    # "height":I
    .end local v3    # "leftPadding":I
    .end local v4    # "restoreCount":I
    .end local v5    # "rightPadding":I
    .end local v6    # "scrollY":I
    .end local v7    # "width":I
    :cond_b9
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 3215
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 3216
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3217
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 8796
    .line 8797
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8799
    return-void
.end method

.method findClosestMotionRow(I)I
    .registers 5
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 7023
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7024
    .local v0, "childCount":I
    if-nez v0, :cond_9

    move v1, v2

    .line 7029
    :cond_8
    :goto_8
    return v1

    .line 7028
    :cond_9
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 7029
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_8

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_8
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .registers 3
    .param p1, "accessibilityId"    # I

    .prologue
    .line 1959
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1969
    .end local p0    # "this":Landroid/widget/AbsListView;
    :goto_6
    return-object p0

    .line 1966
    .restart local p0    # "this":Landroid/widget/AbsListView;
    :cond_7
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_d

    .line 1967
    const/4 p0, 0x0

    goto :goto_6

    .line 1969
    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_6
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    .prologue
    .line 7869
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7875
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 7880
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 8

    .prologue
    .line 2519
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2520
    .local v1, "count":I
    invoke-super {p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2521
    .local v2, "fadeEdge":F
    if-nez v1, :cond_b

    .line 2531
    .end local v2    # "fadeEdge":F
    :cond_a
    :goto_a
    return v2

    .line 2524
    .restart local v2    # "fadeEdge":F
    :cond_b
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_19

    .line 2525
    const/high16 v2, 0x3f800000

    goto :goto_a

    .line 2528
    :cond_19
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2529
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2530
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2531
    .local v3, "fadeLength":F
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_a

    sub-int v5, v0, v4

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_a
.end method

.method protected getBottomPaddingOffset()I
    .registers 3

    .prologue
    .line 3018
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_9
.end method

.method public getCacheColorHint()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 7946
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    .prologue
    .line 1265
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .registers 7

    .prologue
    .line 1329
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_10

    .line 1330
    :cond_c
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1341
    :cond_f
    return-object v3

    .line 1333
    :cond_10
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1334
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1335
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1337
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_f

    .line 1338
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1337
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public getCheckedItemPosition()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1297
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 1298
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1301
    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 2

    .prologue
    .line 1314
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    .line 1315
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1317
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getChoiceMode()I
    .registers 2

    .prologue
    .line 1563
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 3630
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2035
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2036
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 2039
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2040
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2045
    :goto_12
    return-void

    .line 2043
    :cond_13
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method getFooterViewsCount()I
    .registers 2

    .prologue
    .line 6966
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 6956
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .registers 3

    .prologue
    .line 3003
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_9
.end method

.method public getListPaddingBottom()I
    .registers 2

    .prologue
    .line 2676
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .registers 2

    .prologue
    .line 2688
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .registers 2

    .prologue
    .line 2700
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .registers 2

    .prologue
    .line 2664
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .registers 3

    .prologue
    .line 3013
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_9
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2648
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 2649
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2651
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3142
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 7914
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2361
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 2362
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2364
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 2502
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2503
    .local v0, "count":I
    invoke-super {p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2504
    .local v1, "fadeEdge":F
    if-nez v0, :cond_b

    .line 2513
    .end local v1    # "fadeEdge":F
    :cond_a
    :goto_a
    return v1

    .line 2507
    .restart local v1    # "fadeEdge":F
    :cond_b
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_12

    .line 2508
    const/high16 v1, 0x3f800000

    goto :goto_a

    .line 2511
    :cond_12
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2512
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2513
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v3, v4, :cond_a

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_a
.end method

.method protected getTopPaddingOffset()I
    .registers 3

    .prologue
    .line 3008
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_9
.end method

.method public getTouchSlop()I
    .registers 2

    .prologue
    .line 1018
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .registers 2

    .prologue
    .line 7909
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .registers 3

    .prologue
    .line 1780
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1781
    invoke-super {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1783
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_1a
.end method

.method protected handleDataChanged()V
    .registers 16

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 7215
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 7216
    .local v1, "count":I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 7217
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 7220
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_29

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_29

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v11, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_29

    .line 7222
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    .line 7223
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 7224
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 7228
    :cond_29
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_3c

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_3c

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 7229
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 7233
    :cond_3c
    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7235
    if-lez v1, :cond_106

    .line 7240
    iget-boolean v10, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v10, :cond_8f

    .line 7242
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 7243
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 7245
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_54

    .line 7246
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7362
    :cond_53
    :goto_53
    return-void

    .line 7248
    :cond_54
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_8a

    .line 7249
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_61

    .line 7250
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 7251
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_53

    .line 7254
    :cond_61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7255
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 7256
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7257
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_85

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7258
    .local v2, "lastBottom":I
    :goto_7b
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_87

    if-gt v2, v5, :cond_87

    .line 7260
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_53

    .end local v2    # "lastBottom":I
    :cond_85
    move v2, v5

    .line 7257
    goto :goto_7b

    .line 7265
    .restart local v2    # "lastBottom":I
    :cond_87
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 7268
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_8a
    iget v10, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_126

    .line 7316
    :cond_8f
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_102

    .line 7318
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 7321
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9d

    .line 7322
    add-int/lit8 v6, v1, -0x1

    .line 7324
    :cond_9d
    if-gez v6, :cond_a0

    .line 7325
    const/4 v6, 0x0

    .line 7329
    :cond_a0
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7331
    .local v7, "selectablePos":I
    if-ltz v7, :cond_f7

    .line 7332
    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto :goto_53

    .line 7270
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_aa
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 7275
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7276
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_53

    .line 7282
    :cond_c1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v6

    .line 7283
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8f

    .line 7285
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7286
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8f

    .line 7288
    iput v6, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 7290
    iget-wide v8, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_e1

    .line 7293
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7301
    :goto_dc
    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_53

    .line 7297
    :cond_e1
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_dc

    .line 7309
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_e5
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7310
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto/16 :goto_53

    .line 7336
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_f7
    invoke-virtual {p0, v6, v12}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7337
    if-ltz v7, :cond_106

    .line 7338
    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_53

    .line 7345
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_102
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_53

    .line 7353
    :cond_106
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_124

    :goto_10a
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7354
    iput v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 7355
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 7356
    iput v13, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 7357
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 7358
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 7359
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 7360
    iput v13, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 7361
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto/16 :goto_53

    :cond_124
    move v8, v9

    .line 7353
    goto :goto_10a

    .line 7268
    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_e5
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .registers 2

    .prologue
    .line 7791
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 6980
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_25

    .line 6981
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 6982
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6984
    :cond_e
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1c

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1c

    .line 6985
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6987
    :cond_1c
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 6988
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 6989
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 6991
    :cond_25
    return-void
.end method

.method public invalidateViews()V
    .registers 2

    .prologue
    .line 7036
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 7037
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 7038
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7039
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7040
    return-void
.end method

.method invokeOnItemScrollListener()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1882
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_12

    .line 1883
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1885
    :cond_12
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_23

    .line 1886
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1888
    :cond_23
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1889
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1771
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v2, :cond_11

    .line 1772
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_f

    .line 1774
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 1772
    goto :goto_e

    .line 1774
    :cond_11
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_21
    move v0, v1

    goto :goto_e
.end method

.method public isFastScrollEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1794
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v0, :cond_7

    .line 1795
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1797
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    goto :goto_6
.end method

.method protected isInFilterMode()Z
    .registers 2

    .prologue
    .line 7476
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1280
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_f

    .line 1281
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1284
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isLockScreenMode()Z
    .registers 9

    .prologue
    .line 4153
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 4154
    .local v4, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v3, 0x0

    .line 4155
    .local v3, "isLockState":Z
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    .line 4157
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 4158
    .local v5, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 4159
    .local v1, "isCoverOpen":Z
    if-eqz v5, :cond_25

    .line 4161
    :try_start_21
    invoke-interface {v5}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_2c

    move-result v1

    .line 4167
    :cond_25
    :goto_25
    const/4 v2, 0x0

    .line 4168
    .local v2, "isLockScreenAndCoverOpen":Z
    if-eqz v3, :cond_35

    if-eqz v1, :cond_35

    const/4 v2, 0x1

    .line 4170
    :goto_2b
    return v2

    .line 4162
    .end local v2    # "isLockScreenAndCoverOpen":Z
    :catch_2c
    move-exception v0

    .line 4163
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "AbsListView"

    const-string v7, "isLockScreenMode() : failed to windowManager.isCoverOpen()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 4168
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "isLockScreenAndCoverOpen":Z
    :cond_35
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public isMultiFocusEnabled()Z
    .registers 2

    .prologue
    .line 8938
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .registers 3

    .prologue
    .line 1853
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 3

    .prologue
    .line 2998
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isScrollingCacheEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1983
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1865
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2060
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2030
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .registers 2

    .prologue
    .line 6555
    invoke-super {p0}, Landroid/view/View;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected isTwUsingAdapterView()Z
    .registers 2

    .prologue
    .line 6566
    const/4 v0, 0x1

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 1823
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 3260
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 3261
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3262
    :cond_c
    return-void
.end method

.method keyPressed()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 3150
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-nez v5, :cond_e

    .line 3185
    :cond_d
    :goto_d
    return-void

    .line 3154
    :cond_e
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3155
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3156
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_20
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 3159
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3161
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3a

    .line 3162
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_d

    .line 3163
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3165
    :cond_3a
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3167
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    .line 3168
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3169
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_56

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_56

    .line 3170
    if-eqz v1, :cond_78

    .line 3171
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3177
    :cond_56
    :goto_56
    if-eqz v1, :cond_d

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_d

    .line 3178
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_68

    .line 3179
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 3181
    :cond_68
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 3182
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 3174
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_78
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_56
.end method

.method protected layoutChildren()V
    .registers 1

    .prologue
    .line 2609
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const-wide/16 v8, 0x8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2716
    const-string/jumbo v5, "obtainView"

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2718
    aput-boolean v6, p2, v6

    .line 2721
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v2

    .line 2722
    .local v2, "scrapView":Landroid/view/View;
    if-nez v2, :cond_1b

    .line 2723
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2727
    :cond_1b
    if-eqz v2, :cond_9c

    .line 2728
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2730
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_26

    .line 2797
    :cond_25
    :goto_25
    return-object v4

    .line 2733
    :cond_26
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_2f

    .line 2734
    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2737
    :cond_2f
    if-eq v0, v2, :cond_8d

    .line 2738
    invoke-virtual {v2}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 2739
    invoke-virtual {v2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2740
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2742
    :cond_3d
    iget-object v4, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v4, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2743
    iget v4, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v4, :cond_4b

    .line 2744
    iget v4, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2772
    :cond_4b
    :goto_4b
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_66

    .line 2773
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2775
    .local v3, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_b7

    .line 2776
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2782
    .local v1, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_5b
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2783
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2786
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_66
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 2787
    iget-object v4, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v4, :cond_7d

    .line 2788
    new-instance v4, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2790
    :cond_7d
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v4

    if-nez v4, :cond_88

    .line 2791
    iget-object v4, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2795
    :cond_88
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    move-object v4, v0

    .line 2797
    goto :goto_25

    .line 2747
    :cond_8d
    aput-boolean v7, p2, v6

    .line 2751
    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 2752
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2755
    :cond_98
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_4b

    .line 2758
    .end local v0    # "child":Landroid/view/View;
    :cond_9c
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2760
    .restart local v0    # "child":Landroid/view/View;
    if-eqz v0, :cond_25

    .line 2763
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_ad

    .line 2764
    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2767
    :cond_ad
    iget v4, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v4, :cond_4b

    .line 2768
    iget v4, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_4b

    .line 2777
    .restart local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_b7
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_c4

    .line 2778
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_5b

    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_c4
    move-object v1, v3

    .line 2780
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_5b
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 3266
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 3268
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3269
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3272
    iget-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_13

    .line 3273
    iget-object v1, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3277
    :cond_13
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_22

    .line 3278
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3281
    :cond_22
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_47

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_47

    .line 3282
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3283
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3286
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3287
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 3288
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 3290
    :cond_47
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .registers 2

    .prologue
    .line 3448
    invoke-super {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    .line 3449
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_c

    .line 3450
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3452
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 3453
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3455
    :cond_15
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_1e

    .line 3456
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3458
    :cond_1e
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_27

    .line 3459
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3461
    :cond_27
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 8
    .param p1, "extraSpace"    # I

    .prologue
    .line 3222
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_9

    .line 3224
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3250
    :cond_8
    :goto_8
    return-object v3

    .line 3230
    :cond_9
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3235
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3236
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3237
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_1f

    .line 3238
    aget v4, v3, v2

    if-ne v4, v1, :cond_2b

    .line 3239
    move v0, v2

    .line 3245
    :cond_1f
    if-ltz v0, :cond_8

    .line 3246
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    .line 3237
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_18
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 7571
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7572
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_19

    .line 7573
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7574
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 7576
    :cond_19
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7577
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7578
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 7580
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method protected onDetachedFromWindow()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3294
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3295
    const-string v1, "AbsListView"

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3301
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3303
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3304
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3305
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2a

    .line 3306
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3307
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3310
    :cond_2a
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_3b

    .line 3311
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3312
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3315
    :cond_3b
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_46

    .line 3316
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3317
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3320
    :cond_46
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_51

    .line 3321
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3322
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3325
    :cond_51
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_5a

    .line 3326
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3329
    :cond_5a
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_63

    .line 3330
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3333
    :cond_63
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6c

    .line 3334
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3337
    :cond_6c
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_75

    .line 3338
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3341
    :cond_75
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_83

    .line 3342
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3343
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3346
    :cond_83
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v1, v4, :cond_89

    .line 3347
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3351
    :cond_89
    iget-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_92

    .line 3352
    iget-object v1, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3356
    :cond_92
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3357
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 3
    .param p1, "hint"    # I

    .prologue
    .line 7366
    invoke-super {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 7367
    sparse-switch p1, :sswitch_data_34

    .line 7379
    :cond_6
    :goto_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_31

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 7380
    return-void

    .line 7369
    :sswitch_d
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7370
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_6

    .line 7374
    :sswitch_1d
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7375
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_6

    .line 7379
    :cond_31
    const/4 v0, 0x0

    goto :goto_a

    .line 7367
    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0x4 -> :sswitch_d
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 7861
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_c

    if-lez p1, :cond_c

    .line 7862
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7863
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 7865
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2369
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2370
    if-eqz p1, :cond_2b

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_2b

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2371
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_28

    .line 2374
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2375
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 2376
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2378
    :cond_28
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 2381
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_3a

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_3a

    .line 2385
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChangedForAccessibility()V

    .line 2388
    :cond_3a
    if-nez p1, :cond_3f

    .line 2389
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 2391
    :cond_3f
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_f

    .line 5387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_32

    .line 5401
    :cond_f
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_13
    return v2

    .line 5389
    :pswitch_14
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 5390
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 5391
    .local v1, "vscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_f

    .line 5392
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 5393
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_f

    .line 5394
    const/4 v2, 0x1

    goto :goto_13

    .line 5387
    :pswitch_data_32
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 7796
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 7798
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_1d

    .line 7799
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 7808
    :cond_1d
    :goto_1d
    return-void

    .line 7803
    :cond_1e
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 7804
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_1d
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1912
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1913
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1914
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 1918
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1919
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1920
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1921
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_21

    .line 1922
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1923
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1925
    :cond_21
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_35

    .line 1926
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1927
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1930
    :cond_35
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2881
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2882
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_c

    if-nez v0, :cond_d

    .line 2908
    :cond_c
    :goto_c
    return-void

    .line 2887
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2888
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_c

    .line 2892
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_49

    .line 2893
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2894
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2899
    :goto_2c
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 2900
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2901
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2904
    :cond_3a
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2905
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2906
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_c

    .line 2896
    :cond_49
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_2c
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5485
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5486
    const/4 v0, 0x1

    .line 5489
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5497
    .local v0, "action":I
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v9, :cond_11

    .line 5498
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 5501
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_18

    .line 5580
    :cond_17
    :goto_17
    return v7

    .line 5509
    :cond_18
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v9, :cond_26

    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_26

    move v7, v8

    .line 5510
    goto :goto_17

    .line 5513
    :cond_26
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_b6

    :pswitch_2b
    goto :goto_17

    .line 5515
    :pswitch_2c
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5516
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_34

    const/4 v9, 0x5

    if-ne v3, v9, :cond_38

    .line 5517
    :cond_34
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v7, v8

    .line 5518
    goto :goto_17

    .line 5521
    :cond_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 5522
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 5523
    .local v6, "y":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5525
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 5526
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_69

    if-ltz v1, :cond_69

    .line 5529
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5530
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5531
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5532
    iput v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5533
    iput v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5534
    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5535
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5537
    .end local v4    # "v":Landroid/view/View;
    :cond_69
    const/high16 v9, -0x80000000

    iput v9, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5538
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 5539
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5540
    if-ne v3, v11, :cond_17

    move v7, v8

    .line 5541
    goto :goto_17

    .line 5547
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_79
    iget v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_c8

    goto :goto_17

    .line 5549
    :pswitch_7f
    iget v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 5550
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_8e

    .line 5551
    const/4 v2, 0x0

    .line 5552
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5554
    :cond_8e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 5555
    .restart local v6    # "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 5556
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5557
    invoke-direct {p0, v6}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v9

    if-eqz v9, :cond_17

    move v7, v8

    .line 5558
    goto/16 :goto_17

    .line 5567
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_a4
    iput v10, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5568
    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5569
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5570
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_17

    .line 5575
    :pswitch_b0
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_17

    .line 5513
    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_a4
        :pswitch_79
        :pswitch_a4
        :pswitch_2b
        :pswitch_2b
        :pswitch_b0
    .end packed-switch

    .line 5547
    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_7f
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 3675
    sparse-switch p1, :sswitch_data_14

    .line 3690
    :cond_4
    :goto_4
    const/4 v0, 0x0

    return v0

    .line 3678
    :sswitch_6
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_4

    .line 3682
    :sswitch_9
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_4

    .line 3685
    :sswitch_c
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-ne v0, v1, :cond_4

    .line 3686
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto :goto_4

    .line 3675
    :sswitch_data_14
    .sparse-switch
        0x1f -> :sswitch_c
        0x3b -> :sswitch_9
        0x3c -> :sswitch_9
        0x71 -> :sswitch_6
        0x72 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 3695
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3696
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 3698
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 3699
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 3779
    :goto_19
    return v3

    .line 3702
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_51

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v4, :cond_51

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_51

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_51

    .line 3706
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3707
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_4d

    .line 3708
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v5, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3709
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3711
    :cond_4d
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_19

    .line 3716
    .end local v2    # "view":Landroid/view/View;
    :cond_51
    sparse-switch p1, :sswitch_data_f4

    .line 3779
    :cond_54
    :goto_54
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_19

    .line 3722
    :sswitch_59
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_63

    .line 3723
    iget v4, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    if-nez v4, :cond_be

    .line 3724
    iput p1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 3730
    :cond_63
    :goto_63
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_54

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v4, :cond_54

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_54

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_54

    .line 3734
    iget v4, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3736
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_b5

    if-eqz v1, :cond_b5

    .line 3737
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_c1

    .line 3738
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3739
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3740
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3741
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 3742
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 3743
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 3744
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 3753
    :cond_b5
    :goto_b5
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_54

    .line 3754
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    goto :goto_54

    .line 3726
    :cond_be
    iput p1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    goto :goto_63

    .line 3746
    :cond_c1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3747
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3748
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 3749
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    goto :goto_b5

    .line 3761
    :sswitch_da
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_54

    .line 3765
    :sswitch_de
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 3766
    iput v7, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 3767
    iput v7, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 3768
    iput v6, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 3769
    iput v6, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto/16 :goto_54

    .line 3772
    :sswitch_ea
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_54

    .line 3773
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto/16 :goto_54

    .line 3716
    nop

    :sswitch_data_f4
    .sparse-switch
        0x13 -> :sswitch_59
        0x14 -> :sswitch_59
        0x15 -> :sswitch_59
        0x16 -> :sswitch_59
        0x1f -> :sswitch_ea
        0x3b -> :sswitch_de
        0x3c -> :sswitch_de
        0x71 -> :sswitch_da
        0x72 -> :sswitch_da
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2565
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2566
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2567
    if-eqz p1, :cond_1e

    .line 2568
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2569
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 2570
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2569
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2572
    :cond_19
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2575
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1e
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v2, :cond_33

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v3, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-ne v2, v3, :cond_2c

    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_33

    .line 2576
    :cond_2c
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v2, v3}, Landroid/widget/FastScroller;->onItemCountChanged(I)V

    .line 2579
    :cond_33
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2580
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2582
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2583
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2538
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_8

    .line 2539
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2541
    :cond_8
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2542
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2543
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2544
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2545
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2548
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_4f

    .line 2549
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2550
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2551
    .local v3, "listBottom":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2552
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_50

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2553
    .local v1, "lastBottom":I
    :goto_44
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_52

    if-gt v1, v3, :cond_52

    :goto_4d
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2557
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_4f
    return-void

    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_50
    move v1, v3

    .line 2552
    goto :goto_44

    .line 2553
    .restart local v1    # "lastBottom":I
    :cond_52
    const/4 v5, 0x0

    goto :goto_4d
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 8
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 5375
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-eq v0, p2, :cond_15

    .line 5376
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 5377
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 5378
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 5380
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 5382
    :cond_15
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 8038
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_18

    .line 8039
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8040
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_17

    .line 8041
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 8042
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8049
    :cond_17
    :goto_17
    return v0

    .line 8045
    :cond_18
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_17

    .line 8046
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 8047
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public onRemoteAdapterDisconnected()V
    .registers 1

    .prologue
    .line 8062
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 9
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 2276
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 2278
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2279
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2281
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 2283
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_60

    .line 2284
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2285
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2286
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2287
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2288
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2289
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 2303
    :cond_2e
    :goto_2e
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2305
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3b

    .line 2306
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2309
    :cond_3b
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_43

    .line 2310
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2313
    :cond_43
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 2315
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_5c

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5c

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_5c

    .line 2317
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2320
    :cond_5c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2321
    return-void

    .line 2290
    :cond_60
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_2e

    .line 2291
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2293
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2294
    iput v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2295
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2296
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2297
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2298
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2299
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2300
    iput v3, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_2e
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3425
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 3426
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_10

    .line 3427
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3429
    :cond_10
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 16

    .prologue
    .line 2184
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2186
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2188
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2190
    .local v8, "ss":Landroid/widget/AbsListView$SavedState;
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v12, :cond_4d

    .line 2192
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2193
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2194
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2195
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->position:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2196
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->height:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2197
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2198
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v12, v12, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2199
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2200
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2201
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2271
    :cond_4c
    :goto_4c
    return-object v8

    .line 2205
    :cond_4d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lez v12, :cond_cb

    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v12, :cond_cb

    const/4 v3, 0x1

    .line 2206
    .local v3, "haveChildren":Z
    :goto_58
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v6

    .line 2207
    .local v6, "selectedId":J
    iput-wide v6, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2208
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2210
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_cd

    .line 2212
    iget v12, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2213
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2214
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2241
    :goto_78
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2242
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v12, :cond_8f

    .line 2243
    iget-object v10, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2244
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_8f

    .line 2245
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2246
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_8f

    .line 2247
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2252
    .end local v1    # "filterText":Landroid/text/Editable;
    .end local v10    # "textFilter":Landroid/widget/EditText;
    :cond_8f
    iget v12, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_ff

    iget-object v12, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_ff

    const/4 v12, 0x1

    :goto_99
    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2254
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_a7

    .line 2255
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2257
    :cond_a7
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_103

    .line 2258
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2259
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2260
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b7
    if-ge v4, v0, :cond_101

    .line 2261
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2260
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 2205
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_cb
    const/4 v3, 0x0

    goto :goto_58

    .line 2216
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_cd
    if-eqz v3, :cond_f3

    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v12, :cond_f3

    .line 2226
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2227
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2228
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2229
    .local v2, "firstPos":I
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v2, v12, :cond_e8

    .line 2230
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 2232
    :cond_e8
    iput v2, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2233
    iget-object v12, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_78

    .line 2235
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_f3
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2236
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2237
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_78

    .line 2252
    :cond_ff
    const/4 v12, 0x0

    goto :goto_99

    .line 2263
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_101
    iput-object v5, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2265
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_103
    iget v12, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2267
    iget-object v12, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v12, :cond_4c

    .line 2268
    iget-object v12, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    goto/16 :goto_4c
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3023
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 3024
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3025
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 3028
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_15

    .line 3029
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 3031
    :cond_15
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 7825
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 7826
    invoke-direct {p0, v4}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7827
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7828
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 7829
    .local v2, "showing":Z
    if-nez v2, :cond_31

    if-lez v1, :cond_31

    .line 7831
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 7832
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 7838
    :cond_1d
    :goto_1d
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_30

    .line 7839
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 7841
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3c

    .line 7842
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 7849
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_30
    return-void

    .line 7833
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_31
    if-eqz v2, :cond_1d

    if-nez v1, :cond_1d

    .line 7835
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7836
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1d

    .line 7844
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 4800
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    if-eqz v10, :cond_11

    .line 4801
    iget-object v10, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v10, :cond_11

    .line 4802
    iget-object v10, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v11, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v10, v11, v9}, Landroid/hardware/motion/MotionRecognitionManager;->setMotionAngle(Landroid/hardware/motion/MRListener;I)V

    .line 4806
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_25

    .line 4809
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v10

    if-nez v10, :cond_23

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v10

    if-eqz v10, :cond_24

    :cond_23
    move v8, v9

    .line 4895
    :cond_24
    :goto_24
    return v8

    .line 4812
    :cond_25
    iget-object v10, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v10, :cond_2e

    .line 4813
    iget-object v10, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v10}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4816
    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 4824
    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v10, :cond_42

    .line 4825
    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v10, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 4826
    .local v4, "intercepted":Z
    if-eqz v4, :cond_42

    move v8, v9

    .line 4827
    goto :goto_24

    .line 4831
    .end local v4    # "intercepted":Z
    :cond_42
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4832
    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4835
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_c2

    :goto_51
    :pswitch_51
    move v8, v9

    .line 4895
    goto :goto_24

    .line 4837
    :pswitch_53
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_51

    .line 4842
    :pswitch_57
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_51

    .line 4847
    :pswitch_5b
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_51

    .line 4852
    :pswitch_5f
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    goto :goto_51

    .line 4857
    :pswitch_63
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4858
    iget v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4859
    .local v6, "x":I
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4860
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 4861
    .local v5, "motionPosition":I
    if-ltz v5, :cond_80

    .line 4863
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4864
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4865
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4867
    .end local v1    # "child":Landroid/view/View;
    :cond_80
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4868
    iget v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_51

    .line 4874
    .end local v5    # "motionPosition":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 4875
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 4876
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v6, v10

    .line 4877
    .restart local v6    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 4878
    .restart local v7    # "y":I
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4879
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4880
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4881
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4882
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 4883
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_b9

    .line 4885
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4886
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4887
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4889
    .end local v1    # "child":Landroid/view/View;
    :cond_b9
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4890
    iget v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_51

    .line 4835
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_53
        :pswitch_5b
        :pswitch_57
        :pswitch_5f
        :pswitch_51
        :pswitch_89
        :pswitch_63
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 4
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 4114
    if-eqz p1, :cond_18

    .line 4116
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4120
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 4123
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4125
    :cond_14
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4144
    :cond_17
    :goto_17
    return-void

    .line 4127
    :cond_18
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4128
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    .line 4129
    :cond_20
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_29

    .line 4130
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4132
    :cond_29
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_32

    .line 4133
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4136
    :cond_32
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_17

    .line 4137
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 4138
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 4139
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 4140
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_17
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 8783
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8784
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 8786
    if-nez p2, :cond_9

    .line 8791
    :goto_8
    return-void

    .line 8789
    :cond_9
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    goto :goto_8
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3361
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 3366
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 3368
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_4a

    move v0, v1

    .line 3370
    .local v0, "touchMode":I
    :goto_e
    if-nez p1, :cond_4c

    .line 3371
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 3372
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_39

    .line 3373
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3376
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3377
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v3, :cond_2a

    .line 3378
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3380
    :cond_2a
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_39

    .line 3381
    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 3382
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 3383
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3384
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3388
    :cond_39
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3390
    if-ne v0, v2, :cond_42

    .line 3392
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3416
    :cond_42
    :goto_42
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 3418
    if-nez p1, :cond_49

    .line 3419
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3421
    :cond_49
    return-void

    .end local v0    # "touchMode":I
    :cond_4a
    move v0, v2

    .line 3368
    goto :goto_e

    .line 3395
    .restart local v0    # "touchMode":I
    :cond_4c
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_57

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_57

    .line 3397
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3401
    :cond_57
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_42

    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_42

    .line 3403
    if-ne v0, v2, :cond_66

    .line 3405
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_42

    .line 3409
    :cond_66
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3410
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3411
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_42
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1934
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1953
    :goto_a
    return v1

    .line 1937
    :cond_b
    sparse-switch p1, :sswitch_data_58

    move v1, v2

    .line 1953
    goto :goto_a

    .line 1939
    :sswitch_10
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_35

    .line 1940
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 1941
    .local v0, "viewportHeight":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_a

    .end local v0    # "viewportHeight":I
    :cond_35
    move v1, v2

    .line 1944
    goto :goto_a

    .line 1946
    :sswitch_37
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_55

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v3, :cond_55

    .line 1947
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 1948
    .restart local v0    # "viewportHeight":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_a

    .end local v0    # "viewportHeight":I
    :cond_55
    move v1, v2

    .line 1951
    goto :goto_a

    .line 1937
    nop

    :sswitch_data_58
    .sparse-switch
        0x1000 -> :sswitch_10
        0x2000 -> :sswitch_37
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/16 v3, 0x4e84

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1437
    const/4 v8, 0x0

    .line 1438
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1439
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1441
    .local v7, "dispatchItemClick":Z
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_f0

    .line 1442
    const/4 v8, 0x1

    .line 1443
    const/4 v6, 0x0

    .line 1446
    .local v6, "checkedStateChanged":Z
    iget-boolean v2, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_1c

    .line 1447
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_81

    instance-of v2, p1, Landroid/widget/Checkable;

    if-eqz v2, :cond_81

    .line 1450
    invoke-virtual {p1}, Landroid/view/View;->performHapticFeedback()Z

    .line 1457
    :cond_1c
    :goto_1c
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_9a

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2e

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9a

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_9a

    .line 1459
    :cond_2e
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_85

    move v5, v0

    .line 1460
    .local v5, "checked":Z
    :goto_37
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1461
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1462
    if-eqz v5, :cond_87

    .line 1463
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1468
    :cond_59
    :goto_59
    if-eqz v5, :cond_93

    .line 1469
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1473
    :goto_61
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6f

    .line 1474
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1476
    const/4 v7, 0x0

    .line 1478
    :cond_6f
    const/4 v6, 0x1

    .line 1495
    .end local v5    # "checked":Z
    :cond_70
    :goto_70
    if-eqz v6, :cond_75

    .line 1496
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1506
    .end local v6    # "checkedStateChanged":Z
    :cond_75
    :goto_75
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    if-nez v0, :cond_80

    if-eqz v7, :cond_80

    .line 1507
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v8, v0

    .line 1510
    :cond_80
    return v8

    .line 1452
    .restart local v6    # "checkedStateChanged":Z
    :cond_81
    invoke-virtual {p0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_1c

    :cond_85
    move v5, v1

    .line 1459
    goto :goto_37

    .line 1465
    .restart local v5    # "checked":Z
    :cond_87
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_59

    .line 1471
    :cond_93
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_61

    .line 1479
    .end local v5    # "checked":Z
    :cond_9a
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_70

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v0, :cond_70

    .line 1480
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_db

    move v5, v0

    .line 1481
    .restart local v5    # "checked":Z
    :goto_ab
    if-eqz v5, :cond_dd

    .line 1482
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1483
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1484
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d7

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1485
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1486
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1488
    :cond_d7
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1492
    :cond_d9
    :goto_d9
    const/4 v6, 0x1

    goto :goto_70

    .end local v5    # "checked":Z
    :cond_db
    move v5, v1

    .line 1480
    goto :goto_ab

    .line 1489
    .restart local v5    # "checked":Z
    :cond_dd
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_ed

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 1490
    :cond_ed
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_d9

    .line 1498
    .end local v5    # "checked":Z
    .end local v6    # "checkedStateChanged":Z
    :cond_f0
    if-eqz p1, :cond_75

    .line 1500
    iget-boolean v0, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_75

    .line 1501
    invoke-virtual {p1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/16 :goto_75
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v1, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3600
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_22

    .line 3601
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_21

    .line 3604
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_1b

    .line 3605
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 3607
    :cond_1b
    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3608
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3625
    :cond_21
    :goto_21
    return v6

    .line 3613
    :cond_22
    const/4 v6, 0x0

    .line 3614
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_31

    .line 3615
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3618
    :cond_31
    if-nez v6, :cond_3d

    .line 3619
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3620
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3622
    :cond_3d
    if-eqz v6, :cond_21

    .line 3623
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_21
.end method

.method public pointToPosition(II)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3797
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3798
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_d

    .line 3799
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3800
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3803
    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3804
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_13
    if-ltz v3, :cond_2f

    .line 3805
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3806
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 3807
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3808
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3809
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3813
    .end local v0    # "child":Landroid/view/View;
    :goto_2b
    return v4

    .line 3804
    .restart local v0    # "child":Landroid/view/View;
    :cond_2c
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 3813
    .end local v0    # "child":Landroid/view/View;
    :cond_2f
    const/4 v4, -0x1

    goto :goto_2b
.end method

.method public pointToRowId(II)J
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3826
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3827
    .local v0, "position":I
    if-ltz v0, :cond_d

    .line 3828
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3830
    :goto_c
    return-wide v1

    :cond_d
    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_c
.end method

.method positionSelector(ILandroid/view/View;)V
    .registers 10
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 2911
    if-eq p1, v6, :cond_5

    .line 2912
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2915
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2916
    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2917
    instance-of v2, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_24

    move-object v2, p2

    .line 2918
    check-cast v2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2920
    :cond_24
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsListView;->positionSelector(IIII)V

    .line 2923
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2924
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_45

    .line 2925
    if-nez v0, :cond_46

    const/4 v2, 0x1

    :goto_3a
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2926
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_45

    .line 2927
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2930
    :cond_45
    return-void

    .line 2925
    :cond_46
    const/4 v2, 0x0

    goto :goto_3a
.end method

.method public reclaimViews(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7957
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7958
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$5100(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 7961
    .local v3, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_32

    .line 7962
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7963
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 7965
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_2f

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 7966
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7967
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7968
    if-eqz v3, :cond_2f

    .line 7970
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7961
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7974
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_32
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 7975
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 7976
    return-void
.end method

.method reconcileSelectedPosition()I
    .registers 3

    .prologue
    .line 6999
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 7000
    .local v0, "position":I
    if-gez v0, :cond_6

    .line 7001
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7003
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7004
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7005
    return v0
.end method

.method public registerDoubleTapMotion()V
    .registers 2

    .prologue
    .line 991
    invoke-direct {p0}, Landroid/widget/AbsListView;->registerMotionListener()V

    .line 992
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setMotionEvent(Z)V

    .line 993
    return-void
.end method

.method public registerIRMotion()V
    .registers 1

    .prologue
    .line 970
    return-void
.end method

.method reportScrollStateChange(I)V
    .registers 9
    .param p1, "newState"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5635
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_132

    .line 5637
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_57

    .line 5638
    iget v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_35

    .line 5640
    :try_start_16
    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_33} :catch_146
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_33} :catch_143

    .line 5644
    :goto_33
    iput v5, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 5646
    :cond_35
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5647
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_43

    .line 5648
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5650
    :cond_43
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_4c

    .line 5651
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5653
    :cond_4c
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_55

    .line 5654
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5656
    :cond_55
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 5658
    :cond_57
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_123

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_123

    iget-boolean v0, p0, Landroid/view/View;->mTwScrollingByScrollbar:Z

    if-nez v0, :cond_123

    .line 5659
    if-eqz p1, :cond_d0

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-nez v0, :cond_d0

    .line 5661
    iget v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_90

    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_90

    .line 5663
    :try_start_71
    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_71 .. :try_end_8e} :catch_140
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_71 .. :try_end_8e} :catch_13d

    .line 5667
    :goto_8e
    iput v5, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 5669
    :cond_90
    iget-object v0, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_ae

    .line 5671
    :try_start_94
    iget-object v0, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AbsListScroll"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I
    :try_end_ae
    .catch Ljava/lang/IllegalAccessException; {:try_start_94 .. :try_end_ae} :catch_13a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_94 .. :try_end_ae} :catch_137

    .line 5676
    :cond_ae
    :goto_ae
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5677
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_bc

    .line 5678
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5680
    :cond_bc
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_c5

    .line 5681
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5683
    :cond_c5
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_ce

    .line 5684
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5686
    :cond_ce
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 5688
    :cond_d0
    if-nez p1, :cond_123

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_123

    .line 5690
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_123

    .line 5691
    iget v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_101

    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_101

    .line 5693
    :try_start_e2
    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ff
    .catch Ljava/lang/IllegalAccessException; {:try_start_e2 .. :try_end_ff} :catch_135
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e2 .. :try_end_ff} :catch_133

    .line 5697
    :goto_ff
    iput v5, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 5699
    :cond_101
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5700
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_10f

    .line 5701
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5703
    :cond_10f
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_118

    .line 5704
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5706
    :cond_118
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_121

    .line 5707
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5709
    :cond_121
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 5714
    :cond_123
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 5715
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_132

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_132

    .line 5717
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5720
    :cond_132
    return-void

    .line 5695
    :catch_133
    move-exception v0

    goto :goto_ff

    .line 5694
    :catch_135
    move-exception v0

    goto :goto_ff

    .line 5673
    :catch_137
    move-exception v0

    goto/16 :goto_ae

    .line 5672
    :catch_13a
    move-exception v0

    goto/16 :goto_ae

    .line 5665
    :catch_13d
    move-exception v0

    goto/16 :goto_8e

    .line 5664
    :catch_140
    move-exception v0

    goto/16 :goto_8e

    .line 5642
    :catch_143
    move-exception v0

    goto/16 :goto_33

    .line 5641
    :catch_146
    move-exception v0

    goto/16 :goto_33
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 5477
    if-eqz p1, :cond_5

    .line 5478
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5480
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 5481
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 2395
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_b

    .line 2396
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 2398
    :cond_b
    return-void
.end method

.method requestLayoutIfNecessary()V
    .registers 2

    .prologue
    .line 2078
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 2079
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 2080
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2081
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2083
    :cond_f
    return-void
.end method

.method resetList()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2404
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2405
    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2408
    iget-boolean v0, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_e

    .line 2409
    iput v2, p0, Landroid/widget/AbsListView;->mLastPosition:I

    .line 2413
    :cond_e
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2414
    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2415
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2416
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2417
    iput v2, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 2418
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 2419
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2420
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2421
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2422
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2423
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2424
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2425
    return-void
.end method

.method public resetPressItemListArray()V
    .registers 3

    .prologue
    .line 8993
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_5

    .line 9004
    :cond_4
    :goto_4
    return-void

    .line 8996
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 8998
    .local v0, "checkCount":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 9002
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9003
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4
.end method

.method resurrectSelection()Z
    .registers 20

    .prologue
    .line 7067
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 7069
    .local v3, "childCount":I
    if-gtz v3, :cond_9

    .line 7070
    const/16 v17, 0x0

    .line 7165
    :goto_8
    return v17

    .line 7073
    :cond_9
    const/4 v13, 0x0

    .line 7075
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 7076
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 7077
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7078
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7079
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 7081
    .local v6, "down":Z
    if-lt v14, v7, :cond_d8

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_d8

    .line 7082
    move v12, v14

    .line 7084
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7085
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 7086
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 7089
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_c9

    .line 7090
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 7146
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_62
    :goto_62
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_88

    .line 7149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7151
    :cond_88
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 7152
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 7153
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 7154
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 7155
    if-lt v12, v7, :cond_139

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_139

    .line 7156
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7157
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 7158
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 7159
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 7163
    :goto_ba
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7165
    if-ltz v12, :cond_13b

    const/16 v17, 0x1

    goto/16 :goto_8

    .line 7091
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_c9
    if-le v11, v4, :cond_62

    .line 7092
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_62

    .line 7096
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_d8
    if-ge v14, v7, :cond_ff

    .line 7098
    move v12, v7

    .line 7099
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_dc
    if-ge v8, v3, :cond_62

    .line 7100
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7101
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7103
    .local v15, "top":I
    if-nez v8, :cond_f5

    .line 7105
    move v13, v15

    .line 7107
    if-gtz v7, :cond_ef

    if-ge v15, v5, :cond_f5

    .line 7110
    :cond_ef
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 7113
    :cond_f5
    if-lt v15, v5, :cond_fc

    .line 7115
    add-int v12, v7, v8

    .line 7116
    move v13, v15

    .line 7117
    goto/16 :goto_62

    .line 7099
    :cond_fc
    add-int/lit8 v8, v8, 0x1

    goto :goto_dc

    .line 7121
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_ff
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 7122
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 7123
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 7125
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_10a
    if-ltz v8, :cond_62

    .line 7126
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7127
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7128
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7130
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_12f

    .line 7131
    move v13, v15

    .line 7132
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_129

    if-le v2, v4, :cond_12f

    .line 7133
    :cond_129
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 7137
    :cond_12f
    if-gt v2, v4, :cond_136

    .line 7138
    add-int v12, v7, v8

    .line 7139
    move v13, v15

    .line 7140
    goto/16 :goto_62

    .line 7125
    :cond_136
    add-int/lit8 v8, v8, -0x1

    goto :goto_10a

    .line 7161
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_139
    const/4 v12, -0x1

    goto :goto_ba

    .line 7165
    :cond_13b
    const/16 v17, 0x0

    goto/16 :goto_8
.end method

.method resurrectSelectionIfNeeded()Z
    .registers 2

    .prologue
    .line 7047
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7048
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 7049
    const/4 v0, 0x1

    .line 7051
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public scrollListBy(I)V
    .registers 4
    .param p1, "y"    # I

    .prologue
    .line 6708
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 6709
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 5
    .param p1, "eventType"    # I

    .prologue
    .line 1896
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_19

    .line 1897
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 1898
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    .line 1899
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_15

    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_15

    .line 1908
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_14
    return-void

    .line 1903
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_15
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1904
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1907
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_19
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_14
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .registers 16
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x3b

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 7488
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_f

    move v2, v5

    .line 7563
    :cond_e
    :goto_e
    return v2

    .line 7492
    :cond_f
    const/4 v2, 0x0

    .line 7493
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 7494
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_bc

    .line 7526
    :goto_14
    if-eqz v3, :cond_e

    .line 7527
    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7529
    move-object v1, p3

    .line 7530
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_28

    .line 7531
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7534
    :cond_28
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7535
    .local v0, "action":I
    packed-switch v0, :pswitch_data_de

    goto :goto_e

    .line 7537
    :pswitch_30
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7538
    if-eq p1, v10, :cond_3a

    if-ne p1, v11, :cond_85

    .line 7539
    :cond_3a
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_e

    .line 7501
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_3d
    const/4 v3, 0x0

    .line 7502
    goto :goto_14

    .line 7504
    :sswitch_3f
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v6, :cond_65

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_65

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 7505
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_67

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_67

    .line 7507
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7508
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_64

    .line 7509
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7511
    :cond_64
    const/4 v2, 0x1

    .line 7518
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_65
    :goto_65
    const/4 v3, 0x0

    .line 7519
    goto :goto_14

    .line 7512
    :cond_67
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_65

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_65

    .line 7514
    const/4 v2, 0x1

    .line 7515
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_65

    .line 7522
    :sswitch_82
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_14

    .line 7540
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_85
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8d

    const/16 v5, 0x72

    if-ne p1, v5, :cond_e

    .line 7541
    :cond_8d
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_e

    .line 7546
    :pswitch_91
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7547
    if-eq p1, v10, :cond_9b

    if-ne p1, v11, :cond_a7

    .line 7548
    :cond_9b
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 7549
    iput v5, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 7550
    iput v5, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 7551
    iput v9, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 7552
    iput v9, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto/16 :goto_e

    .line 7553
    :cond_a7
    const/16 v6, 0x71

    if-eq p1, v6, :cond_af

    const/16 v6, 0x72

    if-ne p1, v6, :cond_e

    .line 7554
    :cond_af
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_e

    .line 7559
    :pswitch_b3
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_e

    .line 7494
    nop

    :sswitch_data_bc
    .sparse-switch
        0x4 -> :sswitch_3f
        0x13 -> :sswitch_3d
        0x14 -> :sswitch_3d
        0x15 -> :sswitch_3d
        0x16 -> :sswitch_3d
        0x17 -> :sswitch_3d
        0x3e -> :sswitch_82
        0x42 -> :sswitch_3d
    .end sparse-switch

    .line 7535
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_30
        :pswitch_91
        :pswitch_b3
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 128
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1226
    if-eqz p1, :cond_1d

    .line 1227
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 1228
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1d

    .line 1230
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1234
    :cond_1d
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_26

    .line 1235
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1238
    :cond_26
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2f

    .line 1239
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1243
    :cond_2f
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4a

    .line 1244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    .line 1245
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 1246
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 1249
    :cond_4a
    return-void
.end method

.method public setAirScrollEnable(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 984
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .registers 2
    .param p1, "disabled"    # Z

    .prologue
    .line 5243
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 5244
    return-void
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 7928
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1c

    .line 7929
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 7930
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7931
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 7932
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7931
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 7934
    :cond_17
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 7936
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method public setChoiceMode(I)V
    .registers 7
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1576
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1577
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_11

    .line 1578
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1579
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1581
    :cond_11
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_41

    .line 1582
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_20

    .line 1583
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1585
    :cond_20
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1586
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1589
    :cond_37
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_41

    .line 1590
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1591
    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1595
    :cond_41
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    .line 1596
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 1603
    :cond_48
    :goto_48
    return-void

    .line 1597
    :cond_49
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_50

    .line 1598
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_48

    .line 1599
    :cond_50
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_58

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_48

    .line 1600
    :cond_58
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_48
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2
    .param p1, "onTop"    # Z

    .prologue
    .line 3105
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 3106
    return-void
.end method

.method public setEnableDragBlock(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 8930
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 8931
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 8921
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 8922
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1731
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_19

    .line 1732
    if-eqz p1, :cond_e

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_e

    .line 1733
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1736
    :cond_e
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1738
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1739
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1749
    :cond_19
    :goto_19
    return-void

    .line 1741
    :cond_1a
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_19
.end method

.method public setFastScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1685
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_f

    .line 1686
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1688
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1689
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1699
    :cond_f
    :goto_f
    return-void

    .line 1691
    :cond_10
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 5
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2336
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 2337
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2340
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2341
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2342
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_39

    .line 2344
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_31

    .line 2345
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2346
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2350
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_31
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2351
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 2354
    :cond_39
    return-void
.end method

.method public setForcedClick(Z)V
    .registers 2
    .param p1, "force"    # Z

    .prologue
    .line 3490
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 3491
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2590
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 2592
    .local v0, "changed":Z
    if-eqz v0, :cond_22

    .line 2596
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_23

    const/4 v1, 0x1

    .line 2597
    .local v1, "visible":Z
    :goto_d
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_22

    if-eqz v1, :cond_22

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2598
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2602
    .end local v1    # "visible":Z
    :cond_22
    return v0

    .line 2596
    :cond_23
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .prologue
    .line 6444
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 6445
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6447
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    # getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$2100(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 6448
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .registers 2
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4199
    iput p1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 4200
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 4179
    if-eqz p1, :cond_6

    .line 4180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 4184
    :goto_5
    return-void

    .line 4182
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    goto :goto_5
.end method

.method public setHoverScrollSpeed(I)V
    .registers 2
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4191
    iput p1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I

    .line 4192
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 12
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1366
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v1, :cond_8

    .line 1433
    :cond_7
    :goto_7
    return-void

    .line 1371
    :cond_8
    if-eqz p2, :cond_2e

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_2e

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2e

    .line 1372
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1374
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1378
    :cond_26
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1381
    :cond_2e
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_37

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_a5

    .line 1382
    :cond_37
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1383
    .local v6, "oldValue":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1384
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1385
    if-eqz p2, :cond_92

    .line 1386
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1391
    :cond_5f
    :goto_5f
    if-eq v6, p2, :cond_69

    .line 1392
    if-eqz p2, :cond_9e

    .line 1393
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1398
    :cond_69
    :goto_69
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7c

    .line 1399
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1400
    .local v3, "id":J
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1427
    .end local v3    # "id":J
    .end local v6    # "oldValue":Z
    :cond_7c
    :goto_7c
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_7

    .line 1428
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-nez v0, :cond_8a

    .line 1429
    iput-boolean v8, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1430
    :cond_8a
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 1431
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto/16 :goto_7

    .line 1388
    .restart local v6    # "oldValue":Z
    :cond_92
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_5f

    .line 1395
    :cond_9e
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_69

    .line 1404
    .end local v6    # "oldValue":Z
    :cond_a5
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_e1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_e1

    move v7, v8

    .line 1407
    .local v7, "updateIds":Z
    :goto_b2
    if-nez p2, :cond_ba

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1408
    :cond_ba
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1409
    if-eqz v7, :cond_c6

    .line 1410
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1415
    :cond_c6
    if-eqz p2, :cond_e3

    .line 1416
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1417
    if-eqz v7, :cond_de

    .line 1418
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1420
    :cond_de
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_7c

    .end local v7    # "updateIds":Z
    :cond_e1
    move v7, v0

    .line 1404
    goto :goto_b2

    .line 1421
    .restart local v7    # "updateIds":Z
    :cond_e3
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f3

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 1422
    :cond_f3
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_7c
.end method

.method public setMotionEvent(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1010
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 1011
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 1615
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_b

    .line 1616
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1618
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1619
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .registers 4
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 9011
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 9017
    :goto_4
    return-void

    .line 9014
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 9015
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    goto :goto_4
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1874
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1875
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1876
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .registers 3
    .param p1, "leftPadding"    # I
    .param p2, "rightPadding"    # I

    .prologue
    .line 5450
    iput p1, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    .line 5451
    iput p2, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    .line 5452
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1208
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    .line 1209
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1a

    .line 1210
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1211
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1212
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1218
    .end local v0    # "context":Landroid/content/Context;
    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1219
    return-void

    .line 1215
    :cond_1e
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1216
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_1a
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 8086
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$5102(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 8087
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7993
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1b

    .line 7994
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7995
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7997
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 8007
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_1a
    :goto_1a
    return-void

    .line 8001
    :cond_1b
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8003
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 8004
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 8005
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1a
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 8019
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 8020
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 8022
    :cond_9
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .prologue
    .line 1811
    invoke-super {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 1812
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_c

    .line 1813
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1815
    :cond_c
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 3188
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 3189
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 3190
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2000
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 2001
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2003
    :cond_9
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 2004
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .registers 3
    .param p1, "resID"    # I

    .prologue
    .line 3116
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3117
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3120
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 3121
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3122
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3124
    :cond_f
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3126
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3127
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 3128
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 3129
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 3130
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 3131
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3132
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3133
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1845
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1846
    return-void
.end method

.method public setStackFromBottom(Z)V
    .registers 3
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2071
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_9

    .line 2072
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 2073
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 2075
    :cond_9
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .registers 2
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2017
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 2018
    return-void
.end method

.method public setTouchSlop(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 1026
    iput p1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1027
    return-void
.end method

.method public setTranscriptMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 7899
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 7900
    return-void
.end method

.method public setVelocityScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 6457
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 6458
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1803
    invoke-super {p0, p1}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    .line 1804
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_c

    .line 1805
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1807
    :cond_c
    return-void
.end method

.method setVisibleRangeHint(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 8069
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 8070
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 8072
    :cond_9
    return-void
.end method

.method shouldShowSelector()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3056
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4a

    move v0, v2

    .line 3057
    .local v0, "isFingerAirView":Z
    :goto_11
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4c

    move v1, v2

    .line 3062
    .local v1, "isFingerAirViewPreview":Z
    :goto_20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_48

    :cond_2c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_48

    :cond_38
    if-eqz v0, :cond_49

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {p0}, Landroid/view/View;->isFingerHovered()Z

    move-result v4

    if-eqz v4, :cond_49

    :cond_48
    move v3, v2

    :cond_49
    return v3

    .end local v0    # "isFingerAirView":Z
    .end local v1    # "isFingerAirViewPreview":Z
    :cond_4a
    move v0, v3

    .line 3056
    goto :goto_11

    .restart local v0    # "isFingerAirView":Z
    :cond_4c
    move v1, v3

    .line 3057
    goto :goto_20
.end method

.method shouldShowSelectorDefault()Z
    .registers 2

    .prologue
    .line 3067
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public showContextMenu(FFI)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3636
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 3637
    .local v3, "position":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    .line 3638
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3639
    .local v1, "id":J
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3640
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_27

    .line 3641
    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3642
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3647
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "id":J
    :goto_23
    return v4

    .line 3645
    :cond_24
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3647
    :cond_27
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_23
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 9
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3652
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3653
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2e

    .line 3654
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3655
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3657
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_19

    .line 3658
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3661
    :cond_19
    if-nez v6, :cond_2d

    .line 3662
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3665
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3670
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_2d
    :goto_2d
    return v6

    :cond_2e
    const/4 v6, 0x0

    goto :goto_2d
.end method

.method public smoothScrollBy(II)V
    .registers 4
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 6531
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 6532
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .registers 11
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 6609
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_b

    .line 6610
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6614
    :cond_b
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6615
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6616
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 6617
    .local v3, "lastPos":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 6618
    .local v4, "topLimit":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 6620
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_4a

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v5, :cond_4a

    if-eqz v1, :cond_4a

    if-nez v2, :cond_38

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_38

    if-ltz p1, :cond_4a

    :cond_38
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v3, v5, :cond_59

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_59

    if-lez p1, :cond_59

    .line 6624
    :cond_4a
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 6625
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v5, :cond_58

    .line 6626
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 6632
    :cond_58
    :goto_58
    return-void

    .line 6629
    :cond_59
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6630
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_58
.end method

.method smoothScrollByOffset(I)V
    .registers 12
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000

    .line 6638
    const/4 v2, -0x1

    .line 6639
    .local v2, "index":I
    if-gez p1, :cond_58

    .line 6640
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 6645
    :cond_9
    :goto_9
    const/4 v7, -0x1

    if-le v2, v7, :cond_57

    .line 6646
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6647
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_57

    .line 6648
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6649
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 6651
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 6652
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 6653
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 6654
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000

    .line 6655
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_5f

    cmpg-float v7, v3, v9

    if-gez v7, :cond_5f

    .line 6658
    add-int/lit8 v2, v2, 0x1

    .line 6665
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_45
    :goto_45
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 6668
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_57
    return-void

    .line 6641
    :cond_58
    if-lez p1, :cond_9

    .line 6642
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_9

    .line 6659
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_5f
    if-lez p1, :cond_45

    cmpg-float v7, v3, v9

    if-gez v7, :cond_45

    .line 6662
    add-int/lit8 v2, v2, -0x1

    goto :goto_45
.end method

.method public smoothScrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 6466
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 6467
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 6469
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 6470
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6519
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 6520
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 6522
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->start(II)V

    .line 6523
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6503
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 6504
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 6506
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(II)V

    .line 6507
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6485
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 6486
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 6488
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 6489
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .registers 2

    .prologue
    .line 3039
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_a

    .line 3044
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 3042
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 3039
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .registers 35
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 6747
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 6748
    .local v8, "childCount":I
    if-nez v8, :cond_9

    .line 6749
    const/16 v30, 0x1

    .line 6946
    :goto_8
    return v30

    .line 6752
    :cond_9
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTop()I

    move-result v16

    .line 6753
    .local v16, "firstTop":I
    add-int/lit8 v30, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 6755
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 6760
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 6761
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 6762
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_45

    .line 6763
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 6764
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 6768
    :cond_45
    sub-int v26, v13, v16

    .line 6769
    .local v26, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v30

    sub-int v14, v30, v12

    .line 6770
    .local v14, "end":I
    sub-int v27, v22, v14

    .line 6772
    .local v27, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v31, v0

    sub-int v19, v30, v31

    .line 6773
    .local v19, "height":I
    if-gez p1, :cond_f3

    .line 6774
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6779
    :goto_74
    if-gez p2, :cond_ff

    .line 6780
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6785
    :goto_85
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6788
    .local v15, "firstPosition":I
    if-nez v15, :cond_10b

    .line 6789
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v30, v16, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 6793
    :goto_99
    add-int v30, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_11a

    .line 6794
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    add-int v30, v30, v22

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 6799
    :goto_b5
    if-nez v15, :cond_129

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_129

    if-ltz p2, :cond_129

    const/4 v5, 0x1

    .line 6801
    .local v5, "cannotScrollDown":Z
    :goto_c6
    add-int v30, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_12b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v30

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v22

    move/from16 v1, v30

    if-gt v0, v1, :cond_12b

    if-gtz p2, :cond_12b

    const/4 v6, 0x1

    .line 6804
    .local v6, "cannotScrollUp":Z
    :goto_e9
    if-nez v5, :cond_ed

    if-eqz v6, :cond_131

    .line 6805
    :cond_ed
    if-eqz p2, :cond_12d

    const/16 v30, 0x1

    goto/16 :goto_8

    .line 6776
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_f3
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_74

    .line 6782
    :cond_ff
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_85

    .line 6791
    .restart local v15    # "firstPosition":I
    :cond_10b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_99

    .line 6796
    :cond_11a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_b5

    .line 6799
    :cond_129
    const/4 v5, 0x0

    goto :goto_c6

    .line 6801
    .restart local v5    # "cannotScrollDown":Z
    :cond_12b
    const/4 v6, 0x0

    goto :goto_e9

    .line 6805
    .restart local v6    # "cannotScrollUp":Z
    :cond_12d
    const/16 v30, 0x0

    goto/16 :goto_8

    .line 6808
    :cond_131
    if-gez p2, :cond_22e

    const/4 v11, 0x1

    .line 6810
    .local v11, "down":Z
    :goto_134
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v21

    .line 6811
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_13d

    .line 6812
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 6815
    :cond_13d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 6816
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v31

    sub-int v17, v30, v31

    .line 6818
    .local v17, "footerViewsStart":I
    const/16 v28, 0x0

    .line 6819
    .local v28, "start":I
    const/4 v10, 0x0

    .line 6822
    .local v10, "count":I
    const/16 v24, 0x1

    .line 6825
    .local v24, "performHaptic":Z
    if-eqz v11, :cond_29e

    .line 6826
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v29, v0

    .line 6827
    .local v29, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_171

    .line 6828
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    .line 6830
    :cond_171
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_173
    move/from16 v0, v20

    if-ge v0, v8, :cond_189

    .line 6831
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6832
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v29

    if-lt v0, v1, :cond_231

    .line 6902
    .end local v7    # "child":Landroid/view/View;
    .end local v29    # "top":I
    :cond_189
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v30, v0

    add-int v30, v30, p1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 6904
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 6906
    if-lez v10, :cond_1b1

    .line 6907
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 6908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 6913
    :cond_1b1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v30

    if-nez v30, :cond_1ba

    .line 6914
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 6917
    :cond_1ba
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 6919
    if-eqz v11, :cond_1d1

    .line 6920
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v30, v0

    add-int v30, v30, v10

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6923
    :cond_1d1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 6924
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v26

    if-lt v0, v3, :cond_1dd

    move/from16 v0, v27

    if-ge v0, v3, :cond_1e2

    .line 6925
    :cond_1dd
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 6928
    :cond_1e2
    if-nez v21, :cond_33e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_33e

    .line 6929
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v9, v30, v31

    .line 6930
    .local v9, "childIndex":I
    if-ltz v9, :cond_21f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_21f

    .line 6931
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6942
    .end local v9    # "childIndex":I
    :cond_21f
    :goto_21f
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 6944
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 6946
    const/16 v30, 0x0

    goto/16 :goto_8

    .line 6808
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v24    # "performHaptic":Z
    .end local v28    # "start":I
    :cond_22e
    const/4 v11, 0x0

    goto/16 :goto_134

    .line 6835
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v11    # "down":Z
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v24    # "performHaptic":Z
    .restart local v28    # "start":I
    .restart local v29    # "top":I
    :cond_231
    add-int/lit8 v10, v10, 0x1

    .line 6836
    add-int v25, v15, v20

    .line 6837
    .local v25, "position":I
    move/from16 v0, v25

    move/from16 v1, v18

    if-lt v0, v1, :cond_29a

    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_29a

    .line 6840
    invoke-virtual {v7}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_24a

    .line 6841
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6845
    :cond_24a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_28d

    .line 6846
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v25

    if-eq v0, v1, :cond_28d

    .line 6847
    if-eqz v24, :cond_287

    .line 6848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    move/from16 v30, v0

    if-nez v30, :cond_285

    .line 6849
    const/16 v30, 0x4e98

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 6852
    :cond_285
    const/16 v24, 0x0

    .line 6854
    :cond_287
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPosition:I

    .line 6858
    :cond_28d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6830
    :cond_29a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_173

    .line 6863
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v25    # "position":I
    .end local v29    # "top":I
    :cond_29e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v30

    sub-int v4, v30, p2

    .line 6864
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2bc

    .line 6865
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v4, v4, v30

    .line 6867
    :cond_2bc
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_2be
    if-ltz v20, :cond_189

    .line 6868
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6869
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v30

    move/from16 v0, v30

    if-le v0, v4, :cond_189

    .line 6872
    move/from16 v28, v20

    .line 6873
    add-int/lit8 v10, v10, 0x1

    .line 6874
    add-int v25, v15, v20

    .line 6875
    .restart local v25    # "position":I
    move/from16 v0, v25

    move/from16 v1, v18

    if-lt v0, v1, :cond_33b

    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_33b

    .line 6878
    invoke-virtual {v7}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_2eb

    .line 6879
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6883
    :cond_2eb
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_32e

    .line 6884
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v25

    if-eq v0, v1, :cond_32e

    .line 6885
    if-eqz v24, :cond_328

    .line 6886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    move/from16 v30, v0

    if-nez v30, :cond_326

    .line 6887
    const/16 v30, 0x4e98

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6888
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 6890
    :cond_326
    const/16 v24, 0x0

    .line 6892
    :cond_328
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPosition:I

    .line 6896
    :cond_32e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6867
    :cond_33b
    add-int/lit8 v20, v20, -0x1

    goto :goto_2be

    .line 6933
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v25    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_33e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_377

    .line 6934
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v9, v30, v31

    .line 6935
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_21f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_21f

    .line 6936
    const/16 v30, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_21f

    .line 6939
    .end local v9    # "childIndex":I
    :cond_377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_21f
.end method

.method protected twGetItemCount()I
    .registers 3

    .prologue
    .line 6560
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6561
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_7
.end method

.method public twIsSetCustomMultiChoiceMode()Z
    .registers 2

    .prologue
    .line 1654
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1519
    const/4 v6, 0x0

    .line 1521
    .local v6, "handledNotifyKeyPress":Z
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v0, :cond_f

    .line 1522
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v5}, Landroid/widget/AdapterView;->twNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v6

    .line 1524
    :cond_f
    return v6
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 1645
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 1646
    return-void
.end method

.method public twSetSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 6574
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6575
    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1627
    if-eqz p1, :cond_14

    .line 1628
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_13

    .line 1629
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1637
    :cond_13
    :goto_13
    return-void

    .line 1632
    :cond_14
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_13

    .line 1633
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1634
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_13
.end method

.method public twSmoothScrollBy(I)V
    .registers 7
    .param p1, "distance"    # I

    .prologue
    const/16 v4, -0x1f4

    const/16 v3, 0x1f4

    .line 6582
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_f

    .line 6583
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6586
    :cond_f
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_22

    .line 6587
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6588
    new-instance v1, Landroid/widget/AbsListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6591
    :cond_22
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    .line 6592
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_5c

    .line 6593
    if-lez p1, :cond_3e

    .line 6594
    :goto_30
    if-le p1, v3, :cond_4c

    .line 6595
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6594
    add-int/lit16 p1, p1, -0x1f4

    goto :goto_30

    .line 6598
    :cond_3e
    :goto_3e
    if-ge p1, v4, :cond_4c

    .line 6599
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6598
    add-int/lit16 p1, p1, 0x1f4

    goto :goto_3e

    .line 6602
    :cond_4c
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6603
    if-eqz v0, :cond_5c

    iget-object v1, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6605
    :cond_5c
    return-void
.end method

.method public unregisterDoubleTapMotion()V
    .registers 2

    .prologue
    .line 1000
    invoke-direct {p0}, Landroid/widget/AbsListView;->unregisterMotionListener()V

    .line 1001
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setMotionEvent(Z)V

    .line 1002
    return-void
.end method

.method public unregisterIRMotion()V
    .registers 1

    .prologue
    .line 977
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_e

    .line 1037
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1038
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1040
    :cond_e
    return-void
.end method

.method updateScrollIndicators()V
    .registers 11

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2612
    iget-object v6, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_2b

    .line 2615
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v6, :cond_5b

    move v1, v4

    .line 2618
    .local v1, "canScrollUp":Z
    :goto_c
    if-nez v1, :cond_23

    .line 2619
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_23

    .line 2620
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2621
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5d

    move v1, v4

    .line 2625
    .end local v2    # "child":Landroid/view/View;
    :cond_23
    :goto_23
    iget-object v8, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_5f

    move v6, v5

    :goto_28
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2628
    .end local v1    # "canScrollUp":Z
    :cond_2b
    iget-object v6, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_5a

    .line 2630
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2633
    .local v3, "count":I
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v6, v8, :cond_61

    move v0, v4

    .line 2636
    .local v0, "canScrollDown":Z
    :goto_3b
    if-nez v0, :cond_53

    if-lez v3, :cond_53

    .line 2637
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2638
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_63

    move v0, v4

    .line 2641
    .end local v2    # "child":Landroid/view/View;
    :cond_53
    :goto_53
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_65

    :goto_57
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2643
    .end local v0    # "canScrollDown":Z
    .end local v3    # "count":I
    :cond_5a
    return-void

    :cond_5b
    move v1, v5

    .line 2615
    goto :goto_c

    .restart local v1    # "canScrollUp":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_5d
    move v1, v5

    .line 2621
    goto :goto_23

    .end local v2    # "child":Landroid/view/View;
    :cond_5f
    move v6, v7

    .line 2625
    goto :goto_28

    .end local v1    # "canScrollUp":Z
    .restart local v3    # "count":I
    :cond_61
    move v0, v5

    .line 2633
    goto :goto_3b

    .restart local v0    # "canScrollDown":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_63
    move v0, v5

    .line 2638
    goto :goto_53

    .end local v2    # "child":Landroid/view/View;
    :cond_65
    move v5, v7

    .line 2641
    goto :goto_57
.end method

.method updateSelectorState()V
    .registers 5

    .prologue
    .line 3193
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_45

    .line 3194
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 3195
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_50

    iget v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt v2, v3, :cond_50

    .line 3196
    iget v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3197
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3198
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v2, :cond_46

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_39

    if-eqz v1, :cond_39

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_46

    .line 3199
    :cond_39
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3200
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3211
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_45
    :goto_45
    return-void

    .line 3202
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_46
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_45

    .line 3205
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_50
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_45

    .line 3208
    :cond_5a
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_45
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3255
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
