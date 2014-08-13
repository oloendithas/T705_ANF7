.class public Lcom/diotek/ime/framework/view/PopupKeyboardView;
.super Landroid/view/View;
.source "PopupKeyboardView.java"


# static fields
.field private static mIsRightSide:Z


# instance fields
.field private mCandidateFrame:Landroid/widget/FrameLayout;

.field private mCandidateMovehandlerGap:I

.field private mCandidateShown:Z

.field private mCandidateView:Landroid/view/View;

.field private mCandidateViewHeight:I

.field private mCurrentLocation:Landroid/graphics/Point;

.field private mDefaultStatusBarHeight:I

.field private mFloatingKeyboard:Landroid/widget/PopupWindow;

.field private mFloatingMoveButton:Landroid/view/View;

.field private mFloatingMoveButtonLayout:Landroid/view/View;

.field private mFloatingMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mFloatingMoveButtonTouched:Z

.field private mFloatingRootView:Landroid/view/View;

.field private mFloatingView:Landroid/view/View;

.field private mFloatingkeyboardHeight:I

.field private mFloatingkeyboardWidth:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputMethod:I

.field private mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mIsAddInsetsComputer:Z

.field private mIsUsedFloatingMoveButton:Z

.field private mLeftKeyboard:Landroid/widget/PopupWindow;

.field private mMoveHandlerHeight:I

.field private mMovingDownPoint:Landroid/graphics/Point;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mRightKeyboard:Landroid/widget/PopupWindow;

.field private mShowRequested:Z

.field private mSplitKeyboardHeight:I

.field private mSplitLeftMoveButton:Landroid/view/View;

.field private mSplitLeftMoveButtonLayout:Landroid/view/View;

.field private mSplitLeftRootView:Landroid/view/View;

.field private mSplitLeftkeyboardWidth:I

.field private mSplitRightInitX:I

.field private mSplitRightMoveButton:Landroid/view/View;

.field private mSplitRightMoveButtonLayout:Landroid/view/View;

.field private mSplitRightRootView:Landroid/view/View;

.field private mSplitRightView:Landroid/view/View;

.field private mSplitRightkeyboardWidth:I

.field private mStatusBarHeight:I

