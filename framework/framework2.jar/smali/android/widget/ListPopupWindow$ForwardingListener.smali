.class public abstract Landroid/widget/ListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    iput-object p1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1213
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    .line 1214
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    .line 1216
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1217
    return-void
.end method

.method static synthetic access$800(Landroid/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ListPopupWindow$ForwardingListener;

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1349
    iget-object v4, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1350
    .local v4, "src":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v3

    .line 1351
    .local v3, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1368
    :cond_f
    :goto_f
    return v2

    .line 1355
    :cond_10
    # getter for: Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->access$600(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    .line 1356
    .local v0, "dst":Landroid/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1361
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1362
    .local v1, "dstEvent":Landroid/view/MotionEvent;
    invoke-virtual {v4, v1}, Landroid/view/View;->toGlobalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1363
    invoke-virtual {v0, v1}, Landroid/view/View;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1366
    iget v5, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 1367
    .local v2, "handled":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_f
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1300
    iget-object v2, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1301
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_b

    .line 1338
    :cond_a
    :goto_a
    return v5

    .line 1305
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1306
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_66

    goto :goto_a

    .line 1308
    :pswitch_13
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1309
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v6, :cond_25

    .line 1310
    new-instance v6, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Landroid/widget/ListPopupWindow$ForwardingListener;Landroid/widget/ListPopupWindow$1;)V

    iput-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 1312
    :cond_25
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    int-to-long v7, v7

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    .line 1315
    :pswitch_2e
    iget v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1316
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_a

    .line 1317
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1318
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1319
    .local v4, "y":F
    iget v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-virtual {v2, v3, v4, v7}, Landroid/view/View;->pointInView(FFF)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1321
    iget-object v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v7, :cond_4f

    .line 1322
    iget-object v7, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v2, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1324
    :cond_4f
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1325
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    move v5, v6

    .line 1326
    goto :goto_a

    .line 1332
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_5b
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v6, :cond_a

    .line 1333
    iget-object v6, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 1306
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_13
        :pswitch_5b
        :pswitch_2e
        :pswitch_5b
    .end packed-switch
.end method


# virtual methods
.method public abstract getPopup()Landroid/widget/ListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .registers 3

    .prologue
    .line 1269
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 1270
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1271
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1273
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method protected onForwardingStopped()Z
    .registers 3

    .prologue
    .line 1286
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 1287
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1288
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1290
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1233
    iget-boolean v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1235
    .local v1, "wasForwarding":Z
    if-eqz v1, :cond_1d

    .line 1236
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    move-result v4

    if-nez v4, :cond_1b

    :cond_12
    move v0, v3

    .line 1241
    .local v0, "forwarding":Z
    :goto_13
    iput-boolean v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1242
    if-nez v0, :cond_19

    if-eqz v1, :cond_1a

    :cond_19
    move v2, v3

    :cond_1a
    return v2

    .end local v0    # "forwarding":Z
    :cond_1b
    move v0, v2

    .line 1236
    goto :goto_13

    .line 1238
    :cond_1d
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v4

    if-eqz v4, :cond_2b

    move v0, v3

    .restart local v0    # "forwarding":Z
    :goto_2a
    goto :goto_13

    .end local v0    # "forwarding":Z
    :cond_2b
    move v0, v2

    goto :goto_2a
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1247
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1252
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1254
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    .line 1255
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1257
    :cond_11
    return-void
.end method
