.class final Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoPlayer"
.end annotation


# static fields
.field private static isVideoSelfEnded:Z

.field private static mBaseLayer:I

.field private static mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

.field private static mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 110
    sput-boolean v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 114
    sput v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 103
    sput-boolean p0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    return p0
.end method

.method static synthetic access$200(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 103
    invoke-static {p0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V

    return-void
.end method

.method static synthetic access$300()Landroid/webkitsec/HTML5VideoView;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    return-object v0
.end method

.method public static end()V
    .registers 1

    .prologue
    .line 341
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoView;->fullScreenExited()Z

    move-result v0

    if-nez v0, :cond_d

    .line 342
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoView;->showControllerInFullScreen()V

    .line 343
    :cond_d
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eqz v0, :cond_1a

    .line 344
    sget-boolean v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_1e

    .line 345
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 349
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 350
    return-void

    .line 347
    :cond_1e
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_1a
.end method

.method public static enterFullScreenVideo(ILjava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V
    .registers 13
    .param p0, "layerId"    # I
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p3, "webView"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 173
    const-string v6, "HTML5VideoViewProxy"

    const-string v7, "enterFullScreenVideo"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v3, 0x0

    .line 176
    .local v3, "savePosition":I
    const/4 v0, 0x0

    .line 177
    .local v0, "canSkipPrepare":Z
    const/4 v1, 0x0

    .line 178
    .local v1, "forceStart":Z
    sget-object v6, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v6, :cond_59

    .line 181
    sget-object v6, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkitsec/HTML5VideoView;->fullScreenExited()Z

    move-result v6

    if-nez v6, :cond_29

    sget-object v6, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkitsec/HTML5VideoView;->isFullScreenMode()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 182
    const-string v4, "HTML5VideoViewProxy"

    const-string v5, "Try to reenter the full screen mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_28
    return-void

    .line 186
    :cond_29
    sget-object v6, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkitsec/HTML5VideoView;->getCurrentState()I

    move-result v2

    .line 189
    .local v2, "playerState":I
    sget-object v6, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkitsec/HTML5VideoView;->getVideoLayerId()I

    move-result v6

    if-ne p0, v6, :cond_4d

    .line 190
    sget-object v6, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkitsec/HTML5VideoView;->getCurrentPosition()I

    move-result v3

    .line 191
    if-eq v2, v4, :cond_44

    const/4 v6, 0x2

    if-eq v2, v6, :cond_44

    if-ne v2, v8, :cond_78

    :cond_44
    sget-object v6, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkitsec/HTML5VideoView;->isFullScreenMode()Z

    move-result v6

    if-nez v6, :cond_78

    move v0, v4

    .line 196
    :cond_4d
    :goto_4d
    if-nez v0, :cond_7a

    .line 197
    sget-object v4, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkitsec/HTML5VideoView;->reset()V

    .line 203
    :goto_54
    sget-object v4, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkitsec/HTML5VideoView;->abandonAudioFocus()V

    .line 205
    .end local v2    # "playerState":I
    :cond_59
    new-instance v4, Landroid/webkitsec/HTML5VideoFullScreen;

    invoke-virtual {p2}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0, v3, v0}, Landroid/webkitsec/HTML5VideoFullScreen;-><init>(Landroid/content/Context;IIZ)V

    sput-object v4, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    .line 207
    sget-object v4, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v4, v1}, Landroid/webkitsec/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 208
    sput-object p2, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    .line 209
    sget-object v4, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v4, p1, v5}, Landroid/webkitsec/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 210
    sget-object v4, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v4, p0, p2, p3}, Landroid/webkitsec/HTML5VideoView;->enterFullScreenVideoState(ILandroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V

    goto :goto_28

    .restart local v2    # "playerState":I
    :cond_78
    move v0, v5

    .line 191
    goto :goto_4d

    .line 199
    :cond_7a
    if-eq v2, v4, :cond_7e

    if-ne v2, v8, :cond_80

    :cond_7e
    move v1, v4

    :goto_7f
    goto :goto_54

    :cond_80
    move v1, v5

    goto :goto_7f
.end method

.method public static exitFullScreenVideo(Landroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V
    .registers 4
    .param p0, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p1, "webView"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 215
    sget-object v1, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v1, :cond_1d

    .line 216
    sget-object v1, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkitsec/HTML5VideoView;->fullScreenExited()Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkitsec/HTML5VideoView;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 217
    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    .line 218
    .local v0, "client":Landroid/webkitsec/WebChromeClient;
    if-eqz v0, :cond_1d

    .line 219
    invoke-virtual {v0}, Landroid/webkitsec/WebChromeClient;->onHideCustomView()V

    .line 223
    .end local v0    # "client":Landroid/webkitsec/WebChromeClient;
    :cond_1d
    return-void
.end method

.method public static getCurrentPosition()I
    .registers 2

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "currentPosMs":I
    sget-object v1, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v1, :cond_b

    .line 312
    sget-object v1, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkitsec/HTML5VideoView;->getCurrentPosition()I

    move-result v0

    .line 314
    :cond_b
    return v0
.end method

.method public static getVideoView()Landroid/webkitsec/HTML5VideoView;
    .registers 1

    .prologue
    .line 354
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    return-object v0
.end method

.method public static isPlaying(Landroid/webkitsec/HTML5VideoViewProxy;)Z
    .registers 2
    .param p0, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 305
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_12

    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v0, :cond_12

    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static onPrepared()V
    .registers 1

    .prologue
    .line 330
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoView;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 331
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoView;->start()V

    .line 334
    :cond_d
    sget v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    if-eqz v0, :cond_16

    .line 335
    sget v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    invoke-static {v0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 338
    :cond_16
    return-void
.end method

.method public static onStopFullScreen(Z)V
    .registers 2
    .param p0, "isPlaying"    # Z

    .prologue
    .line 368
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0, p0}, Landroid/webkitsec/HTML5VideoViewProxy;->dispatchOnStopFullScreen(Z)V

    .line 369
    return-void
.end method

.method public static pause(Landroid/webkitsec/HTML5VideoViewProxy;)V
    .registers 2
    .param p0, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 324
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_d

    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v0, :cond_d

    .line 325
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoView;->pause()V

    .line 327
    :cond_d
    return-void
.end method

.method public static pauseAndDispatch()V
    .registers 2

    .prologue
    .line 157
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v0, :cond_36

    .line 158
    const-string v0, "HTML5VideoViewProxy"

    const-string/jumbo v1, "pauseAndDispatch() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    sget-object v1, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkitsec/HTML5VideoView;->pauseAndDispatch(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 162
    sget v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    invoke-static {v0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 164
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->getWebView()Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    if-eqz v0, :cond_36

    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy;->getWebView()Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 165
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-static {}, Landroid/webkitsec/HTML5VideoView;->release()V

    .line 166
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoView;->deleteSurfaceTexture()V

    .line 169
    :cond_36
    return-void
.end method

.method public static play(Ljava/lang/String;ILandroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebChromeClient;I)V
    .registers 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "time"    # I
    .param p2, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p3, "client"    # Landroid/webkitsec/WebChromeClient;
    .param p4, "videoLayerId"    # I

    .prologue
    .line 230
    const/4 v2, -0x1

    .line 231
    .local v2, "currentVideoLayerId":I
    const/4 v0, 0x0

    .line 232
    .local v0, "backFromFullScreenMode":Z
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v5, :cond_35

    .line 233
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->getVideoLayerId()I

    move-result v2

    .line 234
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->fullScreenExited()Z

    move-result v0

    .line 239
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->isFullScreenMode()Z

    move-result v5

    if-eqz v5, :cond_35

    if-nez v0, :cond_35

    if-eq v2, p4, :cond_35

    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eq v5, p2, :cond_35

    .line 243
    sput-object p2, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    .line 244
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkitsec/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 245
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5, p0, p2}, Landroid/webkitsec/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 246
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5, p2}, Landroid/webkitsec/HTML5VideoView;->reprepareData(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 302
    :cond_34
    :goto_34
    return-void

    .line 251
    :cond_35
    const/4 v4, 0x0

    .line 252
    .local v4, "skipPrepare":Z
    const/4 v1, 0x0

    .line 253
    .local v1, "createInlineView":Z
    const/4 v3, 0x0

    .line 254
    .local v3, "isShowingFullscreen":Z
    if-eqz v0, :cond_5e

    if-ne v2, p4, :cond_5e

    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->isReleased()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 257
    const/4 v4, 0x1

    .line 258
    const/4 v1, 0x1

    .line 282
    :cond_46
    :goto_46
    if-eqz v1, :cond_93

    .line 283
    sput-object p2, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    .line 284
    new-instance v5, Landroid/webkitsec/HTML5VideoInline;

    invoke-direct {v5, p4, p1, v4}, Landroid/webkitsec/HTML5VideoInline;-><init>(IIZ)V

    sput-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    .line 286
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    sget-object v6, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v5, p0, v6}, Landroid/webkitsec/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 287
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5, p2}, Landroid/webkitsec/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkitsec/HTML5VideoViewProxy;)V

    goto :goto_34

    .line 259
    :cond_5e
    if-nez v0, :cond_68

    if-ne v2, p4, :cond_68

    invoke-static {}, Landroid/webkitsec/HTML5VideoInline;->surfaceTextureDeleted()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 267
    :cond_68
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v5, :cond_8f

    .line 268
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->isFullScreenMode()Z

    move-result v5

    if-eqz v5, :cond_77

    if-nez v0, :cond_77

    .line 269
    const/4 v3, 0x1

    .line 271
    :cond_77
    if-nez v0, :cond_88

    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 272
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    sget-object v6, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v5, v6}, Landroid/webkitsec/HTML5VideoView;->pauseAndDispatch(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 274
    :cond_88
    if-nez v3, :cond_8f

    .line 275
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->reset()V

    .line 278
    :cond_8f
    if-nez v3, :cond_46

    .line 279
    const/4 v1, 0x1

    goto :goto_46

    .line 291
    :cond_93
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-ne v5, p2, :cond_ae

    .line 293
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v5, :cond_34

    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_34

    .line 294
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5, p1}, Landroid/webkitsec/HTML5VideoView;->seekTo(I)V

    .line 295
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->start()V

    goto :goto_34

    .line 297
    :cond_ae
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-eqz v5, :cond_34

    .line 300
    invoke-virtual {p2}, Landroid/webkitsec/HTML5VideoViewProxy;->dispatchOnEnded()V

    goto/16 :goto_34
