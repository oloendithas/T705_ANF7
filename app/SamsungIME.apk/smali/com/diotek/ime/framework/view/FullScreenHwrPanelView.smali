.class public Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;
.super Lcom/diotek/ime/implement/view/HwrKeyboardView;
.source "FullScreenHwrPanelView.java"


# static fields
.field private static final MAX_MOVEABLE_LIMIT:I = 0x5


# instance fields
.field private mDefaultKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mDownOnHwrArea:Z

.field private mIntent:Landroid/content/Intent;

.field private mOnHwrWriting:Z

.field private mOnIntentPointArea:Z

.field private mParentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

.field private mStatusBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v3, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mDefaultKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mDownOnHwrArea:Z

    .line 29
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnHwrWriting:Z

    .line 31
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnIntentPointArea:Z

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "samsunghandwrite"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mIntent:Landroid/content/Intent;

    .line 34
    iput v2, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mStatusBarHeight:I

    .line 35
    iput-object v3, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mParentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 39
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/implement/view/HwrKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-object v3, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mDefaultKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mDownOnHwrArea:Z

    .line 29
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnHwrWriting:Z

    .line 31
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnIntentPointArea:Z

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "samsunghandwrite"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mIntent:Landroid/content/Intent;

    .line 34
    iput v2, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mStatusBarHeight:I

    .line 35
    iput-object v3, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mParentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 44
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->init()V

    .line 45
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mStrokeCount:I

    .line 144
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->invalidateHwrRect()V

    .line 145
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->init(Landroid/content/res/Resources;)V

    .line 50
    return-void
.end method

