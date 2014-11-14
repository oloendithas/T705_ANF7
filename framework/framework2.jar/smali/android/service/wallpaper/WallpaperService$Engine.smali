.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConfiguration:Landroid/content/res/Configuration;

.field mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowFlags:I

.field mCurWindowPrivateFlags:I

.field mDestroyed:Z

.field mDrawingAllowed:Z

.field mFixedSizeAllowed:Z

.field mFormat:I

.field mHeight:I

.field mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field mInitializing:Z

.field mInputChannel:Landroid/view/InputChannel;

.field mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field mIsCreating:Z

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLock:Ljava/lang/Object;

.field mOffsetMessageEnqueued:Z

.field mOffsetsChanged:Z

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mPendingMove:Landroid/view/MotionEvent;

.field mPendingSync:Z

.field mPendingXOffset:F

.field mPendingXOffsetStep:F

.field mPendingYOffset:F

.field mPendingYOffsetStep:F

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mReportedVisible:Z

.field mScreenOn:Z

.field mSession:Landroid/view/IWindowSession;

.field mSurfaceCreated:Z

.field final mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mType:I

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Lcom/android/internal/view/BaseIWindow;

.field mWindowFlags:I

.field mWindowPrivateFlags:I

.field mWindowToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 127
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 137
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    .line 154
    const/16 v0, 0x10

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 155
    const/4 v0, 0x4

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 157
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 158
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    .line 165
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 179
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 259
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    return-void
.end method

.method static synthetic access$000(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Landroid/service/wallpaper/WallpaperService$Engine;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 550
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 551
    :try_start_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_21

    .line 552
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 556
    :goto_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_25

    .line 557
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2738

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 558
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 562
    .end local v0    # "msg":Landroid/os/Message;
    :goto_20
    return-void

    .line 554
    :cond_21
    const/4 v1, 0x0

    :try_start_22
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_12

    .line 556
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_25

    throw v1

    .line 560
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_20
.end method


# virtual methods
.method attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .registers 6
    .param p1, "wrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .prologue
    const/4 v3, 0x0

    .line 763
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v1, :cond_6

    .line 791
    :goto_5
    return-void

    .line 767
    :cond_6
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 768
    # getter for: Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->access$100(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 769
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 770
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 771
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 772
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 774
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 776
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 778
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    .line 780
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 781
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 786
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 788
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 789
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 790
    invoke-virtual {p0, v3, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    goto :goto_5
.end method

.method detach()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 911
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_7

    .line 953
    :cond_6
    :goto_6
    return-void

    .line 915
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 917
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_13

    .line 918
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 920
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 923
    :cond_13
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 926
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 928
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 930
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_6

    .line 935
    :try_start_24
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v0, :cond_30

    .line 936
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 940
    :cond_30
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_37} :catch_4c

    .line 943
    :goto_37
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 944
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 948
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_6

    .line 949
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 950
    iput-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    goto :goto_6

    .line 941
    :catch_4c
    move-exception v0

    goto :goto_37
.end method

.method doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .registers 10
    .param p1, "cmd"    # Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .prologue
    .line 879
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_25

    .line 880
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v7

    .line 885
    .local v7, "result":Landroid/os/Bundle;
    :goto_15
    iget-boolean v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v0, :cond_24

    .line 888
    :try_start_19
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v1}, Landroid/view/IWindow$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_27

    .line 892
    :cond_24
    :goto_24
    return-void

    .line 883
    .end local v7    # "result":Landroid/os/Bundle;
    :cond_25
    const/4 v7, 0x0

    .restart local v7    # "result":Landroid/os/Bundle;
    goto :goto_15

    .line 889
    :catch_27
    move-exception v0

    goto :goto_24
.end method

.method doDesiredSizeChanged(II)V
    .registers 4
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .prologue
    .line 794
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_13

    .line 797
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 798
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 799
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 800
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 802
    :cond_13
    return-void
.end method