.end method

.method public static seek(ILandroid/webkitsec/HTML5VideoViewProxy;)V
    .registers 3
    .param p0, "time"    # I
    .param p1, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;

    .prologue
    .line 318
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    if-ne v0, p1, :cond_f

    if-ltz p0, :cond_f

    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v0, :cond_f

    .line 319
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkitsec/HTML5VideoView;->seekTo(I)V

    .line 321
    :cond_f
    return-void
.end method

.method public static setBaseLayer(I)V
    .registers 8
    .param p0, "layer"    # I

    .prologue
    .line 128
    sput p0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    .line 131
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v5, :cond_4c

    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->isFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_4c

    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->isReleased()Z

    move-result v5

    if-nez v5, :cond_4c

    .line 135
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->getVideoLayerId()I

    move-result v0

    .line 136
    .local v0, "currentVideoLayerId":I
    invoke-static {v0}, Landroid/webkitsec/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 138
    .local v3, "surfTexture":Landroid/graphics/SurfaceTexture;
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->getTextureName()I

    move-result v4

    .line 140
    .local v4, "textureName":I
    if-eqz p0, :cond_4c

    if-eqz v3, :cond_4c

    const/4 v5, -0x1

    if-eq v0, v5, :cond_4c

    .line 141
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->getCurrentState()I

    move-result v2

    .line 142
    .local v2, "playerState":I
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5VideoView;->getPlayerBuffering()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 143
    const/4 v2, 0x1

    .line 144
    :cond_3c
    # invokes: Landroid/webkitsec/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
    invoke-static {v3, p0, v0, v4, v2}, Landroid/webkitsec/HTML5VideoViewProxy;->access$000(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v1

    .line 147
    .local v1, "foundInTree":Z
    const/4 v5, 0x2

    if-lt v2, v5, :cond_4c

    if-nez v1, :cond_4c

    .line 149
    sget-object v5, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    sget-object v6, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v5, v6}, Landroid/webkitsec/HTML5VideoView;->pauseAndDispatch(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 153
    .end local v0    # "currentVideoLayerId":I
    .end local v1    # "foundInTree":Z
    .end local v2    # "playerState":I
    .end local v3    # "surfTexture":Landroid/graphics/SurfaceTexture;
    .end local v4    # "textureName":I
    :cond_4c
    return-void
.end method

.method private static setPlayerBuffering(Z)V
    .registers 2
    .param p0, "playerBuffering"    # Z

    .prologue
    .line 118
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkitsec/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 119
    return-void
.end method

.method public static setVolume(F)V
    .registers 2
    .param p0, "volume"    # F

    .prologue
    .line 358
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    if-eqz v0, :cond_9

    .line 359
    sget-object v0, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkitsec/HTML5VideoView;->setVolume(F)V

    .line 361
    :cond_9
    return-void
.end method
