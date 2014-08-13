.class public Lcom/diotek/ime/framework/view/tracker/PointerTracker;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;,
        Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;
    }
.end annotation


# static fields
.field private static mIsDownSymKey:Z


# instance fields
.field final DISTANCE_MULTIPLIER_FOR_MOVE:F

.field final DISTANCE_MULTIPLIER_FOR_UP:F

.field final DISTANCE_MULTIPLIER_FOR_UP_AFTER:F

.field public keyPressed:Landroid/widget/TextView;

.field private mAlreadyComposedKeyIndex:I

.field private mDownXPointInSpaceKey:I

.field private mFilteringEventThresHoldDistance:I

.field private mFilteringEventThresHoldTime:I

.field private mFlick:Lcom/diotek/ime/framework/trace/KeyboardFlick;

.field private mFlickUmlaut:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

.field private final mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

.field private mHwrDownPointX:I

.field private mHwrDownPointY:I

.field protected mInputController:Lcom/diotek/ime/framework/input/InputController;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsDownInCtrlKey:Z

.field private mIsDownInShiftKey:Z

.field private mIsDownInSpaceKey:Z

.field private mIsFixedLanguageSwypingOperatingDistance:Z

.field private mIsHoverTracker:Z

.field private mIsHwrTracker:Z

.field private mIsPopupKeyboardTracker:Z

.field private mIsRepeatableKey:Z

.field private mIsSymbolPopupKeyboardTracker:Z

.field private mIsTabletMode:Z

.field private mIsTouchedForLanguageChange:Z

.field private mKeyAlreadyProcessed:Z

.field private final mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

.field private mKeyHysteresisDistanceSquared:I

.field private final mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

.field private mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

.field private mLastInputIndex:I

.field private mLastTapTime:J

.field private mListener:Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

.field private mPointerCount:I

.field public final mPointerId:I

.field private mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;

.field private mPreviewMode:Z

.field private mPreviousHoverKey:I

.field private mPreviousKey:I

.field private final mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field private mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

.field private mVibKeyIndex:I

.field private mXt9Version:I

.field public preview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownSymKey:Z

    return-void
.end method

