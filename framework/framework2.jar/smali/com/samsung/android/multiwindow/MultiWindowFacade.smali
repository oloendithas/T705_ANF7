.class public final Lcom/samsung/android/multiwindow/MultiWindowFacade;
.super Ljava/lang/Object;
.source "MultiWindowFacade.java"


# static fields
.field public static final ARRANGE_SPLITED:I = 0x1

.field public static final ARRANGE_SPLITED3L:I = 0x2

.field public static final ARRANGE_SPLITED3R:I = 0x4

.field public static final ARRANGE_SPLITED4:I = 0x8

.field public static final ARRANGE_UNKNOWN:I = 0x0

.field public static final MULTIWINDOW_ABSOLUTE_TOPACTIVITY:I = 0x2

.field public static final MULTIWINDOW_EXCLUDED_CASCADE_TYPE:I = 0x1

.field public static final SPLIT_MAX_WEIGHT:F = 0.8f

.field public static final SPLIT_MIN_WEIGHT:F = 0.2f


# instance fields
.field private mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;


# direct methods
.method public constructor <init>(Lcom/samsung/android/multiwindow/IMultiWindowFacade;)V
    .registers 3
    .param p1, "service"    # Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .line 27
    return-void
.end method


# virtual methods
.method public changeFocusedTaskToFull()V
    .registers 3

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->changeFocusedTaskToFull()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 259
    :goto_5
    return-void

    .line 256
    :catch_6
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public exchangeTopTaskToZone(II)Z
    .registers 5
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->exchangeTopTaskToZone(II)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 150
    :goto_6
    return v1

    .line 148
    :catch_7
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getArrangeState()I
    .registers 3

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getArrangeState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 165
    :goto_6
    return v1

    .line 163
    :catch_7
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAvailableMultiInstanceCnt()I
    .registers 3

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getAvailableMultiInstanceCnt()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 266
    :goto_6
    return v1

    .line 264
    :catch_7
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .registers 3

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 59
    :goto_6
    return-object v1

    .line 57
    :catch_7
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getFocusedStackLayer()I
    .registers 3

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFocusedStackLayer()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 177
    :goto_6
    return v1

    .line 175
    :catch_7
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getFocusedZone()I
    .registers 3

    .prologue
    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFocusedZone()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 189
    :goto_6
    return v1

    .line 187
    :catch_7
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 4
    .param p1, "flags"    # I

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 138
    :goto_6
    return-object v1

    .line 136
    :catch_7
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getGlobalSystemUiVisibility()I
    .registers 3

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getGlobalSystemUiVisibility()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 246
    :goto_6
    return v1

    .line 244
    :catch_7
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 84
    :goto_6
    return-object v1

    .line 82
    :catch_7
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSplitMaxWeight()F
    .registers 3

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getSplitMaxWeight()F
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 324
    :goto_6
    return v1

    .line 322
    :catch_7
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    const/high16 v1, 0x3f800000

    goto :goto_6
.end method

.method public getSplitMinWeight()F
    .registers 3

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getSplitMinWeight()F
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 312
    :goto_6
    return v1

    .line 310
    :catch_7
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 312
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 104
    :goto_6
    return-object v1

    .line 102
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getStackBoxPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackBoxPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 351
    :goto_6
    return-object v1

    .line 347
    :catch_7
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 351
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 116
    :goto_6
    return-object v1

    .line 114
    :catch_7
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .registers 4
    .param p1, "zone"    # I

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getZoneBounds(I)Landroid/graphics/Rect;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 201
    :goto_6
    return-object v1

    .line 199
    :catch_7
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isEnableMakePenWindow()Z
    .registers 3

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->isEnableMakePenWindow()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 338
    :goto_6
    return v1

    .line 334
    :catch_7
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 338
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 38
    :goto_5
    return-void

    .line 35
    :catch_6
    move-exception v0

    .line 36
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public moveOnlySpecificTaskToFront(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->moveOnlySpecificTaskToFront(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 302
    :goto_5
    return-void

    .line 299
    :catch_6
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public requestSplitPreview(Z)V
    .registers 4
    .param p1, "enablePreview"    # Z

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->requestSplitPreview(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 225
    :goto_5
    return-void

    .line 222
    :catch_6
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 49
    :goto_5
    return-void

    .line 46
    :catch_6
    move-exception v0

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public setFocusAppByZone(I)V
    .registers 4
    .param p1, "zone"    # I

    .prologue
    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setFocusAppByZone(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 279
    :goto_5
    return-void

    .line 276
    :catch_6
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-nez v1, :cond_5

    .line 74
    :goto_4
    return-void

    .line 70
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_4

    .line 71
    :catch_b
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .registers 4
    .param p1, "open"    # Z

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setMultiWindowTrayOpenState(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 214
    :goto_5
    return-void

    .line 211
    :catch_6
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public setPreviewFullAppZone(I)V
    .registers 4
    .param p1, "zone"    # I

    .prologue
    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setPreviewFullAppZone(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 236
    :goto_5
    return-void

    .line 233
    :catch_6
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 97
    :goto_5
    return-void

    .line 94
    :catch_6
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 291
    :goto_5
    return-void

    .line 287
    :catch_6
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "size"    # [I

    .prologue
    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 363
    :goto_5
    return-void

    .line 360
    :catch_6
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method