.method private sendIntentMessage(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->clear()V

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnIntentPointArea:Z

    .line 163
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 164
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mStatusBarHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 165
    iget-object v1, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mIntent:Landroid/content/Intent;

    const-string v2, "M"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    return-void
.end method


# virtual methods
.method protected getKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "currentKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "isEnabled"    # Z
    .param p3, "isDrawHoverKey"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInvisibleKeyBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getKeypadBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInvisibleKeyBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateHwrBackgound()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->invalidateHwrBackgound()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnHwrWriting:Z

    .line 157
    return-void
.end method

.method public invalidateHwrRect()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->invalidateHwrRect()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnHwrWriting:Z

    .line 151
    return-void
.end method

.method public onHwrPanelLongPressed(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "longpressedPoint"    # Landroid/graphics/Point;

    .prologue
    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnIntentPointArea:Z

    .line 172
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->onHwrPanelLongPressed(Landroid/graphics/Point;)V

    .line 173
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnHwrWriting:Z

    .line 174
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 15
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "isHover"    # Z

    .prologue
    .line 65
    iget v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mStatusBarHeight:I

    if-nez v12, :cond_0

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    sub-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mStatusBarHeight:I

    .line 69
    :cond_0
    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mStatusbarHeight : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mStatusBarHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 71
    .local v0, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 72
    .local v10, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 73
    .local v11, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 75
    .local v5, "eventTime":J
    const/4 v2, 0x0

    .line 76
    .local v2, "candidateViewHeight":I
    const/4 v8, 0x0

    .line 77
    .local v8, "inputViewHeight":I
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v7

    .line 78
    .local v7, "inputView":Landroid/view/View;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_1

    .line 80
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 82
    :cond_1
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "candidateView":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_2

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 87
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v12, v8

    sub-int/2addr v12, v2

    iget v13, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mStatusBarHeight:I

    sub-int v9, v12, v13

    .line 89
    .local v9, "writable_y":I
    if-nez v0, :cond_3

    .line 90
    if-le v11, v9, :cond_5

    .line 91
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mDownOnHwrArea:Z

    .line 97
    :cond_3
    :goto_0
    iget-object v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mParentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardOnScreen()Z

    move-result v12

    if-nez v12, :cond_4

    iget-boolean v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnHwrWriting:Z

    if-nez v12, :cond_8

    iget-boolean v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mDownOnHwrArea:Z

    if-nez v12, :cond_8

    .line 99
    :cond_4
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->clear()V

    .line 100
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 101
    .local v4, "event":Landroid/view/MotionEvent;
    iget-object v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mParentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardOnScreen()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v12, v8

    iget v13, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mStatusBarHeight:I

    sub-int/2addr v12, v13

    sub-int v3, v11, v12

    .line 103
    .local v3, "dispatchY":I
    int-to-float v12, v10

    int-to-float v13, v3

    invoke-virtual {v4, v12, v13}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 104
    iget-object v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mParentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 139
    .end local v3    # "dispatchY":I
    :goto_1
    const/4 v12, 0x1

    .end local v4    # "event":Landroid/view/MotionEvent;
    :goto_2
    return v12

    .line 93
    :cond_5
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mDownOnHwrArea:Z

    goto :goto_0

    .line 106
    .restart local v4    # "event":Landroid/view/MotionEvent;
    :cond_6
    int-to-float v13, v10

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isFullscreenMode()Z

    move-result v12

    if-eqz v12, :cond_7

    int-to-float v12, v11

    :goto_3
    invoke-virtual {v4, v13, v12}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 107
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12, v4}, Lcom/diotek/ime/framework/common/InputManager;->dispatchTouchEventOnSoftInputPanel(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 106
    :cond_7
    sub-int v12, v11, v9

    int-to-float v12, v12

    goto :goto_3

    .line 110
    .end local v4    # "event":Landroid/view/MotionEvent;
    :cond_8
    if-nez v0, :cond_b

    .line 111
    iget v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mStrokeCount:I

    if-gtz v12, :cond_9

    .line 112
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnIntentPointArea:Z

    .line 134
    :cond_9
    :goto_4
    iget-boolean v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawnWordLongPressed:Z

    if-nez v12, :cond_a

    .line 135
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnHwrWriting:Z

    .line 137
    :cond_a
    invoke-super/range {p0 .. p2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->onTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v12

    goto :goto_2

    .line 114
    :cond_b
    const/4 v12, 0x2

    if-ne v0, v12, :cond_d

    .line 115
    iget v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mStrokeCount:I

    const/4 v13, 0x1

    if-gt v12, v13, :cond_9

    .line 116
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrDownPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    add-int/lit8 v12, v12, 0x5

    if-lt v12, v10, :cond_c

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrDownPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    add-int/lit8 v12, v12, -0x5

    if-gt v12, v10, :cond_c

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrDownPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, 0x5

    if-lt v12, v11, :cond_c

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrDownPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, -0x5

    if-le v12, v11, :cond_9

    .line 118
    :cond_c
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnIntentPointArea:Z

    goto :goto_4

    .line 121
    :cond_d
    const/4 v12, 0x1

    if-ne v0, v12, :cond_9

    .line 122
    iget v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mStrokeCount:I

    const/4 v13, 0x1

    if-gt v12, v13, :cond_f

    .line 123
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrDownPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    add-int/lit8 v12, v12, 0x5

    if-lt v12, v10, :cond_e

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrDownPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    add-int/lit8 v12, v12, -0x5

    if-gt v12, v10, :cond_e

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrDownPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, 0x5

    if-lt v12, v11, :cond_e

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrDownPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, -0x5

    if-le v12, v11, :cond_f

    .line 125
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnIntentPointArea:Z

    .line 128
    :cond_f
    iget-boolean v12, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mOnIntentPointArea:Z

    if-eqz v12, :cond_9

    .line 129
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->sendIntentMessage(Landroid/view/MotionEvent;)V

    .line 130
    invoke-virtual {p0, v10, v11, v5, v6}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->handleHwrTouchCancel(IIJ)Z

    .line 131
    const/4 v12, 0x1

    goto/16 :goto_2
.end method

.method public setParentView(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0
    .param p1, "parent"    # Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;->mParentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 179
    return-void
.end method