.method public constructor <init>(ILcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;Lcom/diotek/ime/framework/view/tracker/KeyDetector;Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;Landroid/content/res/Resources;Z)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "handler"    # Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;
    .param p3, "keyDetector"    # Lcom/diotek/ime/framework/view/tracker/KeyDetector;
    .param p4, "proxy"    # Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;
    .param p5, "res"    # Landroid/content/res/Resources;
    .param p6, "previewMode"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    .line 123
    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyHysteresisDistanceSquared:I

    .line 130
    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    .line 136
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    .line 137
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInCtrlKey:Z

    .line 141
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    .line 142
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    .line 144
    const/high16 v0, 0x40200000

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->DISTANCE_MULTIPLIER_FOR_MOVE:F

    .line 145
    const/high16 v0, 0x40400000

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->DISTANCE_MULTIPLIER_FOR_UP:F

    .line 146
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->DISTANCE_MULTIPLIER_FOR_UP_AFTER:F

    .line 149
    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousKey:I

    .line 150
    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mVibKeyIndex:I

    .line 152
    iput-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 153
    iput-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 154
    iput-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 155
    iput-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 156
    iput-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    .line 158
    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviewMode:Z

    .line 160
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    .line 161
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    .line 162
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsPopupKeyboardTracker:Z

    .line 163
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsSymbolPopupKeyboardTracker:Z

    .line 165
    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointX:I

    .line 166
    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointY:I

    .line 169
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    .line 176
    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    .line 178
    iput v4, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mXt9Version:I

    .line 179
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastTapTime:J

    .line 180
    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastInputIndex:I

    .line 181
    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldTime:I

    .line 182
    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldDistance:I

    .line 186
    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointerCount:I

    .line 325
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 328
    :cond_1
    iput-boolean p6, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviewMode:Z

    .line 329
    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointerId:I

    .line 330
    iput-object p4, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    .line 331
    iput-object p2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    .line 332
    iput-object p3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

    .line 333
    new-instance v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-direct {v0, p3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;-><init>(Lcom/diotek/ime/framework/view/tracker/KeyDetector;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    .line 335
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 336
    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardPointing;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    .line 337
    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardFlick;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardFlick;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFlick:Lcom/diotek/ime/framework/trace/KeyboardFlick;

    .line 338
    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    .line 339
    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFlickUmlaut:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    .line 341
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 343
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 344
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    .line 345
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 348
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    .line 349
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mXt9Version:I

    .line 351
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "FILTERING_EVENT_THRESHOLD_TIME"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldTime:I

    .line 352
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "FILTERING_EVENT_THRESHOLD_DISTANCE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldDistance:I

    .line 354
    :cond_2
    return-void
.end method

.method private diffrentSizeKeys(II)Z
    .locals 3
    .param p1, "oldKeyIndex"    # I
    .param p2, "keyIndex"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1558
    if-eq p1, v1, :cond_0

    if-ne p2, v1, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return v0

    .line 1561
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    if-ne v1, v2, :cond_0

    .line 1563
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCriticalValue()I
    .locals 14

    .prologue
    const/16 v13, 0x12c

    const/16 v12, 0x14

    const/16 v11, 0xa

    const-wide v9, 0x400451eb851eb852L

    .line 1586
    :try_start_0
    iget-object v7, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1587
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v7, v8, :cond_0

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v7

    .line 1588
    .local v5, "width":D
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v4, v7

    .line 1589
    .local v4, "pixels":I
    :goto_1
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v7, v7

    int-to-double v7, v7

    div-double v7, v5, v7

    mul-double/2addr v7, v9

    double-to-int v0, v7

    .line 1590
    .local v0, "TotalWidth":I
    int-to-double v7, v4

    div-double/2addr v7, v9

    double-to-int v1, v7

    .line 1592
    .local v1, "_1cm":I
    if-ge v0, v11, :cond_2

    .line 1593
    int-to-double v7, v1

    const-wide v9, 0x3fe999999999999aL

    mul-double/2addr v7, v9

    double-to-int v7, v7

    .line 1603
    .end local v0    # "TotalWidth":I
    .end local v1    # "_1cm":I
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "pixels":I
    .end local v5    # "width":D
    :goto_2
    return v7

    .line 1587
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v5, v7

    goto :goto_0

    .line 1588
    .restart local v5    # "width":D
    :cond_1
    iget v7, v2, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int v4, v7

    goto :goto_1

    .line 1594
    .restart local v0    # "TotalWidth":I
    .restart local v1    # "_1cm":I
    .restart local v4    # "pixels":I
    :cond_2
    if-lt v0, v11, :cond_3

    if-ge v0, v12, :cond_3

    .line 1595
    int-to-double v7, v1

    const-wide v9, 0x3ff3333333333333L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    goto :goto_2

    .line 1596
    :cond_3
    if-lt v0, v12, :cond_4

    .line 1597
    int-to-double v7, v1

    const-wide/high16 v9, 0x3ff8000000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    goto :goto_2

    .line 1599
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SPACE_LANGUAGE_LEFT_CHANGABLE_CRITICAL_VALUE"

    const/16 v9, 0x12c

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_2

    .line 1601
    .end local v0    # "TotalWidth":I
    .end local v1    # "_1cm":I
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "pixels":I
    .end local v5    # "width":D
    :catch_0
    move-exception v3

    .line 1602
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object v7, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SPACE_LANGUAGE_LEFT_CHANGABLE_CRITICAL_VALUE"

    invoke-interface {v7, v8, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    goto :goto_2
.end method

.method private getLongpressTimoutDelay(I)J
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 719
    const-wide/16 v0, 0x1f4

    .line 720
    .local v0, "delay":J
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    const-wide/16 v0, 0x7d0

    .line 736
    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/common/EasyMode;->getEasyModeStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 737
    long-to-float v2, v0

    invoke-static {}, Lcom/diotek/ime/framework/common/EasyMode;->getEasyModeRatio()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 741
    :cond_0
    return-wide v0

    .line 723
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 730
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->getHoldDelay()I

    move-result v2

    int-to-long v0, v2

    goto :goto_0

    .line 726
    :pswitch_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->getHoldDelay()I

    move-result v2

    int-to-long v0, v2

    .line 727
    goto :goto_0

    .line 723
    :pswitch_data_0
    .packed-switch -0x7a
        :pswitch_0
    .end packed-switch
.end method

.method private static getSquareDistanceToKeyEdge(IILcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 1411
    iget v5, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    .line 1412
    .local v5, "left":I
    iget v8, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v9, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int v6, v8, v9

    .line 1413
    .local v6, "right":I
    iget v7, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    .line 1414
    .local v7, "top":I
    iget v8, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v9, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    add-int v0, v8, v9

    .line 1415
    .local v0, "bottom":I
    if-ge p0, v5, :cond_0

    move v3, v5

    .line 1416
    .local v3, "edgeX":I
    :goto_0
    if-ge p1, v7, :cond_2

    move v4, v7

    .line 1417
    .local v4, "edgeY":I
    :goto_1
    sub-int v1, p0, v3

    .line 1418
    .local v1, "dx":I
    sub-int v2, p1, v4

    .line 1419
    .local v2, "dy":I
    mul-int v8, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    return v8

    .line 1415
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v3    # "edgeX":I
    .end local v4    # "edgeY":I
    :cond_0
    if-le p0, v6, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, p0

    goto :goto_0

    .line 1416
    .restart local v3    # "edgeX":I
    :cond_2
    if-le p1, v0, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, p1

    goto :goto_1
.end method

.method private isFilteringEvent(IIJ)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 527
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldDistance:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldDistance:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getDownTime()J

    move-result-wide v0

    iget v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldTime:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFunctionKey(I)Z
    .locals 1
    .param p1, "Codes"    # I

    .prologue
    .line 1470
    const/4 v0, 0x0

    .line 1474
    .local v0, "ret":Z
    const/4 v0, 0x0

    .line 1477
    return v0
.end method

.method private isGreekKeyInvisible(I)Z
    .locals 2
    .param p1, "keyIndex"    # I

    .prologue
    .line 1614
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    .line 1616
    .local v0, "letterMode":Z
    const/4 v1, 0x0

    return v1
.end method

.method private isMinorMoveBounce(III)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "newKey"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1388
    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-gez v3, :cond_1

    .line 1389
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "keyboard and/or hysteresis not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1392
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    .line 1393
    .local v0, "curKey":I
    if-ne p3, v0, :cond_3

    .line 1398
    :cond_2
    :goto_0
    return v1

    .line 1395
    :cond_3
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1396
    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v3, v3, v0

    invoke-static {p1, p2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getSquareDistanceToKeyEdge(IILcom/diotek/ime/framework/view/Keyboard$Key;)I

    move-result v3

    iget v4, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-lt v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1398
    goto :goto_0
.end method

.method private isModifierInternal(I)Z
    .locals 4
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 396
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    .line 397
    .local v0, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-nez v0, :cond_0

    .line 401
    :goto_0
    return v2

    .line 400
    :cond_0
    iget-object v3, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v3, v2

    .line 401
    .local v1, "primaryCode":I
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isFunctionKey(I)Z

    move-result v2

    goto :goto_0
.end method

.method private isValidKeyIndex(I)Z
    .locals 1
    .param p1, "keyIndex"    # I

    .prologue
    .line 382
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setShiftkeyStateUp(IJ)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "eventTime"    # J

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    .line 1633
    .local v12, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v12, :cond_0

    .line 1634
    const/16 v0, -0x190

    if-ne p1, v0, :cond_1

    const/16 v6, 0x3b

    .line 1636
    .local v6, "event":I
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x41

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v1, p2

    move-wide v3, p2

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1640
    .end local v6    # "event":I
    :cond_0
    return-void

    .line 1634
    :cond_1
    const/16 v6, 0x3c

    goto :goto_0
.end method

.method private showKeyPreviewAndUpdateKey(IZ)V
    .locals 1
    .param p1, "keyIndex"    # I
    .param p2, "lastDown"    # Z

    .prologue
    .line 1430
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZI)V

    .line 1431
    return-void
.end method

.method private showKeyPreviewAndUpdateKey(IZI)V
    .locals 6
    .param p1, "keyIndex"    # I
    .param p2, "lastDown"    # Z
    .param p3, "xDistance"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 1434
    const/4 v0, 0x0

    .line 1435
    .local v0, "isShownPreviewKey":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    if-le v3, p1, :cond_0

    if-lez p1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    if-nez v3, :cond_0

    .line 1439
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v5, p0, p3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->multiTouchShowPreview(ILcom/diotek/ime/framework/view/tracker/PointerTracker;I)Z

    .line 1440
    invoke-virtual {p0, p1, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->updateKey(IZ)V

    .line 1461
    :goto_0
    return-void

    .line 1447
    :cond_0
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviewMode:Z

    if-nez v3, :cond_2

    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    if-ge p1, v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, p1

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isPreviewEnabled(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-ne p1, v5, :cond_5

    :cond_2
    if-eqz p2, :cond_5

    .line 1452
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1453
    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v3, v5, p0, p3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->multiTouchShowPreview(ILcom/diotek/ime/framework/view/tracker/PointerTracker;I)Z

    move-result v0

    .line 1460
    :cond_3
    :goto_1
    if-nez v0, :cond_6

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->updateKey(IZ)V

    goto :goto_0

    .line 1455
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v3, p1, p0, p3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->multiTouchShowPreview(ILcom/diotek/ime/framework/view/tracker/PointerTracker;I)Z

    move-result v0

    goto :goto_1

    .line 1457
    :cond_5
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSpaceLanguageChange()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1458
    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v3, v5, p0, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->multiTouchShowPreview(ILcom/diotek/ime/framework/view/tracker/PointerTracker;I)Z

    goto :goto_1

    :cond_6
    move v1, v2

    .line 1460
    goto :goto_2
.end method


# virtual methods
.method public getDownInSpaceKey()Z
    .locals 1

    .prologue
    .line 1372
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    return v0
.end method

.method public getDownKeyIndex()I
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getDownKeyIndex()I

    move-result v0

    return v0
.end method

.method public getDownTime()J
    .locals 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getDownTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHwrDownPointX()I
    .locals 1

    .prologue
    .line 1493
    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointX:I

    return v0
.end method

.method public getHwrDownPointY()I
    .locals 1

    .prologue
    .line 1497
    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointY:I

    return v0
.end method

.method public getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 1
    .param p1, "keyIndex"    # I

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyIndex()I
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    return v0
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getLastX()I

    move-result v0

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getLastY()I

    move-result v0

    return v0
.end method

.method getStartX()I
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result v0

    return v0
.end method

.method getStartY()I
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result v0

    return v0
.end method

.method public initPreviousHoverKey()V
    .locals 1

    .prologue
    .line 1581
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    .line 1582
    return-void
.end method

.method public initPreviousKeyIndex()V
    .locals 1

    .prologue
    .line 1501
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousKey:I

    .line 1502
    return-void
.end method

.method public isAccentKey(I)Z
    .locals 4
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 453
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    .line 454
    .local v0, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0x3e

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isAlreadyProcessed()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    return v0
.end method

.method public isBackspaceKey(I)Z
    .locals 4
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 448
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    .line 449
    .local v0, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/4 v3, -0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isCtrlKey(I)Z
    .locals 4
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    .line 444
    .local v0, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0x3e8

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isHwrTracker()Z
    .locals 1

    .prologue
    .line 1489
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    return v0
.end method

.method public isModifier()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method public isOnModifierKey(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndexAndNearbyCodes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isPopupKeyboardTracker()Z
    .locals 1

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsPopupKeyboardTracker:Z

    return v0
.end method

.method public isRepeatableKey()Z
    .locals 1

    .prologue
    .line 1525
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    return v0
.end method

.method public isShiftKey(I)Z
    .locals 4
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 438
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    .line 439
    .local v0, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0x190

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0x19a

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSpaceKey(I)Z
    .locals 4
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 433
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    .line 434
    .local v0, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSpaceKey(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getKeyIndexAndNearbyCodes(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isSpaceKey(I)Z

    move-result v0

    return v0
.end method

.method public isSymbolPopupKeyboardTracker()Z
    .locals 1

    .prologue
    .line 1517
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsSymbolPopupKeyboardTracker:Z

    return v0
.end method

.method public noUseUpdateKey()V
    .locals 2

    .prologue
    .line 1529
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->updateKey(IZ)V

    .line 1530
    return-void
.end method

.method public onCancelEvent(IIJ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 1315
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    .line 1316
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyTimers()V

    .line 1318
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1319
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    .line 1320
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    .line 1321
    .local v0, "keyIndex":I
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1322
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateKey(I)V

    .line 1325
    .end local v0    # "keyIndex":I
    :cond_0
    return-void
.end method

.method public onDownEvent(IIJI)V
    .locals 25
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J
    .param p5, "pointCount"    # I

    .prologue
    .line 540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    if-nez v4, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onDownKey(IIJ)I

    move-result v16

    .line 551
    .local v16, "keyIndex":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v4, v4

    move/from16 v0, v16

    if-lt v0, v4, :cond_3

    .line 552
    :cond_2
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v4, :cond_0

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->endDrawTraceLine()V

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    goto :goto_0

    .line 561
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isGreekKeyInvisible(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 562
    add-int/lit8 v16, v16, 0x1

    .line 564
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, v16

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v17, v4, v5

    .line 566
    .local v17, "keyCode":I
    const/16 v4, -0x66

    move/from16 v0, v17

    if-ne v0, v4, :cond_5

    .line 567
    const/4 v4, 0x1

    sput-boolean v4, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownSymKey:Z

    .line 571
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->setInLangaugeChanging(Z)V

    .line 573
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    .line 574
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    .line 575
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInCtrlKey:Z

    .line 576
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isQuickCangieMode()Z

    move-result v23

    .line 577
    .local v23, "quickModeOn":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v24

    .line 578
    .local v24, "strokeModeOn":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v21

    .line 579
    .local v21, "numSymKeypadType":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isEnableSpaceLanguageChange()Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x20

    move/from16 v0, v17

    if-ne v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    if-nez v23, :cond_8

    if-eqz v24, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isAccessibilityEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 594
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->setInLangaugeChanging(Z)V

    .line 596
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mDownXPointInSpaceKey:I

    .line 598
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getPressedShiftKeyCode()I

    move-result v22

    .line 599
    .local v22, "oldShiftKeyCode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftHoldOn(Z)V

    .line 601
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastTapTime:J

    const-wide/16 v6, 0x12c

    add-long/2addr v4, v6

    cmp-long v4, p3, v4

    if-gtz v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastInputIndex:I

    move/from16 v0, v16

    if-eq v0, v4, :cond_b

    .line 602
    :cond_a
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastTapTime:J

    .line 603
    const/16 v4, -0xff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastInputIndex:I

    .line 606
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_f

    sget-boolean v4, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownSymKey:Z

    if-eqz v4, :cond_f

    .line 607
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_c

    .line 608
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setShiftkeyStateUp(IJ)V

    .line 641
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_d

    const/16 v4, -0x3e8

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v4

    if-nez v4, :cond_d

    .line 644
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInCtrlKey:Z

    .line 645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateCtrlState()V

    .line 649
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 650
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    .line 651
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    .line 654
    const/16 v4, -0x6b

    move/from16 v0, v17

    if-ne v0, v4, :cond_19

    .line 655
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointX:I

    .line 656
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointY:I

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->handleHwrTouchDown(IIJ)Z

    .line 658
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_e

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    .line 661
    :cond_e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    goto/16 :goto_0

    .line 610
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_18

    const/16 v4, -0x190

    move/from16 v0, v17

    if-eq v0, v4, :cond_10

    const/16 v4, -0x19a

    move/from16 v0, v17

    if-ne v0, v4, :cond_18

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-nez v4, :cond_18

    .line 613
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_11

    .line 614
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v20

    .line 615
    .local v20, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v20, :cond_11

    .line 616
    const/16 v4, -0x190

    move/from16 v0, v17

    if-ne v0, v4, :cond_14

    const/16 v10, 0x3b

    .line 618
    .local v10, "event":I
    :goto_2
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x41

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    move-wide/from16 v5, p3

    move-wide/from16 v7, p3

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 624
    .end local v10    # "event":I
    .end local v20    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_11
    const/16 v4, -0xff

    move/from16 v0, v22

    if-eq v0, v4, :cond_12

    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_15

    .line 626
    :cond_13
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDownEvent()oldShiftKeyCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " keyCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 616
    .restart local v20    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_14
    const/16 v10, 0x3c

    goto :goto_2

    .line 630
    .end local v20    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_15
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_17

    .line 632
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 635
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_1

    .line 636
    :cond_18
    const/16 v4, -0x3e

    move/from16 v0, v17

    if-ne v0, v4, :cond_c

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/input/InputController;->setAcuteAccentPressed(Z)V

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_1

    .line 665
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v4

    const v5, 0x7a68434e

    if-ne v4, v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1b

    .line 668
    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    .line 671
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mListener:Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    if-eqz v4, :cond_1d

    .line 672
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v16

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v16

    iget-object v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mListener:Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v16

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 678
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v16

    .line 680
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isGreekKeyInvisible(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 681
    add-int/lit8 v16, v16, 0x1

    .line 686
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1e

    .line 688
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    int-to-long v12, v0

    move/from16 v0, p2

    int-to-long v14, v0

    move-wide/from16 v18, p3

    invoke-interface/range {v11 .. v19}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->pressTrace(JJIIJ)Z

    .line 691
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, v16

    iget-boolean v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->repeatable:Z

    if-eqz v4, :cond_22

    .line 693
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_1f

    .line 694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isBackspaceKey(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 695
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastTapTime:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    cmp-long v4, p3, v4

    if-gez v4, :cond_20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastInputIndex:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_20

    .line 696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v5, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startTextDeleteAllTimer(J)V

    .line 704
    :goto_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    .line 712
    :cond_1f
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v4

    const v5, 0x7a68434e

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 714
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    goto/16 :goto_0

    .line 698
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    const-wide/16 v5, 0xbb8

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto :goto_3

    .line 701
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->repeatKey(I)V

    .line 702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    const-wide/16 v5, 0x190

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto :goto_3

    .line 706
    :cond_22
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_1f

    .line 707
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_1f

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v16

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto :goto_4
.end method

.method public onHoverEvent(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 1569
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

    invoke-virtual {v1, p1, p2, v3}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getKeyIndexAndNearbyCodes(IIZ)I

    move-result v0

    .line 1571
    .local v0, "keyIndex":I
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1572
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1573
    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->updateHoverKey(I)V

    .line 1578
    :cond_0
    return-void
.end method

.method public onMoveEvent(IIJ)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 752
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->onMoveEvent(IIJZLandroid/view/MotionEvent;)V

    .line 753
    return-void
.end method

.method public onMoveEvent(IIJZLandroid/view/MotionEvent;)V
    .locals 30
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J
    .param p5, "lastDown"    # Z
    .param p6, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 764
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v4, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_0

    .line 778
    invoke-direct/range {p0 .. p4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isFilteringEvent(IIJ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "FIXED_LANGUAGE_SWYPING_OPERATING_DISTANCE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    move-object/from16 v26, v0

    .line 784
    .local v26, "keyState":Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-eqz v4, :cond_6

    .line 786
    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v15

    .line 787
    .local v15, "keyIndex":I
    if-gez v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    if-nez v4, :cond_0

    .line 791
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, v15

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v25, v4, v5

    .line 792
    .local v25, "keyCode":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mDownXPointInSpaceKey:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    const/high16 v5, 0x40200000

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v29, v0

    .line 793
    .local v29, "xDistance":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getSpaceLanguageChangingThreshold()I

    move-result v19

    .line 794
    .local v19, "distanceThreshold":I
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move/from16 v0, v19

    if-le v4, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    if-nez v4, :cond_3

    .line 795
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    .line 798
    :cond_3
    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 799
    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 800
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_4

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v6, v15, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    .line 810
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, v29

    invoke-direct {v0, v4, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZI)V

    goto/16 :goto_0

    .line 803
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v4

    if-nez v4, :cond_4

    .line 804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->resetMultiTap()V

    .line 805
    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 806
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_4

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v6, v15, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto :goto_1

    .line 811
    .end local v15    # "keyIndex":I
    .end local v19    # "distanceThreshold":I
    .end local v25    # "keyCode":I
    .end local v29    # "xDistance":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    if-eqz v4, :cond_8

    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->handleHwrTouchMove(IIJ)Z

    .line 813
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointX:I

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 814
    .local v20, "dx":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointY:I

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v21

    .line 815
    .local v21, "dy":I
    const/16 v4, 0xa

    move/from16 v0, v20

    if-gt v0, v4, :cond_7

    const/16 v4, 0xa

    move/from16 v0, v21

    if-le v0, v4, :cond_0

    .line 816
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    goto/16 :goto_0

    .line 820
    .end local v20    # "dx":I
    .end local v21    # "dy":I
    :cond_8
    const/16 v18, -0x1

    .line 821
    .local v18, "backupVibIndex":I
    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveKey(II)I

    move-result v15

    .line 822
    .restart local v15    # "keyIndex":I
    const/4 v4, -0x1

    if-ne v15, v4, :cond_9

    .line 823
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    .line 826
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateCtrlState()V

    goto/16 :goto_0

    .line 832
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isGreekKeyInvisible(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 833
    add-int/lit8 v15, v15, 0x1

    .line 836
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mVibKeyIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    .line 837
    move/from16 v18, v15

    .line 842
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, v15

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v25, v4, v5

    .line 843
    .restart local v25    # "keyCode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getPressedShiftKeyCode()I

    move-result v27

    .line 845
    .local v27, "oldShiftKeyCode":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_11

    const/16 v4, -0x190

    move/from16 v0, v25

    if-eq v0, v4, :cond_b

    const/16 v4, -0x19a

    move/from16 v0, v25

    if-ne v0, v4, :cond_11

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-nez v4, :cond_11

    .line 849
    const/16 v4, -0xff

    move/from16 v0, v27

    if-eq v0, v4, :cond_c

    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    .line 851
    :cond_d
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMoveEvent()oldShiftKeyCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " keyCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 839
    .end local v25    # "keyCode":I
    .end local v27    # "oldShiftKeyCode":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mVibKeyIndex:I

    move/from16 v18, v0

    goto :goto_2

    .line 855
    .restart local v25    # "keyCode":I
    .restart local v27    # "oldShiftKeyCode":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v15

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    .line 869
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v4, -0x3e8

    move/from16 v0, v25

    if-eq v0, v4, :cond_14

    .line 872
    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result v5

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result v6

    move-object/from16 v4, p0

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->onUpEvent(IIJZ)V

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setAlreadyProcessed()V

    goto/16 :goto_0

    .line 859
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    if-eqz v4, :cond_12

    .line 860
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    .line 861
    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result v5

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result v6

    move-object/from16 v4, p0

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->onUpEvent(IIJZ)V

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setAlreadyProcessed()V

    goto/16 :goto_0

    .line 864
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_10

    const/16 v4, -0x190

    move/from16 v0, v27

    if-eq v0, v4, :cond_13

    const/16 v4, -0x19a

    move/from16 v0, v27

    if-ne v0, v4, :cond_10

    .line 866
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v5, -0xff

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    goto :goto_3

    .line 877
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 878
    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    .line 879
    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 880
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_15

    .line 881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v6, v15, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    .line 900
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousKey:I

    if-eq v4, v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1d

    .line 903
    if-eqz p6, :cond_1b

    .line 905
    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v28

    .line 906
    .local v28, "size":I
    const/16 v22, 0x0

    .line 907
    .local v22, "historicalX":I
    const/16 v23, 0x0

    .line 908
    .local v23, "historicalY":I
    const/4 v9, -0x1

    .line 909
    .local v9, "historicalKeyIndex":I
    const/16 v24, 0x0

    .local v24, "historyIndex":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_1b

    .line 910
    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v22, v0

    .line 911
    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v23, v0

    .line 912
    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveKey(II)I

    move-result v9

    .line 913
    const/4 v4, -0x1

    if-ne v9, v4, :cond_1a

    .line 914
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    .line 909
    :cond_16
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 883
    .end local v9    # "historicalKeyIndex":I
    .end local v22    # "historicalX":I
    .end local v23    # "historicalY":I
    .end local v24    # "historyIndex":I
    .end local v28    # "size":I
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v4

    if-nez v4, :cond_15

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->resetMultiTap()V

    .line 885
    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 886
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_15

    .line 887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v6, v15, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto/16 :goto_4

    .line 891
    :cond_18
    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    .line 892
    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    goto/16 :goto_4

    .line 894
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v4

    if-nez v4, :cond_15

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->resetMultiTap()V

    .line 896
    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    goto/16 :goto_4

    .line 917
    .restart local v9    # "historicalKeyIndex":I
    .restart local v22    # "historicalX":I
    .restart local v23    # "historicalY":I
    .restart local v24    # "historyIndex":I
    .restart local v28    # "size":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, v22

    int-to-long v5, v0

    move/from16 v0, v23

    int-to-long v7, v0

    move-wide/from16 v10, p3

    invoke-interface/range {v4 .. v11}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->moveTrace(JJIJ)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 919
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    goto/16 :goto_6

    .line 923
    .end local v9    # "historicalKeyIndex":I
    .end local v22    # "historicalX":I
    .end local v23    # "historicalY":I
    .end local v24    # "historyIndex":I
    .end local v28    # "size":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    int-to-long v11, v0

    move/from16 v0, p2

    int-to-long v13, v0

    move-wide/from16 v16, p3

    invoke-interface/range {v10 .. v17}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->moveTrace(JJIJ)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 924
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    .line 925
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 926
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mXt9Version:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1c

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftState(Z)V

    .line 929
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->updateShiftState()V

    goto/16 :goto_0

    .line 935
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isShiftKey(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    if-nez v4, :cond_1f

    .line 936
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    .line 939
    :cond_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isCtrlKey(I)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInCtrlKey:Z

    if-nez v4, :cond_21

    .line 940
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    .line 943
    :cond_21
    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mVibKeyIndex:I

    .line 944
    invoke-static/range {v25 .. v25}, Lcom/diotek/ime/framework/util/Utils;->isBumpButton(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move/from16 v0, v18

    if-eq v0, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x1

    move/from16 v0, v25

    invoke-interface {v4, v0, v5}, Lcom/diotek/ime/framework/common/InputManager;->playVibrateEffect(IZ)V

    goto/16 :goto_0
.end method

.method public onNextKeyDownEvent(IIJ)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 1328
    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    if-nez v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v1

    .line 1331
    .local v1, "keyIndex":I
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v0, p3, p4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->checkMultiTap(JI)V

    .line 1332
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    .line 1334
    .end local v1    # "keyIndex":I
    :cond_0
    return-void
.end method

.method public onUpEvent(IIJ)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 959
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->onUpEvent(IIJZ)V

    .line 960
    return-void
.end method

.method public onUpEvent(IIJZ)V
    .locals 37
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J
    .param p5, "lastDown"    # Z

    .prologue
    .line 973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const-wide/16 v6, 0x32

    move-object/from16 v0, p0

    invoke-interface {v4, v6, v7, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->dismissPreviewbyTracker(JLcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    .line 974
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    .line 976
    if-eqz p5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    if-eqz v4, :cond_0

    .line 977
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyRepeatTimer()V

    .line 978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelTextDeleteAllTimer()V

    .line 981
    :cond_0
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mVibKeyIndex:I

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->isPointingAction()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyRepeatTimer()V

    .line 987
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v4, :cond_3

    .line 1305
    :cond_2
    :goto_0
    return-void

    .line 996
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v28

    .line 997
    .local v28, "inputMethod":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v32

    .line 999
    .local v32, "isTouchExplorationEnabled":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    iget-boolean v4, v4, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    if-nez v4, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    # getter for: Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I
    invoke-static {v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->access$000(Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;)I

    move-result v6

    if-eq v4, v6, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_6

    const/16 v4, 0x8

    move/from16 v0, v28

    if-ne v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1008
    :cond_6
    const/16 v26, 0x0

    .line 1009
    .local v26, "downKeyCode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    # getter for: Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I
    invoke-static {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->access$000(Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;)I

    move-result v4

    if-ltz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    # getter for: Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I
    invoke-static {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->access$000(Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v6, v6

    if-ge v4, v6, :cond_7

    .line 1010
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    # getter for: Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I
    invoke-static {v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->access$000(Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;)I

    move-result v6

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v26, v4, v6

    .line 1012
    :cond_7
    const/16 v4, -0x75

    move/from16 v0, v26

    if-eq v0, v4, :cond_9

    .line 1013
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 1014
    const-string v4, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PT] onUpEvent - changed keyIndex, x : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mKeyState.getStartX() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mKeyState.getStartY() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", downKeyCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result p1

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result p2

    .line 1024
    .end local v26    # "downKeyCode":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_c

    const/4 v4, 0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_b

    const/16 v4, 0x8

    move/from16 v0, v28

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1028
    :cond_b
    const/16 v34, 0x0

    .line 1030
    .local v34, "nRetVal":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->onUpKey(I)V

    .line 1031
    invoke-static {}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->compareHiddenDrawingNumber()I

    move-result v34

    .line 1032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v34

    invoke-static {v4, v0}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->doHiddenNumber(Landroid/content/Context;I)Z

    .line 1035
    .end local v34    # "nRetVal":I
    :cond_c
    if-eqz p5, :cond_d

    .line 1036
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    .line 1038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressSplitMoveTimer()V

    .line 1041
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    if-nez v4, :cond_2

    .line 1045
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-eqz v4, :cond_17

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v5

    .line 1047
    .local v5, "keyIndex":I
    const/16 v36, 0x0

    .line 1048
    .local v36, "xDistance":I
    const/16 v25, 0x0

    .line 1050
    .local v25, "criticalValue":I
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    .line 1051
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    .line 1060
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    .line 1062
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    if-eqz v4, :cond_11

    .line 1063
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mDownXPointInSpaceKey:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    const/high16 v6, 0x3f800000

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v36, v0

    .line 1067
    :goto_1
    if-lez v36, :cond_12

    const/16 v31, 0x1

    .line 1068
    .local v31, "isToNext":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    if-eqz v4, :cond_13

    .line 1069
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getCriticalValue()I

    move-result v25

    .line 1080
    :goto_3
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getSpaceLanguageChangingThreshold()I

    move-result v33

    .line 1081
    .local v33, "minimumDistance":I
    move/from16 v0, v25

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    move/from16 v25, v33

    .line 1083
    :cond_e
    const/16 v30, 0x0

    .line 1085
    .local v30, "isChangeLanguage":Z
    if-eqz p5, :cond_15

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move/from16 v0, v25

    if-lt v4, v0, :cond_15

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    if-eqz v4, :cond_f

    .line 1087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->handleRangeChange(ZZ)V

    .line 1089
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/common/InputManager;->toggleLanguage(Z)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->setInLangaugeChanging(Z)V

    .line 1091
    const/16 v30, 0x1

    .line 1101
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v30, :cond_2

    .line 1102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateKey(I)V

    goto/16 :goto_0

    .line 1065
    .end local v30    # "isChangeLanguage":Z
    .end local v31    # "isToNext":Z
    .end local v33    # "minimumDistance":I
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mDownXPointInSpaceKey:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    const/high16 v6, 0x40400000

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v36, v0

    goto :goto_1

    .line 1067
    :cond_12
    const/16 v31, 0x0

    goto :goto_2

    .line 1071
    .restart local v31    # "isToNext":Z
    :cond_13
    const/16 v25, 0x0

    .line 1072
    if-eqz v31, :cond_14

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SPACE_LANGUAGE_LEFT_CHANGABLE_CRITICAL_VALUE"

    const/16 v7, 0x12c

    invoke-interface {v4, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v25

    goto :goto_3

    .line 1075
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SPACE_LANGUAGE_RIGHT_CHANGABLE_CRITICAL_VALUE"

    const/16 v7, 0x12c

    invoke-interface {v4, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v25

    goto :goto_3

    .line 1092
    .restart local v30    # "isChangeLanguage":Z
    .restart local v33    # "minimumDistance":I
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    if-nez v4, :cond_10

    .line 1093
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v4, :cond_16

    if-eqz v32, :cond_10

    .line 1094
    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_10

    .line 1095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move-wide/from16 v0, p3

    invoke-interface {v4, v0, v1, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->checkMultiTap(JI)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-interface/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    goto :goto_4

    .line 1104
    .end local v5    # "keyIndex":I
    .end local v25    # "criticalValue":I
    .end local v30    # "isChangeLanguage":Z
    .end local v31    # "isToNext":Z
    .end local v33    # "minimumDistance":I
    .end local v36    # "xDistance":I
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    if-eqz v4, :cond_18

    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    .line 1106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->handleHwrTouchUp(IIJ)Z

    goto/16 :goto_0

    .line 1109
    :cond_18
    const/4 v5, -0x1

    .line 1111
    .restart local v5    # "keyIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFlick:Lcom/diotek/ime/framework/trace/KeyboardFlick;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardFlick;->isFlickMode()Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFlickUmlaut:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFlickUmlaut:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->isFlickMode()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1112
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getStartX()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getStartY()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onUpKey(II)I

    move-result v5

    .line 1122
    :goto_5
    const/4 v12, -0x1

    .line 1123
    .local v12, "keyCode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v4, v4

    if-ge v5, v4, :cond_2

    .line 1127
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isGreekKeyInvisible(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1128
    add-int/lit8 v5, v5, 0x1

    .line 1131
    :cond_1a
    if-ltz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v4, v4

    if-ge v5, v4, :cond_1b

    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v12, v4, v6

    .line 1134
    :cond_1b
    const/16 v4, -0x66

    if-ne v12, v4, :cond_1c

    .line 1135
    const/4 v4, 0x0

    sput-boolean v4, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownSymKey:Z

    .line 1137
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1d

    .line 1142
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    int-to-long v7, v0

    move/from16 v0, p2

    int-to-long v9, v0

    move v11, v5

    move/from16 v13, p5

    move-wide/from16 v14, p3

    invoke-interface/range {v6 .. v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->releaseTrace(JJIIZJ)Z

    .line 1146
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_1f

    const/16 v4, -0x66

    if-ne v12, v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1150
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_1e

    .line 1151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v27

    .line 1152
    .local v27, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v27, :cond_1e

    .line 1153
    const/16 v4, -0x190

    if-ne v12, v4, :cond_22

    const/16 v19, 0x3b

    .line 1155
    .local v19, "event":I
    :goto_6
    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x41

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-direct/range {v13 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1160
    .end local v19    # "event":I
    .end local v27    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v6, -0xff

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftHoldOn(Z)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 1166
    :cond_1f
    const/4 v4, -0x1

    if-ne v5, v4, :cond_23

    .line 1167
    const/4 v4, -0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    goto/16 :goto_0

    .line 1114
    .end local v12    # "keyCode":I
    :cond_20
    invoke-direct/range {p0 .. p4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isFilteringEvent(IIJ)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getDownKeyIndex()I

    move-result v5

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result p1

    .line 1117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result p2

    goto/16 :goto_5

    .line 1119
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onUpKey(II)I

    move-result v5

    goto/16 :goto_5

    .line 1153
    .restart local v12    # "keyCode":I
    .restart local v27    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_22
    const/16 v19, 0x3c

    goto :goto_6

    .line 1170
    .end local v27    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getPressedShiftKeyCode()I

    move-result v35

    .line 1172
    .local v35, "oldShiftKeyCode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isRapidInput()Z

    move-result v4

    if-nez v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isRapidInput()Z

    move-result v4

    if-nez v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isHoverEvent()Z

    move-result v4

    if-nez v4, :cond_40

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v4, :cond_25

    if-eqz v32, :cond_40

    :cond_25
    const/16 v4, -0x190

    if-eq v12, v4, :cond_26

    const/16 v4, -0x19a

    if-ne v12, v4, :cond_40

    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-nez v4, :cond_40

    .line 1176
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_27

    .line 1177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v27

    .line 1178
    .restart local v27    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v27, :cond_27

    .line 1179
    const/16 v4, -0x190

    if-ne v12, v4, :cond_29

    const/16 v19, 0x3b

    .line 1180
    .restart local v19    # "event":I
    :goto_7
    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-direct/range {v13 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1186
    .end local v19    # "event":I
    .end local v27    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_27
    const/16 v4, -0x190

    if-eq v12, v4, :cond_28

    const/16 v4, -0x19a

    if-ne v12, v4, :cond_2d

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftHoldOnState()Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v29

    .line 1189
    .local v29, "isCapslock":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftMomentaryState()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 1202
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v6, -0xff

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftHoldOn(Z)V

    .line 1205
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    goto/16 :goto_0

    .line 1179
    .end local v29    # "isCapslock":Z
    .restart local v27    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_29
    const/16 v19, 0x3c

    goto :goto_7

    .line 1193
    .end local v27    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v29    # "isCapslock":Z
    :cond_2a
    if-eqz v32, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v4, v12, v6}, Lcom/diotek/ime/framework/common/InputManager;->playVibrateEffect(IZ)V

    .line 1198
    :cond_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v29, :cond_2c

    const/4 v4, 0x1

    :goto_9
    invoke-interface {v6, v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    goto :goto_8

    .line 1198
    :cond_2c
    const/4 v4, 0x0

    goto :goto_9

    .line 1208
    .end local v29    # "isCapslock":Z
    :cond_2d
    const/16 v4, -0xff

    move/from16 v0, v35

    if-eq v0, v4, :cond_2e

    move/from16 v0, v35

    if-ne v0, v12, :cond_2f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_30

    .line 1210
    :cond_2f
    const-string v4, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpEvent()oldShiftKeyCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " keyCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1215
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftMomentaryState()Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSplitTapState()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1216
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getIsUserSelecting()Z

    move-result v4

    if-nez v4, :cond_32

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->toggleShiftState()V

    .line 1219
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setSplitTapState(Z)V

    .line 1222
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v6, -0xff

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftHoldOn(Z)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getIsUserSelecting()Z

    move-result v4

    if-nez v4, :cond_34

    .line 1227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 1229
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setIsUserSelecting(Z)V

    .line 1237
    :cond_35
    :goto_a
    const/16 v4, -0x3e

    if-ne v12, v4, :cond_42

    .line 1238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/input/InputController;->setAcuteAccentPressed(Z)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/input/InputController;->getAcuteAccentSplitState()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/input/InputController;->updateAcuteAccentState(Z)V

    .line 1242
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/input/InputController;->setAcuteAccentSplitState(Z)V

    .line 1253
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_37
    const/16 v4, -0x3e8

    if-eq v12, v4, :cond_38

    const/16 v4, -0x6c

    if-eq v12, v4, :cond_38

    const/16 v4, -0x75

    if-eq v12, v4, :cond_38

    const/16 v4, -0x3e8

    if-eq v12, v4, :cond_39

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointerCount:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_39

    .line 1259
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateCtrlState()V

    .line 1265
    :cond_39
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v5

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyX()I

    move-result p1

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyY()I

    move-result p2

    .line 1272
    :cond_3a
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    .line 1274
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    if-eqz v4, :cond_3b

    if-eqz v32, :cond_3f

    const/4 v4, -0x5

    if-ne v12, v4, :cond_3f

    :cond_3b
    const/16 v4, -0x6b

    if-eq v12, v4, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v4, :cond_3c

    if-eqz v32, :cond_3f

    .line 1277
    :cond_3c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3f

    .line 1279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move-wide/from16 v0, p3

    invoke-interface {v4, v0, v1, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->checkMultiTap(JI)V

    .line 1280
    if-eqz v32, :cond_47

    .line 1281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isRapidInput()Z

    move-result v4

    if-nez v4, :cond_45

    .line 1282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isFingerInput()Z

    move-result v4

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isHoverEvent()Z

    move-result v4

    if-eqz v4, :cond_3e

    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isFingerInput()Z

    move-result v4

    if-nez v4, :cond_44

    .line 1283
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-interface/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    .line 1298
    :cond_3f
    :goto_c
    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastInputIndex:I

    .line 1299
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastTapTime:J

    .line 1301
    const/4 v4, -0x5

    if-ne v12, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto/16 :goto_0

    .line 1230
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftState()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setSplitTapState(Z)V

    goto/16 :goto_a

    .line 1245
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/input/InputController;->getAcuteAccentPressed()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/input/InputController;->setAcuteAccentSplitState(Z)V

    goto/16 :goto_b

    .line 1248
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/input/InputController;->setAcuteAccentSplitState(Z)V

    .line 1249
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setAccuteState(Z)V

    goto/16 :goto_b

    .line 1285
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->setHoverEvent(Z)V

    goto :goto_c

    .line 1288
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isHoverEvent()Z

    move-result v4

    if-nez v4, :cond_46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1289
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-interface/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->setHoverEvent(Z)V

    goto/16 :goto_c

    .line 1294
    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-interface/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    goto/16 :goto_c
.end method

.method public repeatKey(I)V
    .locals 7
    .param p1, "keyIndex"    # I

    .prologue
    .line 1342
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v6

    .line 1343
    .local v6, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v6, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    iget v2, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v3, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    const-wide/16 v4, -0x1

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    .line 1348
    :cond_0
    return-void
.end method

.method public setAlreadyComposed()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    .line 515
    return-void
.end method

.method public setAlreadyProcessed()V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setAlreadyProcessed(Z)V

    .line 511
    return-void
.end method

.method public setAlreadyProcessed(Z)V
    .locals 2
    .param p1, "processed"    # Z

    .prologue
    .line 518
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->updateKey(IZ)V

    .line 519
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 520
    return-void
.end method

.method public setHwrTracker(Z)V
    .locals 0
    .param p1, "isHwrTracker"    # Z

    .prologue
    .line 1485
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    .line 1486
    return-void
.end method

.method public setIsHoverTracker(Z)V
    .locals 0
    .param p1, "isHover"    # Z

    .prologue
    .line 1521
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    .line 1522
    return-void
.end method

.method public setKeyIndexAndNearbyCodes(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 416
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0, p1, p2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->setKeyIndexAndNearbyCodes(II)V

    goto :goto_0
.end method

.method public setKeyboard([Lcom/diotek/ime/framework/view/Keyboard$Key;F)V
    .locals 1
    .param p1, "keys"    # [Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "keyHysteresisDistance"    # F

    .prologue
    .line 372
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 375
    :cond_1
    iput-object p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 376
    mul-float v0, p2, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyHysteresisDistanceSquared:I

    .line 378
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onSetKeyboard()V

    .line 379
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mListener:Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    .line 363
    return-void
.end method

.method public setPointerCount(I)V
    .locals 0
    .param p1, "pointerCount"    # I

    .prologue
    .line 1628
    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointerCount:I

    .line 1629
    return-void
.end method

.method public setPopupKeyboardTracker(Z)V
    .locals 0
    .param p1, "isPopupKeyboardTracker"    # Z

    .prologue
    .line 1505
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsPopupKeyboardTracker:Z

    .line 1506
    return-void
.end method

.method public setPreviewMode(Z)V
    .locals 0
    .param p1, "previewMode"    # Z

    .prologue
    .line 1643
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviewMode:Z

    .line 1644
    return-void
.end method

.method public setSymbolPopupKeyboardTracker(Z)V
    .locals 0
    .param p1, "isSymbolPopupKeyboardTracker"    # Z

    .prologue
    .line 1513
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsSymbolPopupKeyboardTracker:Z

    .line 1514
    return-void
.end method

.method public updateHoverKey(I)V
    .locals 4
    .param p1, "keyIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 1538
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1539
    iget v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    iget v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    invoke-interface {v1, v2, p0, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateHoverKey(ILcom/diotek/ime/framework/view/tracker/PointerTracker;Z)V

    .line 1541
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->initPreviousHoverKey()V

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    .line 1546
    .local v0, "oldKeyIndex":I
    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    .line 1547
    if-eq p1, v0, :cond_0

    .line 1548
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1549
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v1, v0, p0, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateHoverKey(ILcom/diotek/ime/framework/view/tracker/PointerTracker;Z)V

    .line 1551
    :cond_2
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, p0, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateHoverKey(ILcom/diotek/ime/framework/view/tracker/PointerTracker;Z)V

    goto :goto_0
.end method

.method public updateKey(IZ)V
    .locals 6
    .param p1, "keyIndex"    # I
    .param p2, "updateKey"    # Z

    .prologue
    const/16 v5, 0x80

    const/4 v4, -0x1

    const/16 v3, 0x100

    .line 463
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v2, :cond_1

    .line 464
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 465
    const-string v2, "SamsungIME"

    const-string v3, "<PointTracker> - updateKey() return because mKeyAlreadyProcessed is true "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousKey:I

    .line 470
    .local v1, "oldKeyIndex":I
    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousKey:I

    .line 471
    if-eq p1, v1, :cond_0

    .line 472
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 474
    if-ne p1, v4, :cond_7

    const/4 v0, 0x1

    .line 475
    .local v0, "inside":Z
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    if-eqz v2, :cond_2

    .line 476
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/diotek/ime/framework/view/Keyboard$Key;->onReleased(Z)V

    .line 477
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateKey(I)V

    .line 479
    :cond_2
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v2, :cond_8

    .line 480
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    .line 486
    .end local v0    # "inside":Z
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    if-eqz p2, :cond_4

    .line 488
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/Keyboard$Key;->onPressed()V

    .line 489
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateKey(I)V

    .line 491
    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 492
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPopupWindowShown()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eq v1, v4, :cond_0

    .line 493
    :cond_6
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v5, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    .line 495
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v3, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    goto :goto_0

    .line 474
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 481
    .restart local v0    # "inside":Z
    :cond_8
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isShiftKey(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 482
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v5, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    .line 483
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    goto :goto_2

    .line 497
    .end local v0    # "inside":Z
    :cond_9
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/16 v3, 0x4000

    invoke-interface {v2, v3, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    goto/16 :goto_0
.end method