.method doOffsetsChanged(Z)V
    .registers 15
    .param p1, "always"    # Z

    .prologue
    const/high16 v12, 0x3f000000

    const/4 v0, 0x0

    .line 831
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v10, :cond_8

    .line 875
    :cond_7
    :goto_7
    return-void

    .line 835
    :cond_8
    if-nez p1, :cond_e

    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-eqz v10, :cond_7

    .line 844
    :cond_e
    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 845
    :try_start_11
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 846
    .local v1, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 847
    .local v2, "yOffset":F
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 848
    .local v3, "xOffsetStep":F
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 849
    .local v4, "yOffsetStep":F
    iget-boolean v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 850
    .local v9, "sync":Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 851
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 852
    monitor-exit v10
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_5c

    .line 854
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v10, :cond_4c

    .line 855
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v10, :cond_63

    .line 858
    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v10, v10, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int v8, v10, v11

    .line 859
    .local v8, "availw":I
    if-lez v8, :cond_5f

    int-to-float v10, v8

    mul-float/2addr v10, v1

    add-float/2addr v10, v12

    float-to-int v10, v10

    neg-int v5, v10

    .line 860
    .local v5, "xPixels":I
    :goto_39
    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v10, v10, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v7, v10, v11

    .line 861
    .local v7, "availh":I
    if-lez v7, :cond_61

    int-to-float v0, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v12

    float-to-int v0, v0

    neg-int v6, v0

    .local v6, "yPixels":I
    :goto_48
    move-object v0, p0

    .line 862
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 868
    .end local v5    # "xPixels":I
    .end local v6    # "yPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_4c
    :goto_4c
    if-eqz v9, :cond_7

    .line 871
    :try_start_4e
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v10}, Landroid/view/IWindow$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_59} :catch_5a

    goto :goto_7

    .line 872
    :catch_5a
    move-exception v0

    goto :goto_7

    .line 852
    .end local v1    # "xOffset":F
    .end local v2    # "yOffset":F
    .end local v3    # "xOffsetStep":F
    .end local v4    # "yOffsetStep":F
    .end local v9    # "sync":Z
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v10
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0

    .restart local v1    # "xOffset":F
    .restart local v2    # "yOffset":F
    .restart local v3    # "xOffsetStep":F
    .restart local v4    # "yOffsetStep":F
    .restart local v8    # "availw":I
    .restart local v9    # "sync":Z
    :cond_5f
    move v5, v0

    .line 859
    goto :goto_39

    .restart local v5    # "xPixels":I
    .restart local v7    # "availh":I
    :cond_61
    move v6, v0

    .line 861
    goto :goto_48

    .line 864
    .end local v5    # "xPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    goto :goto_4c
.end method

