.class final Landroid/view/ViewRootImpl$GestureSurfaceTouch;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GestureSurfaceTouch"
.end annotation


# instance fields
.field private final TOUCH_DISABLE:I

.field private final TOUCH_ENABLE:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .registers 4
    .param p2, "baseContext"    # Landroid/content/Context;

    .prologue
    .line 530
    iput-object p1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 527
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->TOUCH_DISABLE:I

    .line 528
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->TOUCH_ENABLE:I

    .line 531
    iput-object p2, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    .line 532
    return-void
.end method


# virtual methods
.method public onInitSweep(I)Z
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public onPalm(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public onSweepDown(I)Z
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .registers 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "angle"    # F

    .prologue
    .line 611
    const/4 v0, 0x0

    return v0
.end method