.field private mSystemBarHeight:I

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 44
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    .line 45
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    .line 46
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    .line 47
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    .line 48
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    .line 50
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 51
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 52
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    .line 53
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    .line 54
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    .line 55
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    .line 56
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightView:Landroid/view/View;

    .line 57
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingView:Landroid/view/View;

    .line 58
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    .line 59
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonLayout:Landroid/view/View;

    .line 60
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    .line 61
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    .line 62
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    .line 63
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    .line 64
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    .line 76
    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 77
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z

    .line 79
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    .line 80
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsAddInsetsComputer:Z

    .line 82
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    .line 83
    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    .line 84
    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    .line 85
    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mDefaultStatusBarHeight:I

    .line 87
    new-instance v2, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;

    invoke-direct {v2, p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;-><init>(Lcom/diotek/ime/framework/view/PopupKeyboardView;)V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 103
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 104
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 105
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 106
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    .line 107
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/PopupKeyboardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .prologue
    .line 41
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/view/PopupKeyboardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .prologue
    .line 41
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z

    return v0
.end method

.method static synthetic access$502(Lcom/diotek/ime/framework/view/PopupKeyboardView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/PopupKeyboardView;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z

    return p1
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    return-object v0
.end method

.method private getDefaultLocation()Landroid/graphics/Point;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 927
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 928
    .local v0, "location":Landroid/graphics/Point;
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 929
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 933
    :cond_0
    :goto_0
    return-object v0

    .line 930
    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 931
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method private getFloatingKeyboardDefaultLocation()Landroid/graphics/Point;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1041
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1042
    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    .line 1043
    .local v3, "width":I
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    .line 1049
    .local v1, "height":I
    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1050
    .local v2, "sp":Landroid/content/SharedPreferences;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 1052
    .local v0, "defaultPoint":Landroid/graphics/Point;
    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 1054
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1055
    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 1060
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1061
    const-string v4, "floating_h_location_x"

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 1062
    const-string v4, "floating_h_location_y"

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 1068
    :goto_2
    return-object v0

    .line 1045
    .end local v0    # "defaultPoint":Landroid/graphics/Point;
    .end local v1    # "height":I
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "width":I
    :cond_0
    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    .line 1046
    .restart local v3    # "width":I
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    .restart local v1    # "height":I
    goto :goto_0

    .line 1057
    .restart local v0    # "defaultPoint":Landroid/graphics/Point;
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    neg-int v4, v4

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 1064
    :cond_2
    const-string v4, "floating_location_x"

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 1065
    const-string v4, "floating_location_y"

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    goto :goto_2
.end method

.method private getFloatingMoveButtonTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;-><init>(Lcom/diotek/ime/framework/view/PopupKeyboardView;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private getHWRPanelRscId()I
    .locals 1

    .prologue
    .line 431
    const v0, 0x7f08001e

    return v0
.end method

.method private getKeyboardRscId()I
    .locals 1

    .prologue
    .line 427
    const v0, 0x7f08000c

    return v0
.end method

.method private getSplitKeyboardDefaultLocation()Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1019
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1020
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 1022
    .local v0, "defaultPoint":Landroid/graphics/Point;
    const/4 v2, 0x0

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1024
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-nez v2, :cond_0

    .line 1025
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 1030
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1031
    const-string v2, "split_h_location_y"

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 1036
    :goto_1
    return-object v0

    .line 1027
    :cond_0
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 1033
    :cond_1
    const-string v2, "split_location_y"

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private getValidLocation(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1, "location"    # Landroid/graphics/Point;

    .prologue
    .line 876
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 877
    .local v1, "y":I
    move v0, v1

    .line 878
    .local v0, "height":I
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 879
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-nez v2, :cond_1

    .line 880
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int v0, v2, v3

    .line 887
    :cond_0
    :goto_0
    if-le v1, v0, :cond_3

    .end local v0    # "height":I
    :goto_1
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 889
    return-object p1

    .line 882
    .restart local v0    # "height":I
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int v0, v2, v3

    goto :goto_0

    .line 884
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 885
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int v0, v2, v3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 887
    goto :goto_1
.end method

.method private initFloatingKeyboardLocation()V
    .locals 1

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    .line 1016
    return-void
.end method

.method private initKeyboardLocation()V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1006
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initLocation()V

    .line 1007
    return-void

    .line 997
    :pswitch_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initFloatingKeyboardLocation()V

    goto :goto_0

    .line 1000
    :pswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initSplitKeyboardLocation()V

    goto :goto_0

    .line 995
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initSplitKeyboardLocation()V
    .locals 1

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    .line 1012
    return-void
.end method

.method private setCandidateView(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 416
    const v1, 0x7f080040

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    .line 417
    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 418
    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 422
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 423
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    return-void
.end method

.method private setInputView(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 326
    const v1, 0x7f080041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 327
    .local v0, "inputFrame":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 328
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    return-void
.end method

.method private setSplitKeyboardMoveHandler()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v0, :cond_7

    .line 357
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSplitEnableOneHandKeypad()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSplitOneHandKeypadRightSet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 362
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 364
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 369
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 370
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 372
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 373
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_0

    .line 379
    :cond_3
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_5

    .line 380
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getVisibilityOfCandidateContentLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 388
    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 386
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    .line 393
    :cond_5
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getVisibilityOfCandidateContentLayout()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 394
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 401
    :goto_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 397
    :cond_6
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 399
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_2

    .line 408
    :cond_7
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateFloatingKeyboard(Landroid/graphics/Point;)V
    .locals 6
    .param p1, "updatePoint"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x0

    .line 678
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 679
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    .line 680
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardHeight()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    .line 681
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 682
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 683
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 685
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v1, v2

    neg-int v1, v1

    if-le v0, v1, :cond_1

    .line 686
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 688
    :cond_1
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-gez v0, :cond_2

    .line 689
    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 691
    :cond_2
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 692
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 708
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 711
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    .line 713
    :cond_4
    return-void

    .line 695
    :cond_5
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    if-ge v0, v1, :cond_6

    .line 696
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 698
    :cond_6
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v1, v2

    neg-int v1, v1

    if-le v0, v1, :cond_7

    .line 699
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 701
    :cond_7
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-gez v0, :cond_8

    .line 702
    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 704
    :cond_8
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 705
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private updateSplitKeybord(Landroid/graphics/Point;)V
    .locals 11
    .param p1, "updatePoint"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 716
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 718
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitKeyboardHeight()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    .line 721
    :cond_1
    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    .line 722
    .local v6, "hasMoveHandlerLayoutHeight":I
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-nez v0, :cond_2

    .line 723
    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 727
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    if-ge v0, v2, :cond_3

    .line 728
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    sub-int/2addr v0, v2

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 731
    :cond_3
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v2, v6

    neg-int v2, v2

    if-le v0, v2, :cond_4

    .line 732
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v0, v6

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 734
    :cond_4
    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 745
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getVisibilityOfCandidateContentLayout()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    if-eqz v0, :cond_a

    move v7, v5

    .line 747
    .local v7, "isShowCandidateLayout":Z
    :goto_1
    const/4 v9, 0x0

    .line 748
    .local v9, "moveHandlerOffset":I
    iget v8, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    .line 749
    .local v8, "keyboardHeightOffset":I
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 750
    iget v9, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    .line 751
    const/4 v8, 0x0

    .line 754
    :cond_5
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v0, :cond_10

    .line 755
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_d

    .line 756
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 757
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 759
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    add-int/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 803
    :goto_2
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    .line 805
    .end local v6    # "hasMoveHandlerLayoutHeight":I
    .end local v7    # "isShowCandidateLayout":Z
    .end local v8    # "keyboardHeightOffset":I
    .end local v9    # "moveHandlerOffset":I
    :cond_6
    return-void

    .line 736
    .restart local v6    # "hasMoveHandlerLayoutHeight":I
    :cond_7
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    if-ge v0, v2, :cond_8

    .line 737
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    sub-int/2addr v0, v2

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 739
    :cond_8
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v2, v6

    neg-int v2, v2

    if-le v0, v2, :cond_9

    .line 740
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v0, v6

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 742
    :cond_9
    iput v1, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_a
    move v7, v1

    .line 745
    goto :goto_1

    .line 761
    .restart local v7    # "isShowCandidateLayout":Z
    .restart local v8    # "keyboardHeightOffset":I
    .restart local v9    # "moveHandlerOffset":I
    :cond_b
    if-eqz v7, :cond_c

    .line 762
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 764
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_2

    .line 767
    :cond_c
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 769
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v9

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_2

    .line 773
    :cond_d
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 774
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 776
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    add-int/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_2

    .line 778
    :cond_e
    if-eqz v7, :cond_f

    .line 779
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 781
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_2

    .line 784
    :cond_f
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v9

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 786
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_2

    .line 791
    :cond_10
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_11

    .line 792
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 794
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_2

    .line 797
    :cond_11
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 799
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getCurrentLocationX()I
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    .line 813
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getCurrentLocationY()I
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getFloatingView()Landroid/view/View;
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 854
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingView:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getHWRPanelRscId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 859
    :goto_0
    return-object v0

    .line 856
    :cond_0
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v1, :cond_1

    .line 857
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingView:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardRscId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingView:Landroid/view/View;

    goto :goto_0
.end method

.method public getInputMethod()I
    .locals 1

    .prologue
    .line 1204
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    return v0
.end method

.method public getKeyboardCurrentLocationY()I
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 820
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getKeyboardCurrentLocationY(Z)I
    .locals 2
    .param p1, "isRightKeyboard"    # Z

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v0, :cond_1

    .line 834
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v0, v1

    .line 844
    :goto_0
    return v0

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 841
    :cond_1
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-ne v0, p1, :cond_2

    .line 842
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getKeyboardCurrentLocationYTopMargin()I
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v0, v1

    .line 828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocationX()I
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getScreenToWindowLocation(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "currentLocation"    # Landroid/graphics/Point;

    .prologue
    .line 962
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v3

    .line 963
    .local v3, "locationOnScreen":Landroid/graphics/Point;
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getViewLocationInWindow(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 964
    .local v2, "locationInWindow":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 966
    .local v1, "locationAfterMoving":Landroid/graphics/Point;
    iget v4, p2, Landroid/graphics/Point;->y:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Point;->y:I

    add-int v0, v4, v5

    .line 972
    .local v0, "compareLocationY":I
    iget v4, p2, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Point;->set(II)V

    .line 975
    return-object v1
.end method

.method public getSplitRightInitX()I
    .locals 1

    .prologue
    .line 937
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    .line 938
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    return v0
.end method

.method public getSplitRightView()Landroid/view/View;
    .locals 2

    .prologue
    .line 864
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 865
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightView:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardRscId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 867
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightView:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewLocationInWindow(Landroid/view/View;)Landroid/graphics/Point;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 952
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 953
    .local v0, "locationInWindow":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 955
    .local v1, "temp":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 956
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 958
    return-object v0
.end method

.method public getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 942
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 943
    .local v0, "locationOnScreen":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 945
    .local v1, "temp":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 946
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 948
    return-object v0
.end method

.method public hideCandidateWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1166
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    .line 1167
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v0, :cond_4

    .line 1168
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1171
    :cond_0
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_2

    .line 1172
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1176
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    .line 1179
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v4, :cond_3

    .line 1180
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    .line 1197
    :cond_1
    :goto_1
    return-void

    .line 1174
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    goto :goto_0

    .line 1181
    :cond_3
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v2, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_1

    .line 1186
    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    iput v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    .line 1189
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    .line 1190
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v4, :cond_5

    .line 1191
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    goto :goto_1

    .line 1192
    :cond_5
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v2, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_1
.end method

.method public hideKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 614
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 615
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 616
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 620
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    .line 621
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    .line 622
    return-void

    .line 617
    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1, "splitLeftView"    # Landroid/view/View;
    .param p2, "splitRightView"    # Landroid/view/View;
    .param p3, "floatingView"    # Landroid/view/View;
    .param p4, "candidateView"    # Landroid/view/View;

    .prologue
    .line 146
    iput-object p2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightView:Landroid/view/View;

    .line 147
    iput-object p3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingView:Landroid/view/View;

    .line 149
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    .line 151
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    .line 152
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    .line 153
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitLeftKeyboardWidth()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    .line 155
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitRightKeyboardWidth()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    .line 157
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitKeyboardHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    .line 159
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getStatusBarHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mDefaultStatusBarHeight:I

    .line 160
    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mDefaultStatusBarHeight:I

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    .line 162
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getCandidateViewHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    .line 164
    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v5, :cond_c

    .line 165
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getMoveHandlerHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    .line 169
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    .line 170
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    .line 172
    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-eqz v5, :cond_d

    .line 173
    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    .line 178
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSystemBarHeigth()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    .line 180
    const/4 v5, 0x0

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 182
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    if-nez v5, :cond_0

    .line 183
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v6, 0x7f030034

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    .line 185
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 186
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v6, 0x7f030034

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    .line 188
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 189
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v6, 0x7f030034

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    .line 191
    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    invoke-direct {p0, v5, p3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setInputView(Landroid/view/View;Landroid/view/View;)V

    .line 192
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-direct {p0, v5, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setInputView(Landroid/view/View;Landroid/view/View;)V

    .line 193
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-direct {p0, v5, p2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setInputView(Landroid/view/View;Landroid/view/View;)V

    .line 194
    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    invoke-virtual {p0, v5, p4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCandidateView(ILandroid/view/View;)V

    .line 196
    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_e

    move-object v5, p4

    .line 197
    check-cast v5, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v1

    .line 198
    .local v1, "leftPadding":I
    check-cast p4, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    .end local p4    # "candidateView":Landroid/view/View;
    invoke-virtual {p4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardRightEdge()I

    move-result v3

    .line 199
    .local v3, "rightPadding":I
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    const v6, 0x7f08003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 200
    .local v2, "moveBtnLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v5, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 201
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 215
    .end local v1    # "leftPadding":I
    .end local v2    # "moveBtnLayout":Landroid/widget/LinearLayout;
    .end local v3    # "rightPadding":I
    :cond_3
    :goto_2
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    iget v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    iget v8, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v9, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    .line 218
    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v5, :cond_10

    .line 219
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    iget v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v8, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v9, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    .line 225
    :goto_3
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    iget v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v8, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v9, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    .line 228
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 229
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 230
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 231
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 232
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 233
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 234
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 235
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 236
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 237
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 247
    const/4 v4, 0x0

    .line 249
    .local v4, "useFloatingKeyboardAnim":Z
    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 252
    :goto_4
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    .line 253
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const v6, 0x7f0e0039

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 255
    :cond_4
    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v5, :cond_11

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_11

    :cond_5
    const/4 v0, 0x1

    .line 258
    .local v0, "bDrawFloatingMoveButton":Z
    :goto_5
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    if-nez v5, :cond_6

    .line 259
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    const v6, 0x7f08003f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    .line 260
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 261
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingMoveButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    const v6, 0x7f08003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonLayout:Landroid/view/View;

    .line 266
    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 267
    if-eqz v0, :cond_12

    .line 268
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_7
    :goto_6
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    if-nez v5, :cond_8

    .line 275
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    const v6, 0x7f08003f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    .line 276
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 277
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    const v6, 0x7f0209cd

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 278
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingMoveButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 280
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    const v6, 0x7f08003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    .line 281
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 282
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 287
    :cond_8
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_9

    .line 288
    if-eqz v0, :cond_13

    .line 289
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_9
    :goto_7
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    if-nez v5, :cond_a

    .line 296
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    const v6, 0x7f08003f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    .line 297
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 298
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    const v6, 0x7f0209d4

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 299
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingMoveButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 301
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    const v6, 0x7f08003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    .line 302
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 303
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 307
    :cond_a
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_b

    .line 308
    if-eqz v0, :cond_14

    .line 309
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :cond_b
    :goto_8
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setSplitKeyboardMoveHandler()V

    .line 317
    new-instance v5, Landroid/graphics/Point;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    .line 318
    new-instance v5, Landroid/graphics/Point;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    .line 319
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initSplitRightX()V

    .line 320
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initLocation()V

    .line 322
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideCandidateWindow()V

    .line 323
    return-void

    .line 167
    .end local v0    # "bDrawFloatingMoveButton":Z
    .end local v4    # "useFloatingKeyboardAnim":Z
    .restart local p4    # "candidateView":Landroid/view/View;
    :cond_c
    const/4 v5, 0x0

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    goto/16 :goto_0

    .line 175
    :cond_d
    const/4 v5, 0x0

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    goto/16 :goto_1

    .line 202
    :cond_e
    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3

    move-object v5, p4

    .line 203
    check-cast v5, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v1

    .line 204
    .restart local v1    # "leftPadding":I
    check-cast p4, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    .end local p4    # "candidateView":Landroid/view/View;
    invoke-virtual {p4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardRightEdge()I

    move-result v3

    .line 205
    .restart local v3    # "rightPadding":I
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    const v6, 0x7f08003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 206
    .restart local v2    # "moveBtnLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 207
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    const v6, 0x7f08003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "moveBtnLayout":Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 208
    .restart local v2    # "moveBtnLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 209
    sget-boolean v5, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v5, :cond_f

    .line 210
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    .line 212
    :cond_f
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v3, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    .line 222
    .end local v1    # "leftPadding":I
    .end local v2    # "moveBtnLayout":Landroid/widget/LinearLayout;
    .end local v3    # "rightPadding":I
    :cond_10
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    iget v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v8, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    goto/16 :goto_3

    .line 255
    .restart local v4    # "useFloatingKeyboardAnim":Z
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 270
    .restart local v0    # "bDrawFloatingMoveButton":Z
    :cond_12
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonLayout:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 291
    :cond_13
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 311
    :cond_14
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 250
    .end local v0    # "bDrawFloatingMoveButton":Z
    :catch_0
    move-exception v5

    goto/16 :goto_4
.end method

.method public initLocation()V
    .locals 4

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "defaultPoint":Landroid/graphics/Point;
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 495
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 499
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 500
    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 502
    :cond_1
    return-void

    .line 496
    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public initSplitRightX()V
    .locals 3

    .prologue
    .line 1072
    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    .line 1073
    .local v0, "isLandscape":Z
    if-eqz v0, :cond_0

    .line 1074
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    .line 1078
    :goto_0
    return-void

    .line 1076
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    goto :goto_0
.end method

.method public isPopKeyboardShown()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1081
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 1082
    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 1083
    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1090
    :cond_1
    :goto_0
    return v0

    .line 1085
    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1086
    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public isRightSide()Z
    .locals 1

    .prologue
    .line 1200
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    return v0
.end method

.method public moveCandidateWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1110
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1111
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1112
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 1113
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "parent":Landroid/view/ViewParent;
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1115
    :cond_0
    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCandidateView(ILandroid/view/View;)V

    .line 1116
    sget-boolean v3, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v3, :cond_5

    .line 1117
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v0

    .line 1118
    .local v0, "leftPadding":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1124
    .end local v0    # "leftPadding":I
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v3, :cond_2

    .line 1125
    sget-boolean v3, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v3, :cond_6

    .line 1126
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1127
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1134
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    .line 1135
    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    .line 1136
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    .line 1140
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1141
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView()V

    .line 1143
    :cond_4
    return-void

    .line 1120
    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardRightEdge()I

    move-result v2

    .line 1121
    .local v2, "rightPadding":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1129
    .end local v2    # "rightPadding":I
    :cond_6
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1130
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    goto :goto_1

    .line 1137
    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1138
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_2
.end method

.method public moveCandidateWindowLeftSide()V
    .locals 2

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1095
    .local v0, "inputMethod":I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1096
    const/4 v1, 0x0

    sput-boolean v1, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    .line 1097
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->moveCandidateWindow()V

    .line 1099
    :cond_0
    return-void
.end method

.method public moveCandidateWindowRightSide()V
    .locals 2

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1103
    .local v0, "inputMethod":I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1104
    const/4 v1, 0x1

    sput-boolean v1, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    .line 1105
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->moveCandidateWindow()V

    .line 1107
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 980
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 981
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 982
    .local v0, "isLandscape":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 983
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    .line 988
    :goto_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initKeyboardLocation()V

    .line 989
    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView()V

    .line 992
    :cond_0
    return-void

    .line 981
    .end local v0    # "isLandscape":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 985
    .restart local v0    # "isLandscape":Z
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 113
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 118
    if-nez p1, :cond_2

    .line 119
    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    .line 120
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->showKeyboard()V

    .line 121
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsAddInsetsComputer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 123
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 128
    :goto_0
    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsAddInsetsComputer:Z

    .line 143
    :cond_0
    :goto_1
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    goto :goto_0

    .line 131
    :cond_2
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    .line 132
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    .line 133
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsAddInsetsComputer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 135
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 140
    :goto_2
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsAddInsetsComputer:Z

    goto :goto_1

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    goto :goto_2
.end method

.method public releaseDownPoint()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 532
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 533
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 534
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 535
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    const-string v2, "floating_h_location_x"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 537
    const-string v2, "floating_h_location_y"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 542
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 551
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Point;->set(II)V

    .line 552
    return-void

    .line 539
    :cond_1
    const-string v2, "floating_location_x"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 540
    const-string v2, "floating_location_y"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 543
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 544
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 545
    const-string v2, "split_h_location_y"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 549
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 547
    :cond_3
    const-string v2, "split_location_y"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method public setCandidateView(ILandroid/view/View;)V
    .locals 1
    .param p1, "inputMethod"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 334
    packed-switch p1, :pswitch_data_0

    .line 347
    :goto_0
    iput-object p2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    .line 348
    return-void

    .line 336
    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCandidateView(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setSplitKeyboardMoveHandler()V

    .line 340
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCandidateView(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCandidateView(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentLocation(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "currentLocation"    # Landroid/graphics/Point;

    .prologue
    .line 872
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getValidLocation(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    .line 873
    return-void
.end method

.method public setMovingDownPoint(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    .line 529
    return-void
.end method

.method public showCandidateWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1146
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    .line 1147
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1149
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1150
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1154
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    .line 1157
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 1158
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    .line 1163
    :cond_0
    :goto_1
    return-void

    .line 1152
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getCandidateViewHeight()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    goto :goto_0

    .line 1159
    :cond_2
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_1
.end method

.method public showKeyboard()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 555
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->dismissClipboard()V

    .line 557
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 559
    .local v3, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 560
    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mDefaultStatusBarHeight:I

    iput v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_0
    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_7

    .line 569
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 570
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    if-eqz v4, :cond_4

    .line 571
    :cond_1
    const/4 v0, 0x0

    .line 572
    .local v0, "candidateHeightGap":I
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v4, :cond_2

    .line 573
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    .line 575
    :cond_2
    sget-boolean v4, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v4, :cond_6

    .line 577
    :try_start_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v0

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 578
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget-object v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    .line 611
    .end local v0    # "candidateHeightGap":I
    :cond_4
    :goto_2
    return-void

    .line 562
    :cond_5
    const/4 v4, 0x0

    :try_start_2
    iput v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Landroid/os/RemoteException;
    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    goto :goto_0

    .line 579
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "candidateHeightGap":I
    :catch_1
    move-exception v2

    .line 580
    .local v2, "ex":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    .line 581
    const-string v4, "SamsungIME"

    const-string v5, "PoupKeyboardView::showKeyboard()-->BadTokenException while trying to show split keyboard when mIsRightSide is true."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 586
    .end local v2    # "ex":Landroid/view/WindowManager$BadTokenException;
    :cond_6
    :try_start_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 587
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget-object v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v0

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 588
    :catch_2
    move-exception v2

    .line 589
    .restart local v2    # "ex":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    .line 590
    const-string v4, "SamsungIME"

    const-string v5, "PoupKeyboardView::showKeyboard()-->BadTokenException while trying to show split keyboard when mIsRightSide is flase."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 597
    .end local v0    # "candidateHeightGap":I
    .end local v2    # "ex":Landroid/view/WindowManager$BadTokenException;
    :cond_7
    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 598
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 599
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    if-eqz v4, :cond_4

    .line 601
    :cond_8
    :try_start_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_3

    .line 607
    :cond_9
    :goto_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_2

    .line 602
    :catch_3
    move-exception v2

    .line 603
    .restart local v2    # "ex":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_9

    .line 604
    const-string v4, "SamsungIME"

    const-string v5, "PoupKeyboardView::showKeyboard()-->BadTokenException while trying to show floating keyboard."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public updateCurrentLocation(Z)V
    .locals 4
    .param p1, "isSetDefault"    # Z

    .prologue
    .line 893
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 894
    .local v1, "locationOnScreen":Landroid/graphics/Point;
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    .line 895
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 896
    :cond_0
    sget-boolean v2, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v2, :cond_3

    .line 897
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    .line 910
    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    .line 911
    iget v2, v1, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_5

    .line 912
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    .line 917
    .local v0, "location":Landroid/graphics/Point;
    :goto_1
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getValidLocation(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    .line 924
    .end local v0    # "location":Landroid/graphics/Point;
    :cond_2
    :goto_2
    return-void

    .line 899
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0

    .line 903
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 904
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0

    .line 914
    :cond_5
    invoke-virtual {p0, p0, v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getScreenToWindowLocation(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .restart local v0    # "location":Landroid/graphics/Point;
    goto :goto_1

    .line 918
    .end local v0    # "location":Landroid/graphics/Point;
    :cond_6
    iget v2, v1, Landroid/graphics/Point;->y:I

    if-eqz v2, :cond_2

    .line 919
    invoke-virtual {p0, p0, v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getScreenToWindowLocation(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 920
    .restart local v0    # "location":Landroid/graphics/Point;
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 921
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getValidLocation(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    goto :goto_2
.end method

.method public updateKeyboard()V
    .locals 2

    .prologue
    .line 669
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 670
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    .line 671
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setSplitKeyboardMoveHandler()V

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public updateKeyboard(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x7

    const/4 v4, -0x1

    .line 626
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-lez v2, :cond_0

    .line 629
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr p2, v2

    .line 632
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v3, p2, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 633
    .local v1, "currentLocation":Landroid/graphics/Point;
    invoke-virtual {p0, p0, v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getScreenToWindowLocation(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 634
    .local v0, "afterMovingLocation":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Point;->equals(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 635
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v2, v5, :cond_2

    .line 636
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    .line 641
    :cond_1
    :goto_0
    return-void

    .line 637
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 638
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public updateKeyboardSideSync(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 646
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 647
    .local v4, "screenSize":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 649
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 650
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 652
    .local v5, "windowHeight":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 653
    .local v3, "point":Landroid/graphics/Point;
    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getService()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v6

    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_0

    .line 654
    new-instance v3, Landroid/graphics/Point;

    .end local v3    # "point":Landroid/graphics/Point;
    sub-int v6, p2, v5

    invoke-direct {v3, p1, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 665
    .restart local v3    # "point":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    .line 666
    return-void

    .line 656
    :cond_0
    const/4 v1, 0x0

    .line 657
    .local v1, "candidateViewHeight":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v0

    .line 658
    .local v0, "candidateView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 661
    :cond_1
    new-instance v3, Landroid/graphics/Point;

    .end local v3    # "point":Landroid/graphics/Point;
    sub-int v6, p2, v5

    add-int/2addr v6, v1

    invoke-direct {v3, p1, v6}, Landroid/graphics/Point;-><init>(II)V

    .restart local v3    # "point":Landroid/graphics/Point;
    goto :goto_0
.end method

.method public updatePopupKeyboardView()V
    .locals 8

    .prologue
    .line 507
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v1, v2

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v1, v2

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 511
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 512
    .local v7, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 513
    .local v6, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    const-string v0, "floating_h_location_y"

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 518
    :goto_0
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 520
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 525
    .end local v6    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 516
    .restart local v6    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-string v0, "floating_location_y"

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public updateSplitLeftWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 1215
    iput p1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    .line 1216
    return-void
.end method

.method public updateSplitRightWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 1208
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    if-eq v0, p1, :cond_0

    .line 1209
    iput p1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    .line 1210
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initSplitRightX()V

    .line 1212
    :cond_0
    return-void
.end method
