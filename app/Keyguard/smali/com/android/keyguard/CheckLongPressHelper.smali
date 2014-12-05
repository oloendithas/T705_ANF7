.class public Lcom/android/keyguard/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mHasPerformedLongPress:Z

.field private mLongPressTimeout:I

.field private mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

.field private mScaledTouchSlop:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mScaledTouchSlop:I

    .line 45
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mLongPressTimeout:I

    .line 46
    iput-object p1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CheckLongPressHelper;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/CheckLongPressHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/CheckLongPressHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/CheckLongPressHelper;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/CheckLongPressHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/CheckLongPressHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return p1
.end method


# virtual methods
.method public cancelLongPress()V
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    if-eqz v0, :cond_11

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    .line 77
    :cond_11
    return-void
.end method

.method public onMove(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 62
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 63
    .local v2, "y":F
    iget v6, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownX:F

    sub-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/keyguard/CheckLongPressHelper;->mScaledTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_30

    move v1, v4

    .line 64
    .local v1, "xMoved":Z
    :goto_19
    iget v6, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownY:F

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/keyguard/CheckLongPressHelper;->mScaledTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_32

    move v3, v4

    .line 66
    .local v3, "yMoved":Z
    :goto_28
    if-nez v1, :cond_2c

    if-eqz v3, :cond_2f

    .line 67
    :cond_2c
    invoke-virtual {p0}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    .line 69
    :cond_2f
    return-void

    .end local v1    # "xMoved":Z
    .end local v3    # "yMoved":Z
    :cond_30
    move v1, v5

    .line 63
    goto :goto_19

    .restart local v1    # "xMoved":Z
    :cond_32
    move v3, v5

    .line 64
    goto :goto_28
.end method

.method public postCheckForLongPress(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownX:F

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownY:F

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    if-nez v0, :cond_1a

    .line 55
    new-instance v0, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;-><init>(Lcom/android/keyguard/CheckLongPressHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    .line 57
    :cond_1a
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    iget v2, p0, Lcom/android/keyguard/CheckLongPressHelper;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    return-void
.end method
