.class final Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4390
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 4391
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4392
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 16
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v6, 0x0

    .line 4396
    const/4 v2, 0x0

    .line 4397
    .local v2, "handled":Z
    const/4 v5, 0x0

    .line 4399
    .local v5, "spenCropped":Z
    :try_start_5
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_72

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_72

    .line 4401
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v3, v0

    .line 4402
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_64

    .line 4404
    const/4 v1, 0x0

    .line 4405
    .local v1, "changed":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_8c

    .line 4411
    :try_start_25
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v8, v8, 0x2

    or-int/lit8 v8, v8, 0x1

    or-int/lit8 v4, v8, 0x4

    .line 4415
    .local v4, "newVal":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v8, v4, :cond_3a

    .line 4416
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v4, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 4417
    const/4 v1, 0x1

    .line 4422
    :cond_3a
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    or-int/lit8 v4, v8, 0x2

    .line 4424
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eq v8, v4, :cond_5a

    .line 4425
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v4, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 4426
    const/4 v1, 0x1

    .line 4427
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4429
    :cond_5a
    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_25 .. :try_end_5b} :catchall_89

    .line 4430
    if-eqz v1, :cond_64

    .line 4431
    :try_start_5d
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 4434
    .end local v1    # "changed":Z
    .end local v4    # "newVal":I
    :cond_64
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    if-ne v7, v12, :cond_a4

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_8c

    move-result v7

    if-ne v7, v12, :cond_a4

    const/4 v5, 0x1

    .line 4437
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    :cond_72
    :goto_72
    invoke-virtual {p0, p1, v2}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 4438
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v6, :cond_88

    if-eqz v5, :cond_88

    .line 4439
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 4440
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v13, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 4443
    :cond_88
    return-void

    .line 4429
    .restart local v1    # "changed":Z
    .restart local v3    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_89
    move-exception v6

    :try_start_8a
    monitor-exit v7
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v6
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8c

    .line 4437
    .end local v1    # "changed":Z
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_8c
    move-exception v6

    invoke-virtual {p0, p1, v2}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 4438
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v7, :cond_a3

    if-eqz v5, :cond_a3

    .line 4439
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 4440
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object v13, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    :cond_a3
    throw v6

    .restart local v3    # "motionEvent":Landroid/view/MotionEvent;
    :cond_a4
    move v5, v6

    .line 4434
    goto :goto_72
.end method
