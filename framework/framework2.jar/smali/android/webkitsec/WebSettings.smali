.class public abstract Landroid/webkitsec/WebSettings;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebSettings$PluginState;,
        Landroid/webkitsec/WebSettings$RenderPriority;,
        Landroid/webkitsec/WebSettings$NotificationState;,
        Landroid/webkitsec/WebSettings$ZoomDensity;,
        Landroid/webkitsec/WebSettings$TextSize;,
        Landroid/webkitsec/WebSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOAD_NO_CACHE:I = 0x2


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1375
    invoke-static {}, Landroid/webkitsec/WebViewFactory;->getProvider()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewFactoryProvider;->getStatics()Landroid/webkitsec/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkitsec/WebViewFactoryProvider$Statics;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getAdvanceCommands()Z
    .registers 2

    .prologue
    .line 1509
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getAdvancedCopyPasteFeature()Z
    .registers 2

    .prologue
    .line 1456
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getAllowContentAccess()Z
    .registers 2

    .prologue
    .line 357
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getAllowFileAccess()Z
    .registers 2

    .prologue
    .line 339
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public abstract getAllowFileAccessFromFileURLs()Z
.end method

.method public abstract getAllowUniversalAccessFromFileURLs()Z
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .registers 2

    .prologue
    .line 958
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .registers 2

    .prologue
    .line 990
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .registers 2

    .prologue
    .line 297
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getCacheMode()I
    .registers 2

    .prologue
    .line 1431
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 804
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .registers 2

    .prologue
    .line 1208
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1198
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .registers 2

    .prologue
    .line 903
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .registers 2

    .prologue
    .line 883
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1343
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkitsec/WebSettings$ZoomDensity;
    .registers 2

    .prologue
    .line 540
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getDisableAnimation()Z
    .registers 2

    .prologue
    .line 1517
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getDisplayZoomControls()Z
    .registers 2

    .prologue
    .line 320
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .registers 2

    .prologue
    .line 1189
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEditableSupport()Z
    .registers 2

    .prologue
    .line 1502
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 823
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 747
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImideoDebugMode()I
    .registers 2

    .prologue
    .line 1584
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .registers 2

    .prologue
    .line 1324
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .registers 2

    .prologue
    .line 1242
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkitsec/WebSettings$LayoutAlgorithm;
    .registers 2

    .prologue
    .line 709
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 570
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getLoadWithOverviewMode()Z
    .registers 2

    .prologue
    .line 374
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .registers 2

    .prologue
    .line 929
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .registers 2

    .prologue
    .line 265
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .registers 2

    .prologue
    .line 843
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .registers 2

    .prologue
    .line 863
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getNewActionPopup()Z
    .registers 2

    .prologue
    .line 1464
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getOnewayScrollEnabled()Z
    .registers 2

    .prologue
    .line 1556
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkitsec/WebSettings$PluginState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1288
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1276
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1303
    monitor-enter p0

    :try_start_1
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 766
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .registers 2

    .prologue
    .line 442
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getSavePassword()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getSearchEngineName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 545
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 785
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .registers 2

    .prologue
    .line 728
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextSize()Landroid/webkitsec/WebSettings$TextSize;
    .registers 10

    .prologue
    .line 506
    monitor-enter p0

    const/4 v1, 0x0

    .line 507
    .local v1, "closestSize":Landroid/webkitsec/WebSettings$TextSize;
    const v6, 0x7fffffff

    .line 508
    .local v6, "smallestDelta":I
    :try_start_5
    invoke-virtual {p0}, Landroid/webkitsec/WebSettings;->getTextZoom()I

    move-result v7

    .line 509
    .local v7, "textSize":I
    invoke-static {}, Landroid/webkitsec/WebSettings$TextSize;->values()[Landroid/webkitsec/WebSettings$TextSize;

    move-result-object v0

    .local v0, "arr$":[Landroid/webkitsec/WebSettings$TextSize;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f
    if-ge v3, v4, :cond_26

    aget-object v5, v0, v3

    .line 510
    .local v5, "size":Landroid/webkitsec/WebSettings$TextSize;
    iget v8, v5, Landroid/webkitsec/WebSettings$TextSize;->value:I

    sub-int v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_2d

    move-result v2

    .line 511
    .local v2, "delta":I
    if-nez v2, :cond_1f

    .line 519
    .end local v1    # "closestSize":Landroid/webkitsec/WebSettings$TextSize;
    .end local v2    # "delta":I
    .end local v5    # "size":Landroid/webkitsec/WebSettings$TextSize;
    :goto_1d
    monitor-exit p0

    return-object v5

    .line 514
    .restart local v1    # "closestSize":Landroid/webkitsec/WebSettings$TextSize;
    .restart local v2    # "delta":I
    .restart local v5    # "size":Landroid/webkitsec/WebSettings$TextSize;
    :cond_1f
    if-ge v2, v6, :cond_23

    .line 515
    move v6, v2

    .line 516
    move-object v1, v5

    .line 509
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 519
    .end local v2    # "delta":I
    .end local v5    # "size":Landroid/webkitsec/WebSettings$TextSize;
    :cond_26
    if-eqz v1, :cond_2a

    .end local v1    # "closestSize":Landroid/webkitsec/WebSettings$TextSize;
    :goto_28
    move-object v5, v1

    goto :goto_1d

    .restart local v1    # "closestSize":Landroid/webkitsec/WebSettings$TextSize;
    :cond_2a
    :try_start_2a
    sget-object v1, Landroid/webkitsec/WebSettings$TextSize;->NORMAL:Landroid/webkitsec/WebSettings$TextSize;
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2d

    goto :goto_28

    .line 506
    .end local v0    # "arr$":[Landroid/webkitsec/WebSettings$TextSize;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "textSize":I
    :catchall_2d
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized getTextZoom()I
    .registers 2

    .prologue
    .line 482
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 605
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getUseEmailViewPort()Z
    .registers 2

    .prologue
    .line 1494
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 425
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .registers 2

    .prologue
    .line 668
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 642
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1361
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDesktopMode()Z
    .registers 2

    .prologue
    .line 1547
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public isEmailPreviewMode()Z
    .registers 2

    .prologue
    .line 1524
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public isHighResolutionDevice()Z
    .registers 2

    .prologue
    .line 1531
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setActualHeightHack(Z)V
    .registers 3
    .param p1, "actualHeightHack"    # Z

    .prologue
    .line 1565
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setAdvanceCommands(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1505
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setAdvancedCopyPasteFeature(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1447
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .prologue
    .line 348
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setAllowFileAccess(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .prologue
    .line 330
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public abstract setAllowFileAccessFromFileURLs(Z)V
.end method

.method public abstract setAllowUniversalAccessFromFileURLs(Z)V
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 1124
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .registers 4
    .param p1, "appCacheMaxSize"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1154
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "appCachePath"    # Ljava/lang/String;

    .prologue
    .line 1138
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 948
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 980
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBlockRequestLayout(Z)V
    .registers 3
    .param p1, "blockRequestLayout"    # Z

    .prologue
    .line 1561
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 287
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setCacheMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 1421
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .registers 3
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 794
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 1170
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 1099
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 893
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 873
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .registers 3
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1333
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultViewport(I)V
    .registers 3
    .param p1, "defaultViewport"    # I

    .prologue
    .line 1569
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V
    .registers 3
    .param p1, "zoom"    # Landroid/webkitsec/WebSettings$ZoomDensity;

    .prologue
    .line 529
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setDesktopMode(Z)V
    .registers 3
    .param p1, "bDesktopMode"    # Z

    .prologue
    .line 1542
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setDisableAnimation(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1513
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setDisableSelection(Z)Z
    .registers 3
    .param p1, "disabled"    # Z

    .prologue
    .line 1480
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setDisableSetupViewport(Z)V
    .registers 3
    .param p1, "blockSetupViewport"    # Z

    .prologue
    .line 1573
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setDisplayZoomControls(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 308
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 1179
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEditableSupport(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1498
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setEmailPreviewMode(Z)V
    .registers 3
    .param p1, "previewMode"    # Z

    .prologue
    .line 1520
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setEnableDoubleTapBlockZoom(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1439
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setEnableMagnifier(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1473
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setEnableSmoothTransition(Z)V
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .registers 3
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 813
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .registers 3
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 737
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 1112
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 1232
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHighResolutionDevice(Z)V
    .registers 3
    .param p1, "resolutionType"    # Z

    .prologue
    .line 1527
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setImideoDebugMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 1581
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setIsContinousSpellCheck(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1490
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 1313
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 1000
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkitsec/WebSettings$LayoutAlgorithm;)V
    .registers 3
    .param p1, "l"    # Landroid/webkitsec/WebSettings$LayoutAlgorithm;

    .prologue
    .line 699
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLightTouchEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 560
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .registers 3
    .param p1, "overview"    # Z

    .prologue
    .line 365
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 918
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .registers 3
    .param p1, "require"    # Z

    .prologue
    .line 255
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 833
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 853
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setNeedInitialFocus(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 1391
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setNewActionPopup(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1460
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setOnewayScrollEnabled(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 1552
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkitsec/WebSettings$PluginState;)V
    .registers 3
    .param p1, "state"    # Landroid/webkitsec/WebSettings$PluginState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1069
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .registers 3
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1054
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "pluginsPath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1084
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkitsec/WebSettings$RenderPriority;)V
    .registers 3
    .param p1, "priority"    # Landroid/webkitsec/WebSettings$RenderPriority;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1405
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRssSniffing(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 579
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .registers 3
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 756
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .registers 3
    .param p1, "save"    # Z

    .prologue
    .line 432
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setSavePassword(Z)V
    .registers 3
    .param p1, "save"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setSearchEngineName(Ljava/lang/String;)V
    .registers 3
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 549
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setSelectionRemovalPatterns([Ljava/util/regex/Pattern;)V
    .registers 3
    .param p1, "patterns"    # [Ljava/util/regex/Pattern;

    .prologue
    .line 1577
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .registers 3
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 775
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .registers 3
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 718
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .registers 3
    .param p1, "support"    # Z

    .prologue
    .line 679
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .registers 3
    .param p1, "support"    # Z

    .prologue
    .line 233
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setTextSize(Landroid/webkitsec/WebSettings$TextSize;)V
    .registers 3
    .param p1, "t"    # Landroid/webkitsec/WebSettings$TextSize;

    .prologue
    .line 492
    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/webkitsec/WebSettings$TextSize;->value:I

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebSettings;->setTextZoom(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 494
    monitor-exit p0

    return-void

    .line 492
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .registers 3
    .param p1, "textZoom"    # I

    .prologue
    .line 472
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .registers 2
    .param p1, "use"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 593
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setUseEmailViewPort(Z)V
    .registers 3
    .param p1, "use"    # Z

    .prologue
    .line 1486
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .registers 3
    .param p1, "view"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 412
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .registers 3
    .param p1, "use"    # Z

    .prologue
    .line 657
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .registers 3
    .param p1, "ua"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 623
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .registers 3
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 1351
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWOFFEnabled(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 1537
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .registers 2

    .prologue
    .line 689
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .registers 2

    .prologue
    .line 243
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method