.method doVisibilityChanged(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 805
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_9

    .line 806
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 807
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 809
    :cond_9
    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 509
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 510
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 511
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 512
    const-string v0, " mScreenOn="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 513
    const-string v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 514
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 515
    const-string v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 516
    const-string v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 517
    const-string v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 518
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 519
    const-string v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 520
    const-string v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 521
    const-string v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 522
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 523
    const-string v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 524
    const-string v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 525
    const-string v0, " mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 526
    const-string v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 527
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    const-string v0, " mWinFrame="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 530
    const-string v0, " mContentInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 532
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 533
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_111
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 535
    const-string v0, " mPendingXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 536
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingXOffsetStep="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 538
    const-string v0, " mPendingXOffsetStep="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 539
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 540
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 541
    const-string v0, " mPendingSync="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 542
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz v0, :cond_16b

    .line 543
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingMove="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 545
    :cond_16b
    monitor-exit v1

    .line 546
    return-void

    .line 545
    :catchall_16d
    move-exception v0

    monitor-exit v1
    :try_end_16f
    .catchall {:try_start_111 .. :try_end_16f} :catchall_16d

    throw v0
.end method

.method public getDesiredMinimumHeight()I
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public isPreview()Z
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 355
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .prologue
    .line 470
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 412
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .registers 3
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .prologue
    .line 478
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 420
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 7
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .prologue
    .line 449
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 485
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 499
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 506
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 492
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 438
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 428
    return-void
.end method

.method reportSurfaceDestroyed()V
    .registers 7

    .prologue
    .line 895
    iget-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v5, :cond_28

    .line 896
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 897
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 898
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 899
    .local v2, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v2, :cond_23

    .line 900
    move-object v0, v2

    .local v0, "arr$":[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_17
    if-ge v3, v4, :cond_23

    aget-object v1, v0, v3

    .line 901
    .local v1, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 900
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 906
    .end local v0    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v1    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_23
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 908
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_28
    return-void
.end method

.method reportVisibility()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 812
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v2, :cond_1f

    .line 813
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenOn:Z

    if-eqz v2, :cond_20

    const/4 v0, 0x1

    .line 814
    .local v0, "visible":Z
    :goto_e
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eq v2, v0, :cond_1f

    .line 815
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 818
    if-eqz v0, :cond_1c

    .line 822
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 823
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 825
    :cond_1c
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 828
    .end local v0    # "visible":Z
    :cond_1f
    return-void

    :cond_20
    move v0, v1

    .line 813
    goto :goto_e
.end method

.method public setFixedSizeAllowed(Z)V
    .registers 2
    .param p1, "allowed"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    .line 405
    return-void
.end method

.method public setOffsetNotificationsEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 392
    if-eqz p1, :cond_11

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    :goto_7
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 397
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_10

    .line 398
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 400
    :cond_10
    return-void

    .line 392
    :cond_11
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_7
.end method

.method public setTouchEventsEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 375
    if-eqz p1, :cond_11

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_7
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 378
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_10

    .line 379
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 381
    :cond_10
    return-void

    .line 375
    :cond_11
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_7
.end method

.method updateSurface(ZZZ)V
    .registers 38
    .param p1, "forceRelayout"    # Z
    .param p2, "forceReport"    # Z
    .param p3, "redrawNeeded"    # Z

    .prologue
    .line 565
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v2, :cond_d

    .line 566
    const-string v2, "WallpaperService"

    const-string v3, "Ignoring updateSurface: destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v28

    .line 570
    .local v28, "myWidth":I
    if-gtz v28, :cond_19

    const/16 v28, -0x1

    .line 571
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v27

    .line 572
    .local v27, "myHeight":I
    if-gtz v27, :cond_25

    const/16 v27, -0x1

    .line 574
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-nez v2, :cond_189

    const/16 v20, 0x1

    .line 575
    .local v20, "creating":Z
    :goto_2d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-nez v2, :cond_18d

    const/16 v31, 0x1

    .line 576
    .local v31, "surfaceCreating":Z
    :goto_35
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v3

    if-eq v2, v3, :cond_191

    const/16 v23, 0x1

    .line 577
    .local v23, "formatChanged":Z
    :goto_45
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move/from16 v0, v28

    if-ne v2, v0, :cond_55

    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move/from16 v0, v27

    if-eq v2, v0, :cond_195

    :cond_55
    const/16 v30, 0x1

    .line 578
    .local v30, "sizeChanged":Z
    :goto_57
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v3

    if-eq v2, v3, :cond_199

    const/16 v32, 0x1

    .line 579
    .local v32, "typeChanged":Z
    :goto_67
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v2, v3, :cond_7b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v2, v3, :cond_19d

    :cond_7b
    const/16 v22, 0x1

    .line 581
    .local v22, "flagsChanged":Z
    :goto_7d
    if-nez p1, :cond_95

    if-nez v20, :cond_95

    if-nez v31, :cond_95

    if-nez v23, :cond_95

    if-nez v30, :cond_95

    if-nez v32, :cond_95

    if-nez v22, :cond_95

    if-nez p3, :cond_95

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v2, :cond_188

    .line 589
    :cond_95
    :try_start_95
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 590
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v28

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v27

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 601
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit16 v3, v3, 0x200

    or-int/lit16 v3, v3, 0x100

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 607
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 613
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-nez v2, :cond_1b9

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x10301f6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 619
    new-instance v2, Landroid/view/InputChannel;

    invoke-direct {v2}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v2 .. v9}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v2

    if-gez v2, :cond_1a1

    .line 622
    const-string v2, "WallpaperService"

    const-string v3, "Failed to add window while updating wallpaper surface."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_188
    :goto_188
    return-void

    .line 574
    .end local v20    # "creating":Z
    .end local v22    # "flagsChanged":Z
    .end local v23    # "formatChanged":Z
    .end local v30    # "sizeChanged":Z
    .end local v31    # "surfaceCreating":Z
    .end local v32    # "typeChanged":Z
    :cond_189
    const/16 v20, 0x0

    goto/16 :goto_2d

    .line 575
    .restart local v20    # "creating":Z
    :cond_18d
    const/16 v31, 0x0

    goto/16 :goto_35

    .line 576
    .restart local v31    # "surfaceCreating":Z
    :cond_191
    const/16 v23, 0x0

    goto/16 :goto_45

    .line 577
    .restart local v23    # "formatChanged":Z
    :cond_195
    const/16 v30, 0x0

    goto/16 :goto_57

    .line 578
    .restart local v30    # "sizeChanged":Z
    :cond_199
    const/16 v32, 0x0

    goto/16 :goto_67

    .line 579
    .restart local v32    # "typeChanged":Z
    :cond_19d
    const/16 v22, 0x0

    goto/16 :goto_7d

    .line 625
    .restart local v22    # "flagsChanged":Z
    :cond_1a1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 627
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 631
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 632
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    .line 634
    new-instance v16, Landroid/graphics/PointF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/PointF;-><init>()V

    .line 636
    .local v16, "outScale":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v15, v15, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-interface/range {v2 .. v16}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;)I

    move-result v29

    .line 645
    .local v29, "relayoutResult":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v33

    .line 646
    .local v33, "w":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move/from16 v0, v33

    if-eq v2, v0, :cond_21e

    .line 647
    const/16 v30, 0x1

    .line 648
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    .line 650
    :cond_21e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v24

    .line 651
    .local v24, "h":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move/from16 v0, v24

    if-eq v2, v0, :cond_236

    .line 652
    const/16 v30, 0x1

    .line 653
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    .line 656
    :cond_236
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_25e

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V
    :try_end_259
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_259} :catch_25b

    goto/16 :goto_188

    .line 753
    .end local v16    # "outScale":Landroid/graphics/PointF;
    .end local v24    # "h":I
    .end local v29    # "relayoutResult":I
    .end local v33    # "w":I
    :catch_25b
    move-exception v2

    goto/16 :goto_188

    .line 665
    .restart local v16    # "outScale":Landroid/graphics/PointF;
    .restart local v24    # "h":I
    .restart local v29    # "relayoutResult":I
    .restart local v33    # "w":I
    :cond_25e
    const/16 v21, 0x0

    .line 668
    .local v21, "didSurface":Z
    :try_start_260
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 670
    if-eqz v31, :cond_2a0

    .line 671
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 672
    const/16 v21, 0x1

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 677
    .local v19, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_2a0

    .line 678
    move-object/from16 v17, v19

    .local v17, "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_28c
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_2a0

    aget-object v18, v17, v25

    .line 679
    .local v18, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 678
    add-int/lit8 v25, v25, 0x1

    goto :goto_28c

    .line 684
    .end local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "i$":I
    .end local v26    # "len$":I
    :cond_2a0
    if-nez v20, :cond_2a6

    and-int/lit8 v2, v29, 0x2

    if-eqz v2, :cond_2fd

    :cond_2a6
    const/4 v2, 0x1

    :goto_2a7
    or-int p3, p3, v2

    .line 687
    if-nez p2, :cond_2b3

    if-nez v20, :cond_2b3

    if-nez v31, :cond_2b3

    if-nez v23, :cond_2b3

    if-eqz v30, :cond_2ff

    .line 700
    :cond_2b3
    const/16 v21, 0x1

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 704
    .restart local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_2ff

    .line 705
    move-object/from16 v17, v19

    .restart local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    .restart local v26    # "len$":I
    const/16 v25, 0x0

    .restart local v25    # "i$":I
    :goto_2dd
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_2ff

    aget-object v18, v17, v25

    .line 706
    .restart local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 705
    add-int/lit8 v25, v25, 0x1

    goto :goto_2dd

    .line 684
    .end local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "i$":I
    .end local v26    # "len$":I
    :cond_2fd
    const/4 v2, 0x0

    goto :goto_2a7

    .line 712
    :cond_2ff
    if-eqz p3, :cond_339

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 715
    .restart local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_339

    .line 716
    move-object/from16 v17, v19

    .restart local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    .restart local v26    # "len$":I
    const/16 v25, 0x0

    .restart local v25    # "i$":I
    :goto_31d
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_339

    aget-object v18, v17, v25

    .line 717
    .restart local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    instance-of v2, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v2, :cond_336

    .line 718
    check-cast v18, Landroid/view/SurfaceHolder$Callback2;

    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 716
    :cond_336
    add-int/lit8 v25, v25, 0x1

    goto :goto_31d

    .line 725
    .end local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v25    # "i$":I
    .end local v26    # "len$":I
    :cond_339
    if-eqz v21, :cond_353

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v2, :cond_353

    .line 731
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    if-eqz v2, :cond_34d

    .line 738
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 742
    :cond_34d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V
    :try_end_353
    .catchall {:try_start_260 .. :try_end_353} :catchall_373

    .line 746
    :cond_353
    const/4 v2, 0x0

    :try_start_354
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 747
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 748
    if-eqz p3, :cond_36a

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 751
    :cond_36a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    goto/16 :goto_188

    .line 746
    :catchall_373
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 747
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 748
    if-eqz p3, :cond_38b

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 751
    :cond_38b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    .line 746
    throw v2
    :try_end_393
    .catch Landroid/os/RemoteException; {:try_start_354 .. :try_end_393} :catch_25b
.end method
