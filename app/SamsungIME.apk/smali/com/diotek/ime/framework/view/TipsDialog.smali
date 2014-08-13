.class public Lcom/diotek/ime/framework/view/TipsDialog;
.super Ljava/lang/Object;
.source "TipsDialog.java"


# static fields
.field public static final LANGUAGE_GUIDE_POPUP:I = 0x64

.field private static mDiscoverability:Landroid/widget/PopupWindow;

.field private static sInstance:Lcom/diotek/ime/framework/view/TipsDialog;


# instance fields
.field context:Landroid/content/Context;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field protected mCurrentInputMethod:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsCheckDontShowEmptyShortcutsGuide:Z

.field private mIsCheckDontShowGestureGuide:Z

.field private mIsCheckDontShowOneHandedGuide:Z

.field private mIsCheckDontShowPenDetectionGuide:Z

.field private mIsCheckDontShowPinchZoomGuide:Z

.field private mIsCheckDontShowTraceGuide:Z

.field private mIsCheckboxStandardData:Z

.field private mIsTipCheckDontShowAllGuide:Z

.field private mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOneHandedAnimationRunnable:Ljava/lang/Runnable;

.field private mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    .line 99
    sput-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 76
    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    .line 77
    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 78
    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 79
    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 80
    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 81
    iput v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 84
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    .line 96
    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 97
    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 120
    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$1;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    .line 278
    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$4;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 105
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 106
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 107
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 109
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1, "x1"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    return p1
.end method

.method static synthetic access$1200()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z

    return v0
.end method

.method static synthetic access$402(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z

    return p1
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    return v0
.end method

.method static synthetic access$502(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    return p1
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    return v0
.end method

.method static synthetic access$602(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    return p1
.end method

.method static synthetic access$700(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    return v0
.end method

.method static synthetic access$702(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    return p1
.end method

.method static synthetic access$800(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    return v0
.end method

.method static synthetic access$802(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    return p1
.end method

.method static synthetic access$900(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    return v0
.end method

.method static synthetic access$902(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    return p1
.end method

.method public static getHeight(Landroid/content/Context;Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textSize"    # I
    .param p3, "deviceWidth"    # I
    .param p4, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    const v9, 0x7f090026

    const/4 v10, 0x0

    .line 2930
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2931
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 2932
    .local v2, "left":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 2933
    .local v4, "right":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 2934
    .local v6, "top":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090027

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    .line 2935
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    .line 2936
    .local v3, "popupWidth":I
    invoke-virtual {v5, v2, v6, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2937
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 2938
    invoke-virtual {v5, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2939
    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2940
    int-to-float v8, p2

    invoke-virtual {v5, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2941
    const/high16 v8, -0x80000000

    invoke-static {p3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 2942
    .local v7, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2943
    .local v1, "heightMeasureSpec":I
    invoke-virtual {v5, v7, v1}, Landroid/view/View;->measure(II)V

    .line 2944
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    return v8
.end method

.method public static getInstance()Lcom/diotek/ime/framework/view/TipsDialog;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {v0}, Lcom/diotek/ime/framework/view/TipsDialog;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    .line 118
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    return-object v0
.end method

.method public static getInstancePopup()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 2962
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 2963
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    .line 2966
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private isAvailableShowXt9_9RemoveDialog(Ljava/lang/String;)Z
    .locals 16
    .param p1, "targetStr"    # Ljava/lang/String;

    .prologue
    .line 2279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2280
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v4, 0x0

    .line 2282
    .local v4, "longPrevText":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2283
    .local v3, "longNextText":Ljava/lang/String;
    const-string v12, ""

    .line 2284
    .local v12, "shortPrevText":Ljava/lang/String;
    const-string v11, ""

    .line 2285
    .local v11, "shortNextText":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2286
    .local v13, "shortText":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "prevIndexOfSpace":I
    const/4 v9, 0x0

    .local v9, "prevIndexOfEnter":I
    const/4 v8, 0x0

    .line 2287
    .local v8, "prevIndexOfDevider":I
    const/4 v7, 0x0

    .local v7, "nextIndexOfSpace":I
    const/4 v6, 0x0

    .local v6, "nextIndexOfEnter":I
    const/4 v5, 0x0

    .line 2290
    .local v5, "nextIndexOfDevider":I
    if-eqz v2, :cond_3

    .line 2291
    const/16 v14, 0x40

    const/4 v15, 0x0

    invoke-interface {v2, v14, v15}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "longPrevText":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 2292
    .restart local v4    # "longPrevText":Ljava/lang/String;
    const/16 v14, 0x40

    const/4 v15, 0x0

    invoke-interface {v2, v14, v15}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "longNextText":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 2298
    .restart local v3    # "longNextText":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    .line 2299
    const/16 v14, 0x20

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 2300
    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 2301
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2302
    const/4 v14, -0x1

    if-ne v10, v14, :cond_4

    const/4 v14, -0x1

    if-ne v9, v14, :cond_4

    .line 2303
    move-object v12, v4

    .line 2307
    :goto_1
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 2309
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v1, v14, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_0

    .line 2310
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-eq v14, v15, :cond_5

    .line 2312
    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2319
    .end local v1    # "i":I
    :cond_0
    if-eqz v3, :cond_1

    .line 2320
    const/16 v14, 0x20

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 2321
    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 2322
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2323
    const/4 v14, -0x1

    if-ne v7, v14, :cond_6

    const/4 v14, -0x1

    if-ne v6, v14, :cond_6

    .line 2324
    move-object v11, v3

    .line 2328
    :goto_3
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 2329
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 2330
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v1, v14, :cond_1

    .line 2331
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-eq v14, v15, :cond_7

    .line 2333
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2340
    .end local v1    # "i":I
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2341
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x40

    if-le v14, v15, :cond_2

    .line 2342
    const/16 v14, 0x40

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 2345
    :cond_2
    if-eqz v2, :cond_8

    if-eqz v13, :cond_8

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8

    .line 2346
    const/4 v14, 0x0

    invoke-interface {v2, v14}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .end local v13    # "shortText":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 2347
    .restart local v13    # "shortText":Ljava/lang/String;
    if-eqz v13, :cond_8

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8

    .line 2348
    const/4 v14, 0x0

    .line 2355
    :goto_5
    return v14

    .line 2294
    :cond_3
    const-string v4, ""

    .line 2295
    const-string v3, ""

    goto/16 :goto_0

    .line 2305
    :cond_4
    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2309
    .restart local v1    # "i":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 2326
    .end local v1    # "i":I
    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 2330
    .restart local v1    # "i":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2352
    .end local v1    # "i":I
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2353
    const/4 v14, 0x0

    goto :goto_5

    .line 2355
    :cond_9
    const/4 v14, 0x1

    goto :goto_5
.end method


# virtual methods
.method public closeDiscoverability()V
    .locals 1

    .prologue
    .line 2956
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2957
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2959
    :cond_0
    return-void
.end method

.method public dismissAllDialog()V
    .locals 1

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2509
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2511
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2512
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2515
    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 2516
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    .line 2519
    :cond_2
    return-void
.end method

.method protected getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p1, "isLanguageDialog"    # Z

    .prologue
    .line 2970
    if-eqz p1, :cond_1

    .line 2971
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-nez v0, :cond_0

    .line 2972
    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$79;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$79;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2985
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2997
    :goto_0
    return-object v0

    .line 2987
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-nez v0, :cond_2

    .line 2988
    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$80;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$80;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2997
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    goto :goto_0
.end method

.method protected getSelectedLanguageNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 3002
    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    .line 3003
    .local v2, "supportedLanguageList":[Lcom/diotek/ime/framework/common/Language;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 3004
    array-length v3, v2

    new-array v1, v3, [Ljava/lang/String;

    .line 3005
    .local v1, "ret":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 3006
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 3005
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3011
    .end local v0    # "i":I
    .end local v1    # "ret":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "English"

    aput-object v4, v1, v3

    :cond_1
    return-object v1
.end method

.method public isAttentionPopupShowing()Z
    .locals 1

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 3019
    const/4 v0, 0x0

    .line 3021
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public isDiscoverabilityShown()Z
    .locals 1

    .prologue
    .line 2948
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 2949
    const/4 v0, 0x0

    .line 2951
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public showDiscoverability(ILandroid/view/View;Landroid/view/View;)V
    .locals 35
    .param p1, "keycode"    # I
    .param p2, "candidateTextView"    # Landroid/view/View;
    .param p3, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 2669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 2670
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 2671
    check-cast p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p3    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 2680
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    if-nez v31, :cond_3

    .line 2927
    :cond_0
    :goto_1
    return-void

    .line 2672
    .restart local p3    # "mCurrentView":Landroid/view/View;
    :cond_1
    if-nez p3, :cond_2

    .line 2673
    const-string v31, "SamsungIME"

    const-string v32, "[showDiscoverability] this is auto replacement discoverity popup"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2676
    :cond_2
    const-string v31, "SamsungIME"

    const-string v32, "[showDiscoverability] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2683
    .end local p3    # "mCurrentView":Landroid/view/View;
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->getInstancePopup()Landroid/widget/PopupWindow;

    move-result-object v31

    sput-object v31, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    .line 2685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v31

    if-nez v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v31

    if-nez v31, :cond_0

    .line 2686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2687
    .local v9, "discoverResources":Landroid/content/res/Resources;
    const/16 v30, 0x0

    .line 2688
    .local v30, "y_offset":I
    const v31, 0x7f090033

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v8, v0

    .line 2689
    .local v8, "candidateView_height":I
    const v31, 0x7f09000c

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v11, v0

    .line 2690
    .local v11, "discoverability_posy":I
    const v31, 0x7f09000d

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v10, v0

    .line 2691
    .local v10, "discoverability_posx":I
    move/from16 v29, v10

    .line 2692
    .local v29, "x_offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getBackupKeyboardHeight()I

    move-result v31

    add-int v16, v31, v8

    .line 2694
    .local v16, "keyboard_height":I
    const v31, 0x7f09001c

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v12, v0

    .line 2696
    .local v12, "discoverability_width":I
    const/16 v28, 0x0

    .line 2697
    .local v28, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v23

    .line 2698
    .local v23, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 2700
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    const/16 v31, -0x75

    move/from16 v0, p1

    move/from16 v1, v31

    if-ne v0, v1, :cond_11

    .line 2702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v31

    if-eqz v31, :cond_b

    .line 2704
    const v31, 0x7f090029

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    add-int v31, v31, v16

    mul-int/lit8 v32, v8, 0x2

    add-int v11, v31, v32

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    const v32, 0x7f030019

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0d02ec

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const-string v32, " %s "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 2707
    .local v24, "splitMessage":[Ljava/lang/String;
    const v31, 0x7f08000b

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2709
    .local v21, "popupText":Landroid/widget/TextView;
    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$75;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$75;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    .line 2719
    .local v15, "imageGetter":Landroid/text/Html$ImageGetter;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x0

    aget-object v32, v24, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " <img src=\"help_discoverability_handwriting_change_keypad_icon.png\"/> "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x1

    aget-object v32, v24, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v15, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v20

    .line 2720
    .local v20, "message":Landroid/text/Spanned;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2721
    const-string v31, "first_keyboardchange_popup_help_execution"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2768
    .end local v15    # "imageGetter":Landroid/text/Html$ImageGetter;
    .end local v20    # "message":Landroid/text/Spanned;
    .end local v21    # "popupText":Landroid/widget/TextView;
    .end local v24    # "splitMessage":[Ljava/lang/String;
    :goto_2
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2816
    :goto_3
    const v31, 0x7f09001b

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v14, v0

    .line 2817
    .local v14, "height_in_pixels":I
    const v31, 0x7f090028

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v25, v0

    .line 2818
    .local v25, "textSize":I
    if-eqz v28, :cond_4

    .line 2819
    sget-object v31, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2820
    const v31, 0x7f08000b

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 2821
    .local v27, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v32

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v33

    sget-object v34, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v25

    move/from16 v3, v33

    move-object/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/view/TipsDialog;->getHeight(Landroid/content/Context;Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)I

    move-result v14

    .line 2824
    .end local v27    # "tv":Landroid/widget/TextView;
    :cond_4
    const/16 v18, 0x0

    .line 2825
    .local v18, "marginBottom":I
    const/16 v31, 0x64

    move/from16 v0, p1

    move/from16 v1, v31

    if-eq v0, v1, :cond_5

    const/16 v31, -0x75

    move/from16 v0, p1

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 2826
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    .line 2827
    const v31, 0x7f090018

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2833
    :cond_6
    :goto_4
    sget-object v31, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    add-int v32, v14, v18

    invoke-virtual/range {v31 .. v32}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2835
    sget-object v31, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2837
    sget-object v31, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2838
    sget-object v31, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    new-instance v32, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual/range {v31 .. v32}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2840
    const/16 v31, -0x75

    move/from16 v0, p1

    move/from16 v1, v31

    if-ne v0, v1, :cond_1b

    .line 2841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v31

    if-eqz v31, :cond_1a

    .line 2842
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstKeyboardChangeTap(Z)V

    .line 2852
    :cond_7
    :goto_5
    sget-object v31, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    new-instance v32, Lcom/diotek/ime/framework/view/TipsDialog$76;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/TipsDialog$76;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;ILandroid/view/View;)V

    invoke-virtual/range {v31 .. v32}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 2873
    if-eqz v28, :cond_8

    .line 2874
    new-instance v31, Lcom/diotek/ime/framework/view/TipsDialog$77;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/view/TipsDialog$77;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2897
    const v31, 0x7f08000b

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 2898
    .restart local v27    # "tv":Landroid/widget/TextView;
    new-instance v31, Lcom/diotek/ime/framework/view/TipsDialog$78;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$78;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2908
    .end local v27    # "tv":Landroid/widget/TextView;
    :cond_8
    add-int v31, v11, v16

    mul-int/lit8 v32, v8, 0x2

    add-int v6, v31, v32

    .line 2909
    .local v6, "baseValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isFullscreenMode()Z

    move-result v31

    if-eqz v31, :cond_1d

    .line 2910
    const/16 v19, 0x0

    .line 2911
    .local v19, "margin_bottom_adjust_fullscreen":I
    const/16 v31, 0x20

    move/from16 v0, p1

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v31

    if-nez v31, :cond_a

    :cond_9
    if-eqz p2, :cond_1c

    .line 2912
    :cond_a
    const v31, 0x7f09001a

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v19, v0

    .line 2916
    :goto_6
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v31

    sub-int v31, v6, v31

    add-int v30, v31, v19

    .line 2924
    .end local v19    # "margin_bottom_adjust_fullscreen":I
    :goto_7
    sget-object v31, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 2724
    .end local v6    # "baseValue":I
    .end local v14    # "height_in_pixels":I
    .end local v18    # "marginBottom":I
    .end local v25    # "textSize":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    const v32, 0x7f03002a

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 2725
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeatureSipAddCommaKeyAsDefault"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 2726
    const v31, 0x7f08000b

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2727
    .restart local v21    # "popupText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0d02e9

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2728
    const-string v31, "ATT"

    const-string v32, "ro.csc.sales_code"

    invoke-static/range {v32 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 2729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0d02ea

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2732
    .end local v21    # "popupText":Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 2734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 2735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f02027f

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2740
    .local v5, "Discoverability_bg":Landroid/graphics/drawable/Drawable;
    :goto_8
    const v31, 0x7f08000b

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 2741
    .restart local v27    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090026

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2743
    .local v17, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090026

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2744
    .local v22, "right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090025

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v26, v0

    .line 2745
    .local v26, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090027

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v7, v0

    .line 2746
    .local v7, "bottom":I
    move-object/from16 v0, v27

    move/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2748
    const v31, 0x7f090015

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v11, v0

    .line 2749
    const v31, 0x7f090016

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v10, v0

    .line 2750
    move/from16 v29, v10

    .line 2766
    .end local v5    # "Discoverability_bg":Landroid/graphics/drawable/Drawable;
    .end local v7    # "bottom":I
    .end local v17    # "left":I
    .end local v22    # "right":I
    .end local v26    # "top":I
    .end local v27    # "tv":Landroid/widget/TextView;
    :goto_9
    const-string v31, "first_mmkey_popup_help_execution"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 2737
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f02027e

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "Discoverability_bg":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_8

    .line 2752
    .end local v5    # "Discoverability_bg":Landroid/graphics/drawable/Drawable;
    :cond_e
    const v31, 0x7f09000e

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v11, v0

    .line 2753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v31

    if-eqz v31, :cond_f

    .line 2754
    const v31, 0x7f090011

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v10, v0

    .line 2763
    :goto_a
    move/from16 v29, v10

    goto :goto_9

    .line 2756
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v31

    if-eqz v31, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_10

    .line 2757
    const v31, 0x7f090010

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v10, v0

    goto :goto_a

    .line 2759
    :cond_10
    const v31, 0x7f09000f

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v10, v0

    goto :goto_a

    .line 2769
    :cond_11
    const/16 v31, 0x20

    move/from16 v0, p1

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v31

    if-nez v31, :cond_13

    :cond_12
    if-eqz p2, :cond_14

    :cond_13
    const-string v31, "first_auto_replacement_tap_execution"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 2770
    const v31, 0x7f09000c

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v11, v0

    .line 2771
    const v31, 0x7f09000d

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v10, v0

    .line 2772
    move/from16 v29, v10

    .line 2774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    const v32, 0x7f030003

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 2775
    const-string v31, "first_auto_replacement_tap_execution"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2776
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 2777
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v31

    if-nez v31, :cond_0

    const/16 v31, 0x64

    move/from16 v0, p1

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    const-string v31, "first_languagechange_popup_help_execution"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 2778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    const v32, 0x7f030027

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 2779
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_16

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v31

    if-eqz v31, :cond_15

    .line 2782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f020282

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2786
    .restart local v5    # "Discoverability_bg":Landroid/graphics/drawable/Drawable;
    :goto_b
    const v31, 0x7f08000b

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 2787
    .restart local v27    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090026

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2789
    .restart local v17    # "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090026

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2790
    .restart local v22    # "right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090025

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v26, v0

    .line 2791
    .restart local v26    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090027

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v7, v0

    .line 2792
    .restart local v7    # "bottom":I
    move-object/from16 v0, v27

    move/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2794
    const v31, 0x7f090015

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v11, v0

    .line 2795
    const v31, 0x7f090016

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v10, v0

    .line 2796
    move/from16 v29, v10

    .line 2810
    .end local v5    # "Discoverability_bg":Landroid/graphics/drawable/Drawable;
    .end local v7    # "bottom":I
    .end local v17    # "left":I
    .end local v22    # "right":I
    .end local v26    # "top":I
    .end local v27    # "tv":Landroid/widget/TextView;
    :goto_c
    const-string v31, "first_languagechange_popup_help_execution"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2811
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 2784
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f020281

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "Discoverability_bg":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_b

    .line 2798
    .end local v5    # "Discoverability_bg":Landroid/graphics/drawable/Drawable;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v31

    if-eqz v31, :cond_17

    .line 2799
    const v31, 0x7f090029

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    add-int v31, v31, v16

    mul-int/lit8 v32, v8, 0x3

    add-int v11, v31, v32

    .line 2803
    :goto_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeatureSipAddCommaKeyAsDefault"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_18

    .line 2804
    const v31, 0x7f090014

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v10, v0

    .line 2808
    :goto_e
    move/from16 v29, v10

    goto :goto_c

    .line 2801
    :cond_17
    const v31, 0x7f090012

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v11, v0

    goto :goto_d

    .line 2806
    :cond_18
    const v31, 0x7f090013

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v10, v0

    goto :goto_e

    .line 2829
    .restart local v14    # "height_in_pixels":I
    .restart local v18    # "marginBottom":I
    .restart local v25    # "textSize":I
    :cond_19
    const v31, 0x7f090017

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_4

    .line 2844
    :cond_1a
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setMMKeyFirstTap(Z)V

    goto/16 :goto_5

    .line 2846
    :cond_1b
    const/16 v31, 0x20

    move/from16 v0, p1

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isFirstLanguageChangeTap()Z

    move-result v31

    if-eqz v31, :cond_7

    .line 2848
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstLanguageChangeTap(Z)V

    goto/16 :goto_5

    .line 2914
    .restart local v6    # "baseValue":I
    .restart local v19    # "margin_bottom_adjust_fullscreen":I
    :cond_1c
    const v31, 0x7f090019

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_6

    .line 2918
    .end local v19    # "margin_bottom_adjust_fullscreen":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v31

    if-eqz v31, :cond_1e

    .line 2919
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v31

    sub-int v30, v6, v31

    goto/16 :goto_7

    .line 2921
    :cond_1e
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v31

    sub-int v30, v6, v31

    goto/16 :goto_7
.end method

.method public showEmptyShortcutsGuideDialog(Landroid/view/View;)V
    .locals 19
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 2361
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 2362
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 2368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 2370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 2504
    :cond_0
    :goto_0
    return-void

    .line 2364
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v16, "SamsungIME"

    const-string v17, "[showEmptyShortcutsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2371
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    .line 2372
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideLayoutRscId()I

    move-result v5

    .line 2373
    .local v5, "EmptyShortcutsGuideLayoutRscId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideCheckBoxRscId()I

    move-result v3

    .line 2374
    .local v3, "EmptyShortcutsGuideCheckBoxRscId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideDialogTitle()Ljava/lang/String;

    move-result-object v4

    .line 2375
    .local v4, "EmptyShortcutsGuideDialogTitle":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 2379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 2381
    .local v13, "sp":Landroid/content/SharedPreferences;
    const-string v16, "first_empty_shortcuts_guide_execution"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_6

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    .line 2382
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v16, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2384
    .local v2, "Dialog":Landroid/app/AlertDialog$Builder;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 2390
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 2392
    .local v10, "guideLayout":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideDialogContent()Ljava/lang/String;

    move-result-object v11

    .line 2394
    .local v11, "guideMessage":Ljava/lang/String;
    const v16, 0x7f08002e

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2395
    .local v8, "dlgTextView":Landroid/widget/TextView;
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2397
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2398
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2399
    const v16, 0x104000a

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$68;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$68;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2437
    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 2438
    .local v7, "chkbox":Landroid/widget/CheckBox;
    if-eqz v7, :cond_4

    .line 2439
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$69;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/diotek/ime/framework/view/TipsDialog$69;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2453
    :cond_4
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$70;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$70;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2468
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$71;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$71;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 2478
    .local v14, "win":Landroid/view/Window;
    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 2479
    .local v15, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 2481
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 2482
    .local v6, "binder":Landroid/os/IBinder;
    if-eqz v6, :cond_0

    .line 2485
    iput-object v6, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2493
    :goto_2
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2494
    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2496
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2497
    :catch_0
    move-exception v9

    .line 2498
    .local v9, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v16, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_0

    .line 2499
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 2381
    .end local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .end local v6    # "binder":Landroid/os/IBinder;
    .end local v7    # "chkbox":Landroid/widget/CheckBox;
    .end local v8    # "dlgTextView":Landroid/widget/TextView;
    .end local v9    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v10    # "guideLayout":Landroid/view/View;
    .end local v11    # "guideMessage":Ljava/lang/String;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "win":Landroid/view/Window;
    .end local v15    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 2487
    .restart local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .restart local v7    # "chkbox":Landroid/widget/CheckBox;
    .restart local v8    # "dlgTextView":Landroid/widget/TextView;
    .restart local v10    # "guideLayout":Landroid/view/View;
    .restart local v11    # "guideMessage":Ljava/lang/String;
    .restart local v12    # "inflater":Landroid/view/LayoutInflater;
    .restart local v14    # "win":Landroid/view/Window;
    .restart local v15    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 2488
    .restart local v6    # "binder":Landroid/os/IBinder;
    if-eqz v6, :cond_0

    .line 2491
    iput-object v6, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public showGestureGuideDialog(Landroid/view/View;)V
    .locals 17
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 288
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_2

    .line 289
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_1

    .line 297
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getGestureGuideLayoutRscId()I

    move-result v7

    .line 298
    .local v7, "gestureGuideLayoutRscId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getGestureGuideCheckBoxRscId()I

    move-result v5

    .line 299
    .local v5, "gestureGuideCheckBoxRscId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getGestureGuideDialogTitle()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "gestureGuideDialogTitle":Ljava/lang/String;
    if-eqz v7, :cond_1

    if-eqz v5, :cond_1

    if-nez v6, :cond_3

    .line 404
    .end local v5    # "gestureGuideCheckBoxRscId":I
    .end local v6    # "gestureGuideDialogTitle":Ljava/lang/String;
    .end local v7    # "gestureGuideLayoutRscId":I
    :cond_1
    :goto_0
    return-void

    .line 291
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    const-string v14, "SamsungIME"

    const-string v15, "[showGestureGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    .end local p1    # "mCurrentView":Landroid/view/View;
    .restart local v5    # "gestureGuideCheckBoxRscId":I
    .restart local v6    # "gestureGuideDialogTitle":Ljava/lang/String;
    .restart local v7    # "gestureGuideLayoutRscId":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    .line 307
    .local v10, "sp":Landroid/content/SharedPreferences;
    const-string v14, "fist_hwr_execution"

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_7

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z

    .line 310
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    .local v2, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 316
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x0

    invoke-virtual {v9, v7, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 317
    .local v8, "guideLayout":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 319
    const v14, 0x1020016

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 321
    .local v11, "titleID":Landroid/view/View;
    if-nez v11, :cond_4

    .line 322
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 325
    :cond_4
    const v14, 0x104000a

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$5;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    const/high16 v14, 0x1040000

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$6;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 352
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$7;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->adjustGestureGuideText(Landroid/view/View;)V

    .line 367
    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 368
    .local v3, "chkbox":Landroid/widget/CheckBox;
    if-eqz v3, :cond_5

    .line 369
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$8;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v3, v14}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 378
    :cond_5
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 381
    .local v12, "win":Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 382
    .local v13, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    .line 383
    const/high16 v14, 0x3f000000

    invoke-virtual {v12, v14}, Landroid/view/Window;->setDimAmount(F)V

    .line 384
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_8

    .line 386
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    iput-object v14, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 390
    :goto_2
    iget-object v14, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v14, :cond_1

    .line 394
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 395
    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 397
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 398
    :catch_0
    move-exception v4

    .line 399
    .local v4, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_1

    .line 400
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 307
    .end local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .end local v3    # "chkbox":Landroid/widget/CheckBox;
    .end local v4    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v8    # "guideLayout":Landroid/view/View;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "titleID":Landroid/view/View;
    .end local v12    # "win":Landroid/view/Window;
    .end local v13    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 388
    .restart local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "chkbox":Landroid/widget/CheckBox;
    .restart local v8    # "guideLayout":Landroid/view/View;
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v11    # "titleID":Landroid/view/View;
    .restart local v12    # "win":Landroid/view/Window;
    .restart local v13    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    iput-object v14, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public showHalfFullWidthSwitchDialog(Landroid/view/View;)V
    .locals 13
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 2585
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2586
    .local v2, "context":Landroid/content/Context;
    instance-of v10, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_1

    .line 2587
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 2593
    if-nez v2, :cond_2

    .line 2665
    :cond_0
    :goto_0
    return-void

    .line 2589
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v10, "SamsungIME"

    const-string v11, "[showHalfFullWidthSwitchDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2596
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    .line 2597
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 2600
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "IS_POPUP_SHOW"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 2601
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2602
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    iput v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 2604
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v10, Landroid/view/ContextThemeWrapper;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v11

    invoke-direct {v10, v2, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2606
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2608
    const v10, 0x7f0d01d1

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2611
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d02d1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2612
    .local v5, "itemHalfWidth":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d02d2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2614
    .local v4, "itemFullWidth":Ljava/lang/CharSequence;
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    const/4 v10, 0x1

    aput-object v4, v6, v10

    .line 2617
    .local v6, "itemTitles":[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isFullWidthMode()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x0

    :goto_1
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$74;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$74;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2635
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d02d0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2637
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 2638
    .local v7, "popup":Landroid/app/AlertDialog;
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2639
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 2640
    .local v8, "win":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 2641
    .local v9, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_6

    .line 2643
    :cond_3
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2644
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 2645
    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2651
    :goto_2
    const/16 v10, 0x3eb

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2652
    const/4 v10, -0x2

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2653
    const/high16 v10, 0x3f000000

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2654
    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2655
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    .line 2657
    :try_start_0
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2663
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v7}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 2617
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v7    # "popup":Landroid/app/AlertDialog;
    .end local v8    # "win":Landroid/view/Window;
    .end local v9    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    .line 2647
    .restart local v7    # "popup":Landroid/app/AlertDialog;
    .restart local v8    # "win":Landroid/view/Window;
    .restart local v9    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2648
    .restart local v1    # "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 2649
    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    .line 2658
    :catch_0
    move-exception v3

    .line 2659
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v10, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 2660
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showLanguageSelectDialog(Landroid/view/View;)V
    .locals 9
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 2522
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 2523
    instance-of v5, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v5, :cond_2

    .line 2524
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 2530
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "IS_POPUP_SHOW"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 2532
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2534
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2535
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/diotek/ime/framework/view/TipsDialog$72;

    invoke-direct {v6, p0}, Lcom/diotek/ime/framework/view/TipsDialog$72;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2542
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->getSelectedLanguageNames()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getLanguageIndexOfSupportedThings()I

    move-result v6

    new-instance v7, Lcom/diotek/ime/framework/view/TipsDialog$73;

    invoke-direct {v7, p0}, Lcom/diotek/ime/framework/view/TipsDialog$73;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2552
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getLanguageSelectDialogTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2553
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2554
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2555
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2558
    .local v3, "win":Landroid/view/Window;
    const/4 v2, 0x2

    .line 2560
    .local v2, "flags":I
    invoke-virtual {v3, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2561
    const/high16 v5, 0x3f000000

    invoke-virtual {v3, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 2564
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2565
    .local v4, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 2567
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2571
    :goto_0
    const/16 v5, 0x3eb

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2576
    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2577
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setLangPopupShown(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2583
    .end local v0    # "Dialog":Landroid/app/AlertDialog$Builder;
    .end local v2    # "flags":I
    .end local v3    # "win":Landroid/view/Window;
    .end local v4    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 2526
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    const-string v5, "SamsungIME"

    const-string v6, "[showLanguageSelectDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2569
    .end local p1    # "mCurrentView":Landroid/view/View;
    .restart local v0    # "Dialog":Landroid/app/AlertDialog$Builder;
    .restart local v2    # "flags":I
    .restart local v3    # "win":Landroid/view/Window;
    .restart local v4    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_0

    .line 2578
    :catch_0
    move-exception v1

    .line 2579
    .local v1, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 2580
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public showOneHandedGuideDialog(Landroid/view/View;)V
    .locals 20
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 680
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 681
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 683
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v16, "SamsungIME"

    const-string v17, "[showOneHandedGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v16

    if-nez v16, :cond_0

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    .line 693
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideLayoutRscId()I

    move-result v12

    .line 694
    .local v12, "oneHandedGuideLayoutRscId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideCheckBoxRscId()I

    move-result v9

    .line 695
    .local v9, "oneHandedGuideCheckBoxRscId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandGuideAnimationDrawbleRscId()I

    move-result v11

    .line 696
    .local v11, "oneHandedGuideImageViewRsrcId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideDialogTitle()Ljava/lang/String;

    move-result-object v10

    .line 697
    .local v10, "oneHandedGuideDialogTitle":Ljava/lang/String;
    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 703
    .local v13, "sp":Landroid/content/SharedPreferences;
    const-string v16, "first_one_handed_execution"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_7

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    .line 704
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v16, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 706
    .local v2, "Dialog":Landroid/app/AlertDialog$Builder;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 710
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 711
    .local v6, "guideLayout":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 713
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 714
    .local v7, "imgMoving":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    .line 716
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 718
    const v16, 0x104000a

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$15;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$15;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 739
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 740
    .local v4, "chkbox":Landroid/widget/CheckBox;
    if-eqz v4, :cond_4

    .line 741
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$16;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/view/TipsDialog$16;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    :cond_4
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$17;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$17;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 762
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 765
    .local v14, "win":Landroid/view/Window;
    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 766
    .local v15, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->addFlags(I)V

    .line 767
    const/high16 v16, 0x3f000000

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 770
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 771
    .local v3, "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 773
    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 780
    :goto_2
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 781
    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 783
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x1f4

    invoke-virtual/range {v16 .. v19}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 703
    .end local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "chkbox":Landroid/widget/CheckBox;
    .end local v6    # "guideLayout":Landroid/view/View;
    .end local v7    # "imgMoving":Landroid/widget/ImageView;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "win":Landroid/view/Window;
    .end local v15    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 775
    .restart local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "chkbox":Landroid/widget/CheckBox;
    .restart local v6    # "guideLayout":Landroid/view/View;
    .restart local v7    # "imgMoving":Landroid/widget/ImageView;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v14    # "win":Landroid/view/Window;
    .restart local v15    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 776
    .restart local v3    # "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 778
    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    .line 784
    :catch_0
    move-exception v5

    .line 785
    .local v5, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v16, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_6

    .line 786
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showPenDetectionGuideDialog(Landroid/view/View;)V
    .locals 14
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 796
    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    .line 797
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 804
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v11, :cond_2

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 799
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showPenDetectionGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 806
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-nez v11, :cond_0

    .line 807
    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideLayoutRscId()I

    move-result v8

    .line 808
    .local v8, "penDetectionGuideLayoutRscId":I
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideCheckBoxRscId()I

    move-result v6

    .line 809
    .local v6, "penDetectionGuideCheckBoxRscId":I
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideDialogTitle()Ljava/lang/String;

    move-result-object v7

    .line 810
    .local v7, "penDetectionGuideDialogTitle":Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 814
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 815
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iget-object v13, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 817
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 819
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 821
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 822
    .local v4, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 823
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 825
    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$18;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$18;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 853
    const v11, 0x7f0d0117

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$19;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$19;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 874
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 875
    .local v2, "chkbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_6

    .line 876
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_PENDETECTIONGUIDE_CHECKBOX_CHECKED"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 877
    :cond_4
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 878
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    .line 880
    :cond_5
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$20;

    invoke-direct {v11, p0, v2}, Lcom/diotek/ime/framework/view/TipsDialog$20;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    :cond_6
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$21;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$21;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 910
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 911
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 913
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 914
    .local v9, "win":Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 915
    .local v10, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_7

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_8

    .line 917
    :cond_7
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 918
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 920
    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 927
    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 928
    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 931
    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 932
    :catch_0
    move-exception v3

    .line 933
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 934
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 922
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_8
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 923
    .restart local v1    # "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 925
    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showPinchZoomGuideDialog(Landroid/view/View;)V
    .locals 21
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 153
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 154
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v17, "SamsungIME"

    const-string v18, "[showPinchZoomGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->isShowing()Z

    move-result v17

    if-nez v17, :cond_0

    .line 164
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideLayoutRscId()I

    move-result v12

    .line 165
    .local v12, "pinchZoomGuideLayoutRscId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideDialogTitle()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "gestureGuideDialogTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideAnimationDrawbleRscId()I

    move-result v11

    .line 167
    .local v11, "pinchZoomGuideAnimationDrawbleRscId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getMovingGuideAnimationDrawbleRscId()I

    move-result v10

    .line 168
    .local v10, "movingGuideAnimationDrawbleRscId":I
    if-eqz v12, :cond_0

    if-eqz v5, :cond_0

    if-eqz v11, :cond_0

    if-eqz v10, :cond_0

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "IS_POPUP_SHOW"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 175
    .local v13, "sp":Landroid/content/SharedPreferences;
    const-string v17, "first_pinch_zoom_execution"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_7

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    .line 176
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v17, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v2, "Dialog":Landroid/app/AlertDialog$Builder;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 182
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 183
    .local v6, "guideLayout":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 185
    const v17, 0x1020016

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 187
    .local v14, "titleID":Landroid/view/View;
    if-nez v14, :cond_4

    .line 188
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 191
    :cond_4
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 192
    .local v8, "imgPinchZoom":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    .line 194
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 195
    .local v7, "imgMoving":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    .line 197
    const v17, 0x104000a

    new-instance v18, Lcom/diotek/ime/framework/view/TipsDialog$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$2;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$3;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 250
    .local v15, "win":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 251
    .local v16, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 253
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 254
    .local v3, "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 256
    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 264
    :goto_2
    const/16 v17, 0x3eb

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 265
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 267
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 175
    .end local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v6    # "guideLayout":Landroid/view/View;
    .end local v7    # "imgMoving":Landroid/widget/ImageView;
    .end local v8    # "imgPinchZoom":Landroid/widget/ImageView;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "titleID":Landroid/view/View;
    .end local v15    # "win":Landroid/view/Window;
    .end local v16    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 258
    .restart local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .restart local v6    # "guideLayout":Landroid/view/View;
    .restart local v7    # "imgMoving":Landroid/widget/ImageView;
    .restart local v8    # "imgPinchZoom":Landroid/widget/ImageView;
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v14    # "titleID":Landroid/view/View;
    .restart local v15    # "win":Landroid/view/Window;
    .restart local v16    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 259
    .restart local v3    # "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 261
    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    .line 268
    :catch_0
    move-exception v4

    .line 269
    .local v4, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v17, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v17, :cond_6

    .line 270
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showSwiftkeyGuideDialog(Landroid/view/View;)V
    .locals 14
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x1

    .line 530
    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    .line 531
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 538
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    iput v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 539
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_2

    .line 540
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 549
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 533
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showSwiftkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 555
    .local v3, "context":Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 556
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v11

    if-nez v11, :cond_0

    .line 560
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideLayoutRscId()I

    move-result v8

    .line 561
    .local v8, "swiftkeyGuideLayoutRscId":I
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v7

    .line 562
    .local v7, "swiftkeyGuideDialogTitle":Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 566
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 567
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v12

    invoke-direct {v11, v3, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 569
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 571
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 573
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const/4 v11, 0x0

    invoke-virtual {v6, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 574
    .local v5, "guideLayout":Landroid/view/View;
    const v11, 0x7f08005c

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 575
    .local v2, "chkbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_3

    .line 576
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    invoke-virtual {v2, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 578
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$12;

    invoke-direct {v11, p0, v2}, Lcom/diotek/ime/framework/view/TipsDialog$12;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    :cond_3
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 588
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 590
    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$13;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$13;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 636
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$14;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$14;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 648
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    .line 649
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 650
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 651
    .local v9, "win":Landroid/view/Window;
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/view/Window;->addFlags(I)V

    .line 652
    const/high16 v11, 0x3f000000

    invoke-virtual {v9, v11}, Landroid/view/Window;->setDimAmount(F)V

    .line 653
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 654
    .local v10, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_4

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    .line 656
    :cond_4
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 657
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 659
    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 666
    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 667
    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 669
    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 661
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_6
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 662
    .restart local v1    # "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 664
    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    .line 670
    :catch_0
    move-exception v4

    .line 671
    .local v4, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_5

    .line 672
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showSwiftkeyRemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V
    .locals 12
    .param p1, "term"    # Ljava/lang/String;
    .param p2, "idx"    # I
    .param p3, "mCurrentView"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2112
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2113
    .local v2, "context":Landroid/content/Context;
    instance-of v8, p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v8, :cond_1

    .line 2114
    check-cast p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p3    # "mCurrentView":Landroid/view/View;
    iput-object p3, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 2120
    if-nez v2, :cond_2

    .line 2192
    :cond_0
    :goto_0
    return-void

    .line 2116
    .restart local p3    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v8, "SamsungIME"

    const-string v9, "[showSwiftkeyRemoveTermDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2121
    .end local p3    # "mCurrentView":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    .line 2122
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 2123
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    iput v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 2125
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2126
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    .line 2127
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    .line 2128
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    .line 2131
    :cond_3
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyRemoveTermDialogTitle()Ljava/lang/String;

    move-result-object v5

    .line 2133
    .local v5, "swiftkeyRemoveTermDialogTitle":Ljava/lang/String;
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "IS_POPUP_SHOW"

    invoke-interface {v8, v9, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 2135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v9

    invoke-direct {v8, v2, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2137
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2138
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyRemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2139
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2142
    const v8, 0x104000a

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$64;

    invoke-direct {v9, p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog$64;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;I)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2157
    const/high16 v8, 0x1040000

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$65;

    invoke-direct {v9, p0}, Lcom/diotek/ime/framework/view/TipsDialog$65;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 2166
    .local v4, "popup":Landroid/app/AlertDialog;
    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2167
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 2168
    .local v6, "win":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 2169
    .local v7, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    .line 2171
    :cond_4
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2172
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 2173
    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2179
    :goto_1
    const/16 v8, 0x3eb

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2180
    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2181
    const/high16 v8, 0x3f000000

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2182
    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2183
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/view/Window;->addFlags(I)V

    .line 2185
    :try_start_0
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2191
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v4}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 2175
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_6
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2176
    .restart local v1    # "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 2177
    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    .line 2186
    :catch_0
    move-exception v3

    .line 2187
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 2188
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showTipsCMkeyGuideDialog(Landroid/view/View;)V
    .locals 17
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 1603
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    .line 1604
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 1610
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1606
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsCMkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1612
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1613
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideLayoutRscId()I

    move-result v4

    .line 1614
    .local v4, "CMkeyGuideLayoutRscId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideCheckBoxRscId()I

    move-result v2

    .line 1615
    .local v2, "CMkeyGuideCheckBoxRscId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v3

    .line 1616
    .local v3, "CMkeyGuideDialogTitle":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 1623
    new-instance v5, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1625
    .local v5, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 1629
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x0

    invoke-virtual {v10, v4, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1630
    .local v9, "guideLayout":Landroid/view/View;
    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1632
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1634
    const v14, 0x7f0800cf

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1635
    .local v11, "textview":Landroid/widget/TextView;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "2. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1637
    const v14, 0x7f0d014f

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$43;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$43;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1653
    const v14, 0x7f0d0241

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$44;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$44;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1670
    const v14, 0x7f0d014e

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$45;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$45;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1688
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 1689
    .local v7, "chkbox":Landroid/widget/CheckBox;
    if-eqz v7, :cond_5

    .line 1690
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    .line 1691
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1693
    :cond_4
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$46;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7}, Lcom/diotek/ime/framework/view/TipsDialog$46;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1701
    :cond_5
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$47;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$47;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1723
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1724
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$48;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$48;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1733
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$49;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$49;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1746
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 1747
    .local v12, "win":Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 1748
    .local v13, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7

    .line 1750
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1751
    .local v6, "binder":Landroid/os/IBinder;
    if-eqz v6, :cond_0

    .line 1752
    iput-object v6, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1758
    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1759
    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1760
    const/high16 v14, 0x3f000000

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1761
    invoke-virtual {v12, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1762
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    .line 1764
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1765
    :catch_0
    move-exception v8

    .line 1766
    .local v8, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 1767
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1754
    .end local v6    # "binder":Landroid/os/IBinder;
    .end local v8    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1755
    .restart local v6    # "binder":Landroid/os/IBinder;
    if-eqz v6, :cond_0

    .line 1756
    iput-object v6, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsDialogByIndex(ILandroid/view/View;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 133
    packed-switch p1, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsTraceGuideDialog(Landroid/view/View;)V

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsCMkeyGuideDialog(Landroid/view/View;)V

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsSwiftKeyLearnsGuideDialog(Landroid/view/View;)V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsRemoveWordsGuideDialog(Landroid/view/View;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showTipsHwrInstallGuideDialog(Landroid/view/View;)V
    .locals 14
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 1212
    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    .line 1213
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 1219
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    iput v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 1220
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_2

    .line 1221
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1222
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, -0x2

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    .line 1223
    .local v8, "settingsButton":Landroid/widget/Button;
    if-eqz v8, :cond_2

    const-string v11, ""

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1301
    .end local v8    # "settingsButton":Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 1215
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showTipsHwrInstallGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1228
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1229
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 1230
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1234
    const v6, 0x7f030032

    .line 1235
    .local v6, "hwrInstallGuideLayoutRscId":I
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v5

    .line 1236
    .local v5, "hwrInstallGuideDialogTitle":Ljava/lang/String;
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 1240
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v12

    invoke-direct {v11, v2, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1243
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1245
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1247
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1248
    .local v4, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1249
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1250
    const v11, 0x7f0d01d1

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1251
    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$30;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$30;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1261
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$31;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$31;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1272
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    .line 1273
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1274
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 1275
    .local v9, "win":Landroid/view/Window;
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/view/Window;->addFlags(I)V

    .line 1276
    const/high16 v11, 0x3f000000

    invoke-virtual {v9, v11}, Landroid/view/Window;->setDimAmount(F)V

    .line 1277
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 1278
    .local v10, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_3

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_5

    .line 1280
    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1281
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1283
    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1290
    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1291
    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1293
    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    .line 1300
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowSwiftkeyGuideConsecutively(Z)V

    goto/16 :goto_0

    .line 1285
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1286
    .restart local v1    # "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1288
    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    .line 1294
    :catch_0
    move-exception v3

    .line 1295
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 1296
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showTipsOneHandedGuideDialog(Landroid/view/View;)V
    .locals 21
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 1304
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1305
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1307
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v17, "SamsungIME"

    const-string v18, "[showTipsOneHandedGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1312
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->isShowing()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1313
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideLayoutRscId()I

    move-result v12

    .line 1314
    .local v12, "oneHandedGuideLayoutRscId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideCheckBoxRscId()I

    move-result v9

    .line 1315
    .local v9, "oneHandedGuideCheckBoxRscId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandGuideAnimationDrawbleRscId()I

    move-result v11

    .line 1316
    .local v11, "oneHandedGuideImageViewRsrcId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideDialogTitle()Ljava/lang/String;

    move-result-object v10

    .line 1317
    .local v10, "oneHandedGuideDialogTitle":Ljava/lang/String;
    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "IS_POPUP_SHOW"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1323
    .local v14, "sp":Landroid/content/SharedPreferences;
    const-string v17, "first_one_handed_execution"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_8

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    .line 1324
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v17, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1326
    .local v2, "Dialog":Landroid/app/AlertDialog$Builder;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1330
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1331
    .local v6, "guideLayout":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1333
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1334
    .local v7, "imgMoving":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    .line 1336
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1338
    const v17, 0x104000a

    new-instance v18, Lcom/diotek/ime/framework/view/TipsDialog$32;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$32;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1359
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 1360
    .local v4, "chkbox":Landroid/widget/CheckBox;
    if-eqz v4, :cond_4

    .line 1361
    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$33;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/view/TipsDialog$33;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1369
    :cond_4
    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$34;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$34;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1381
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/diotek/ime/framework/view/TipsDialog$35;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$35;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 1392
    .local v15, "win":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 1393
    .local v16, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1394
    const/high16 v17, 0x3f000000

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 1395
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1401
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v13

    .line 1402
    .local v13, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v13, :cond_6

    .line 1403
    invoke-virtual {v13}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1404
    .local v3, "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1405
    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1413
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v13    # "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    :cond_6
    :goto_2
    const/16 v17, 0x3eb

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1414
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1416
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1323
    .end local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .end local v4    # "chkbox":Landroid/widget/CheckBox;
    .end local v6    # "guideLayout":Landroid/view/View;
    .end local v7    # "imgMoving":Landroid/widget/ImageView;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v15    # "win":Landroid/view/Window;
    .end local v16    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1408
    .restart local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "chkbox":Landroid/widget/CheckBox;
    .restart local v6    # "guideLayout":Landroid/view/View;
    .restart local v7    # "imgMoving":Landroid/widget/ImageView;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v15    # "win":Landroid/view/Window;
    .restart local v16    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1409
    .restart local v3    # "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1411
    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    .line 1417
    .end local v3    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v5

    .line 1418
    .local v5, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v17, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v17, :cond_7

    .line 1419
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showTipsRemoveWordsGuideDialog(Landroid/view/View;)V
    .locals 17
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 1943
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    .line 1944
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 1950
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    .line 2109
    :cond_0
    :goto_0
    return-void

    .line 1946
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsRemoveWordsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1952
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1953
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideLayoutRscId()I

    move-result v10

    .line 1954
    .local v10, "removeWordsGuideLayoutRscId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideCheckBoxRscId()I

    move-result v8

    .line 1955
    .local v8, "removeWordsGuideCheckBoxRscId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideDialogTitle()Ljava/lang/String;

    move-result-object v9

    .line 1956
    .local v9, "removeWordsGuideDialogTitle":Ljava/lang/String;
    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 1961
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1962
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 1963
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1965
    .local v2, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1967
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1969
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1970
    .local v6, "guideLayout":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1972
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1974
    const v14, 0x7f0800d1

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1975
    .local v11, "textview":Landroid/widget/TextView;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1977
    const v14, 0x7f0d014f

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$57;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$57;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1993
    const v14, 0x7f0d0241

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$58;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$58;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2009
    const v14, 0x7f0d014e

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$59;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$59;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2027
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 2028
    .local v4, "chkbox":Landroid/widget/CheckBox;
    if-eqz v4, :cond_5

    .line 2029
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    .line 2030
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2032
    :cond_4
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$60;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/diotek/ime/framework/view/TipsDialog$60;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2040
    :cond_5
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$61;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$61;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2062
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2063
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$62;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$62;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$63;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$63;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 2086
    .local v12, "win":Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 2087
    .local v13, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    .line 2088
    const/high16 v14, 0x3f000000

    invoke-virtual {v12, v14}, Landroid/view/Window;->setDimAmount(F)V

    .line 2089
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7

    .line 2091
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 2092
    .local v3, "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 2093
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2099
    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2100
    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2102
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2103
    :catch_0
    move-exception v5

    .line 2104
    .local v5, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 2105
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 2095
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v5    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 2096
    .restart local v3    # "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 2097
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsSwiftKeyLearnsGuideDialog(Landroid/view/View;)V
    .locals 17
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 1774
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    .line 1775
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 1781
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    .line 1940
    :cond_0
    :goto_0
    return-void

    .line 1777
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsSwiftKeyLearnsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1783
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1784
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideLayoutRscId()I

    move-result v10

    .line 1785
    .local v10, "swiftKeyLearnsGuideLayoutRscId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideCheckBoxRscId()I

    move-result v8

    .line 1786
    .local v8, "swiftKeyLearnsGuideCheckBoxRscId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideDialogTitle()Ljava/lang/String;

    move-result-object v9

    .line 1787
    .local v9, "swiftKeyLearnsGuideDialogTitle":Ljava/lang/String;
    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 1792
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 1794
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1796
    .local v2, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1798
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1800
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1801
    .local v6, "guideLayout":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1803
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1805
    const v14, 0x7f0800d3

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1806
    .local v11, "textview":Landroid/widget/TextView;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1808
    const v14, 0x7f0d014f

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$50;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$50;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1824
    const v14, 0x7f0d0241

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$51;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$51;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1840
    const v14, 0x7f0d014e

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$52;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$52;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1858
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 1859
    .local v4, "chkbox":Landroid/widget/CheckBox;
    if-eqz v4, :cond_5

    .line 1860
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    .line 1861
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1863
    :cond_4
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$53;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/diotek/ime/framework/view/TipsDialog$53;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1871
    :cond_5
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$54;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$54;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1893
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1894
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$55;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$55;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$56;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$56;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 1917
    .local v12, "win":Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 1918
    .local v13, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    .line 1919
    const/high16 v14, 0x3f000000

    invoke-virtual {v12, v14}, Landroid/view/Window;->setDimAmount(F)V

    .line 1920
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7

    .line 1922
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1923
    .local v3, "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1924
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1930
    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1931
    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1933
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1934
    :catch_0
    move-exception v5

    .line 1935
    .local v5, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 1936
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1926
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v5    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1927
    .restart local v3    # "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1928
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsSwiftkeyGuideDialog(Landroid/view/View;)V
    .locals 14
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 1064
    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    .line 1065
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 1072
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v11, :cond_2

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1067
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showTipsSwiftkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1074
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    iput v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 1075
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1076
    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideLayoutRscId()I

    move-result v8

    .line 1077
    .local v8, "swiftkeyGuideLayoutRscId":I
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v7

    .line 1078
    .local v7, "swiftkeyGuideDialogTitle":Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1082
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1083
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iget-object v13, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1085
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1087
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1089
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1090
    .local v4, "guideLayout":Landroid/view/View;
    const v11, 0x7f08005c

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1091
    .local v2, "chkbox":Landroid/widget/CheckBox;
    if-eqz v2, :cond_4

    .line 1092
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    invoke-virtual {v2, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1094
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$25;

    invoke-direct {v11, p0, v2}, Lcom/diotek/ime/framework/view/TipsDialog$25;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    :cond_4
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1102
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1104
    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$26;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$26;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1124
    const v11, 0x7f0d0117

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$27;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$27;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1152
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$28;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$28;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1164
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$29;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$29;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1172
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 1173
    .local v9, "win":Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 1174
    .local v10, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/view/Window;->addFlags(I)V

    .line 1175
    const/high16 v11, 0x3f000000

    invoke-virtual {v9, v11}, Landroid/view/Window;->setDimAmount(F)V

    .line 1176
    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_5

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_7

    .line 1182
    :cond_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    .line 1183
    .local v6, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v6, :cond_6

    .line 1184
    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1185
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1186
    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1193
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v6    # "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    :cond_6
    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1194
    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1196
    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1197
    :catch_0
    move-exception v3

    .line 1198
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1199
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1189
    .end local v3    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_7
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1190
    .restart local v1    # "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1191
    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsTraceGuideDialog(Landroid/view/View;)V
    .locals 18
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 1429
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v15, :cond_1

    .line 1430
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 1436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v15, :cond_2

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1432
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v15, "SamsungIME"

    const-string v16, "[showTipsTraceGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1438
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/Dialog;->isShowing()Z

    move-result v15

    if-nez v15, :cond_0

    .line 1439
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideLayoutRscId()I

    move-result v12

    .line 1440
    .local v12, "traceGuideLayoutRscId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideCheckBoxRscId()I

    move-result v10

    .line 1441
    .local v10, "traceGuideCheckBoxRscId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideDialogTitle()Ljava/lang/String;

    move-result-object v11

    .line 1442
    .local v11, "traceGuideDialogTitle":Ljava/lang/String;
    if-eqz v12, :cond_0

    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    .line 1447
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "IS_POPUP_SHOW"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 1449
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v15, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v17

    invoke-direct/range {v15 .. v17}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1451
    .local v2, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1453
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1455
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/4 v15, 0x0

    invoke-virtual {v8, v12, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1456
    .local v7, "guideLayout":Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1458
    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1460
    const v15, 0x7f0800d5

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1461
    .local v9, "textview":Landroid/widget/TextView;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "1. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1463
    const v15, 0x7f0d014f

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$36;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$36;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1480
    const v15, 0x7f0d0241

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$37;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$37;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1497
    const v15, 0x7f0d014e

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$38;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$38;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1515
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 1516
    .local v5, "chkbox":Landroid/widget/CheckBox;
    if-eqz v5, :cond_6

    .line 1517
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Sip_TraceGuideDialogCheckDefault"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1518
    .local v4, "checkTraceGuideDialogDefault":Ljava/lang/String;
    const-string v15, "true"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v15, :cond_5

    .line 1519
    :cond_4
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1520
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    .line 1522
    :cond_5
    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$39;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lcom/diotek/ime/framework/view/TipsDialog$39;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1530
    .end local v4    # "checkTraceGuideDialogDefault":Ljava/lang/String;
    :cond_6
    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$40;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$40;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1552
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1553
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$41;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$41;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$42;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$42;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 1576
    .local v13, "win":Landroid/view/Window;
    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 1577
    .local v14, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 1579
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1580
    .local v3, "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1581
    iput-object v3, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1587
    :goto_1
    const/16 v15, 0x3eb

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1588
    const/4 v15, -0x2

    iput v15, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1589
    const/high16 v15, 0x3f000000

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1590
    invoke-virtual {v13, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1591
    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/view/Window;->addFlags(I)V

    .line 1593
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1594
    :catch_0
    move-exception v6

    .line 1595
    .local v6, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 1596
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1583
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v6    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1584
    .restart local v3    # "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1585
    iput-object v3, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTraceGuideDialog(Landroid/view/View;)V
    .locals 19
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 407
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 408
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 410
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v16, "SamsungIME"

    const-string v17, "[showTraceGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v16

    if-nez v16, :cond_0

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    .line 422
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTraceGuideLayoutRscId()I

    move-result v13

    .line 423
    .local v13, "traceGuideLayoutRscId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTraceGuideCheckBoxRscId()I

    move-result v11

    .line 424
    .local v11, "traceGuideCheckBoxRscId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTraceGuideDialogTitle()Ljava/lang/String;

    move-result-object v12

    .line 425
    .local v12, "traceGuideDialogTitle":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    .line 432
    .local v10, "sp":Landroid/content/SharedPreferences;
    const-string v16, "first_trace_execution"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_9

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 434
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v16, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    .local v2, "Dialog":Landroid/app/AlertDialog$Builder;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 440
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 441
    .local v7, "guideLayout":Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 445
    const v16, 0x104000a

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$9;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 467
    .local v5, "chkbox":Landroid/widget/CheckBox;
    if-eqz v5, :cond_6

    .line 468
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Sip_TraceGuideDialogCheckDefault"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "checkTraceGuideDialogDefault":Ljava/lang/String;
    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 470
    :cond_4
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 471
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    .line 473
    :cond_5
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/diotek/ime/framework/view/TipsDialog$10;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    .end local v4    # "checkTraceGuideDialogDefault":Ljava/lang/String;
    :cond_6
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$11;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$11;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 497
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 500
    .local v14, "win":Landroid/view/Window;
    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 501
    .local v15, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->addFlags(I)V

    .line 502
    const/high16 v16, 0x3f000000

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 505
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v9

    .line 506
    .local v9, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v9, :cond_8

    .line 507
    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 508
    .local v3, "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 509
    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 516
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v9    # "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    :cond_8
    :goto_2
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 517
    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 519
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 520
    :catch_0
    move-exception v6

    .line 521
    .local v6, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v16, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_0

    .line 522
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 432
    .end local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .end local v5    # "chkbox":Landroid/widget/CheckBox;
    .end local v6    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v7    # "guideLayout":Landroid/view/View;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "win":Landroid/view/Window;
    .end local v15    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 512
    .restart local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .restart local v5    # "chkbox":Landroid/widget/CheckBox;
    .restart local v7    # "guideLayout":Landroid/view/View;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v14    # "win":Landroid/view/Window;
    .restart local v15    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 513
    .restart local v3    # "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 514
    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public showXt9PersonalizerAttentionDialog(Landroid/view/View;)V
    .locals 17
    .param p1, "mCurrentView"    # Landroid/view/View;

    .prologue
    .line 940
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_1

    .line 941
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 942
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v15, -0x2

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    .line 943
    .local v9, "settingsButton":Landroid/widget/Button;
    if-eqz v9, :cond_1

    const-string v14, ""

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1062
    .end local v9    # "settingsButton":Landroid/widget/Button;
    .end local p1    # "mCurrentView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 948
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_6

    .line 949
    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p1    # "mCurrentView":Landroid/view/View;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 956
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 957
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v14

    if-nez v14, :cond_0

    .line 960
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getXt9PersonalizerAttentionGuideLayoutRscId()I

    move-result v13

    .line 961
    .local v13, "xt9PersonalizerAttentionGuideLayoutRscId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v10

    .line 962
    .local v10, "swiftkeyGuideDialogTitle":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-eqz v10, :cond_0

    .line 966
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 969
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 971
    .local v2, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 973
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 975
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 976
    .local v5, "guideLayout":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 977
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 980
    const v14, 0x104000a

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$22;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$22;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 995
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    const-string v15, "keyguard"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    .line 996
    .local v7, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v14

    if-nez v14, :cond_2

    .line 997
    const v14, 0x7f0d0117

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$23;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$23;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1020
    :cond_2
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$24;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$24;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1032
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    .line 1033
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 1035
    .local v11, "win":Landroid/view/Window;
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Landroid/view/Window;->addFlags(I)V

    .line 1036
    const/high16 v14, 0x3f000000

    invoke-virtual {v11, v14}, Landroid/view/Window;->setDimAmount(F)V

    .line 1037
    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 1038
    .local v12, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7

    .line 1040
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    .line 1041
    .local v8, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v8, :cond_4

    .line 1042
    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1043
    .local v3, "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1044
    iput-object v3, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1051
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v8    # "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    :cond_4
    :goto_1
    const/16 v14, 0x3eb

    iput v14, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1052
    const/4 v14, -0x2

    iput v14, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1054
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowXt9PersonalizerAttentionConsecutively(Z)V

    goto/16 :goto_0

    .line 951
    .end local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .end local v5    # "guideLayout":Landroid/view/View;
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "keyguardManager":Landroid/app/KeyguardManager;
    .end local v10    # "swiftkeyGuideDialogTitle":Ljava/lang/String;
    .end local v11    # "win":Landroid/view/Window;
    .end local v12    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "xt9PersonalizerAttentionGuideLayoutRscId":I
    .restart local p1    # "mCurrentView":Landroid/view/View;
    :cond_6
    const-string v14, "SamsungIME"

    const-string v15, "[showXt9PersonalizerAttentionDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1047
    .end local p1    # "mCurrentView":Landroid/view/View;
    .restart local v2    # "Dialog":Landroid/app/AlertDialog$Builder;
    .restart local v5    # "guideLayout":Landroid/view/View;
    .restart local v6    # "inflater":Landroid/view/LayoutInflater;
    .restart local v7    # "keyguardManager":Landroid/app/KeyguardManager;
    .restart local v10    # "swiftkeyGuideDialogTitle":Ljava/lang/String;
    .restart local v11    # "win":Landroid/view/Window;
    .restart local v12    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v13    # "xt9PersonalizerAttentionGuideLayoutRscId":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1048
    .restart local v3    # "binder":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1049
    iput-object v3, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    .line 1055
    .end local v3    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v4

    .line 1056
    .local v4, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_5

    .line 1057
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showXt9_9RemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V
    .locals 11
    .param p1, "term"    # Ljava/lang/String;
    .param p2, "idx"    # I
    .param p3, "mCurrentView"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    .line 2195
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2196
    .local v2, "context":Landroid/content/Context;
    instance-of v8, p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v8, :cond_1

    .line 2197
    check-cast p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .end local p3    # "mCurrentView":Landroid/view/View;
    iput-object p3, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 2204
    if-nez v2, :cond_2

    .line 2276
    :cond_0
    :goto_0
    return-void

    .line 2199
    .restart local p3    # "mCurrentView":Landroid/view/View;
    :cond_1
    const-string v8, "SamsungIME"

    const-string v9, "[showXt9_9RemoveTermDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2205
    .end local p3    # "mCurrentView":Landroid/view/View;
    :cond_2
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/TipsDialog;->isAvailableShowXt9_9RemoveDialog(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2208
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    .line 2209
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    .line 2210
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    iput v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    .line 2211
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getXt9_9RemoveTermDialogTitle()Ljava/lang/String;

    move-result-object v7

    .line 2212
    .local v7, "xt9_9RemoveTermDialogTitle":Ljava/lang/String;
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "IS_POPUP_SHOW"

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 2214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v9

    invoke-direct {v8, v2, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2216
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2217
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getXt9_9RemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2218
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2221
    const v8, 0x104000a

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$66;

    invoke-direct {v9, p0, p1}, Lcom/diotek/ime/framework/view/TipsDialog$66;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2241
    const/high16 v8, 0x1040000

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$67;

    invoke-direct {v9, p0}, Lcom/diotek/ime/framework/view/TipsDialog$67;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2249
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 2250
    .local v4, "popup":Landroid/app/AlertDialog;
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2251
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 2252
    .local v5, "win":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 2253
    .local v6, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    .line 2255
    :cond_3
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2256
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 2257
    iput-object v1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2263
    :goto_1
    const/16 v8, 0x3eb

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2264
    const/4 v8, -0x2

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2265
    const/high16 v8, 0x3f000000

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2266
    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2267
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    .line 2269
    :try_start_0
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2275
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v4}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 2259
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_5
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2260
    .restart local v1    # "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 2261
    iput-object v1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    .line 2270
    :catch_0
    move-exception v3

    .line 2271
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 2272
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
