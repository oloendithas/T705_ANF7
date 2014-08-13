.class public Lcom/sec/android/app/camera/MenuResourceDepot;
.super Ljava/lang/Object;
.source "MenuResourceDepot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuResourceDepot"


# instance fields
.field protected mActivityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Lcom/sec/android/app/camera/EmptyView;

.field private mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

.field private mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

.field public mMenus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field public mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

.field private mResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 95
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 96
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 97
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 100
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 103
    return-void
.end method

.method private clearAllMenus()V
    .locals 5

    .prologue
    .line 374
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearAllMenus"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 376
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 378
    .local v0, "id":I
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 379
    .local v2, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 381
    :cond_0
    const-string v3, "MenuResourceDepot"

    const-string v4, "clearing..."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    .end local v0    # "id":I
    .end local v2    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_1
    return-void
.end method

.method private mustNotClear(Lcom/sec/android/app/camera/MenuBase;)Z
    .locals 1
    .param p1, "menu"    # Lcom/sec/android/app/camera/MenuBase;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearInvisibleViews()V
    .locals 7

    .prologue
    .line 105
    const-string v4, "MenuResourceDepot"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 108
    .local v3, "menusClone":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/android/app/camera/MenuBase;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 109
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 111
    .local v0, "id":I
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 112
    .local v2, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 113
    const-string v4, "MenuResourceDepot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->mustNotClear(Lcom/sec/android/app/camera/MenuBase;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/Camera;->removeMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 118
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 119
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    goto :goto_0

    .line 122
    .end local v0    # "id":I
    .end local v2    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_1
    return-void
.end method

.method public closeVisibleViews()V
    .locals 5

    .prologue
    .line 130
    const-string v3, "MenuResourceDepot"

    const-string v4, "closeVisibleViews"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 132
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    .local v0, "id":I
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 135
    .local v2, "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 136
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 139
    .end local v0    # "id":I
    .end local v2    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_1
    return-void
.end method

.method public delete(I)V
    .locals 2
    .param p1, "menuId"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    return-void
.end method

.method public getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;
    .locals 7
    .param p1, "layoutId"    # I
    .param p2, "baseLayout"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    .line 335
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 349
    :goto_0
    return-object v0

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    .line 339
    .local v1, "context":Lcom/sec/android/app/camera/Camera;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    if-nez v0, :cond_1

    .line 343
    new-instance v0, Lcom/sec/android/app/camera/EmptyView;

    const v3, 0x7f0e0015

    const/4 v6, 0x6

    move v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/EmptyView;-><init>(Lcom/sec/android/app/camera/Camera;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x7f030004
        :pswitch_0
    .end packed-switch
.end method

.method public getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;
    .locals 6
    .param p1, "viewId"    # I
    .param p2, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;

    .prologue
    const/4 v0, 0x0

    .line 353
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 370
    :goto_0
    return-object v0

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    .line 357
    .local v1, "context":Lcom/sec/android/app/camera/Camera;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 359
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v0, :cond_1

    .line 360
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    goto :goto_0

    .line 364
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-nez v0, :cond_2

    .line 365
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    const/4 v5, 0x5

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    goto :goto_0

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0xbc0 -> :sswitch_1
    .end sparse-switch
.end method

.method public getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 141
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 142
    .local v0, "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 331
    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .local v1, "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_0
    return-object v1

    .line 144
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 328
    :goto_1
    if-eqz v0, :cond_1

    .line 329
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 331
    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v1    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_0

    .line 146
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_0
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ContextMenuResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 147
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 150
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SideBarMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SideBarMenuResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 151
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 153
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 154
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 156
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 157
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 159
    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SceneModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 160
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 162
    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 163
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 165
    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FrontCamcorderResolutionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FrontCamcorderResolutionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 166
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 168
    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraResolutionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraResolutionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 169
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 171
    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraResolutionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraResolutionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 172
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 174
    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FocusModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 175
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 177
    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/TimerResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 178
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 180
    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 181
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 183
    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 184
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 186
    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/WhiteBalanceResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 187
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 189
    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ISOResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 190
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 192
    :sswitch_f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposuremeterResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 193
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 195
    :sswitch_10
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ExposureValueResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 196
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 198
    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ViewModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ViewModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 199
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 201
    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraHDRResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraHDRResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 202
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 204
    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraAntiShakeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraAntiShakeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 205
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 207
    :sswitch_14
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AutoContrastResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AutoContrastResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 208
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 210
    :sswitch_15
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraQualityResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 211
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 213
    :sswitch_16
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ReviewResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 214
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 216
    :sswitch_17
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShareModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShareModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 217
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 219
    :sswitch_18
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GpsResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 220
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 222
    :sswitch_19
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FlipMenuResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 223
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 225
    :sswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/GuideLineResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 226
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 228
    :sswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShutterSoundResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 229
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 231
    :sswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/StorageResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/StorageResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 232
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 234
    :sswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuRearResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuRearResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 235
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 237
    :sswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuFrontResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CameraSettingsMenuFrontResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 238
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 240
    :sswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EditableShortcutResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EditableShortcutResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 241
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 243
    :sswitch_20
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/OutdoorVisibilityResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 244
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 246
    :sswitch_21
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraRecordingModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraRecordingModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 247
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 249
    :sswitch_22
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCamcorderResolutionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCamcorderResolutionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 250
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 252
    :sswitch_23
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderQualityResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 253
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 255
    :sswitch_24
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AudioRecordingResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 256
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 259
    :sswitch_25
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ZoomValueResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 260
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 262
    :sswitch_26
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAntiShakeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAntiShakeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 263
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 265
    :sswitch_27
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BurstModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BurstModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 266
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 268
    :sswitch_28
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SideTouchResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SideTouchResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 269
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 271
    :sswitch_29
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/QuickAccessResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/QuickAccessResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 272
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 274
    :sswitch_2a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VoiceCommandResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VoiceCommandResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 275
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 277
    :sswitch_2b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SaveRichtoneResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SaveRichtoneResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 278
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 280
    :sswitch_2c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VolumeKeyAsResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VolumeKeyAsResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 281
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 283
    :sswitch_2d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SoundShotModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SoundShotModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 284
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 286
    :sswitch_2e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EasyCameraHDRResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EasyCameraHDRResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 287
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 289
    :sswitch_2f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EasyCameraFlashModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/EasyCameraFlashModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 290
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 292
    :sswitch_30
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FaceDetectionCommandResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FaceDetectionCommandResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 293
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 295
    :sswitch_31
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/TouchToCaptureCommandResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/TouchToCaptureCommandResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 296
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 298
    :sswitch_32
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShareShotResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShareShotResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 299
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 301
    :sswitch_33
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ShareModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ShareModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 302
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 304
    :sswitch_34
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AutoNightDetectionResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/AutoNightDetectionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 305
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 307
    :sswitch_35
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/DualCaptureModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/DualCaptureModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 308
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 310
    :sswitch_36
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VoiceGuideResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/VoiceGuideResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 311
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 313
    :sswitch_37
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CamcorderAudioZoomResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/CamcorderAudioZoomResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 314
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 316
    :sswitch_38
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BeautyLevelValueResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BeautyLevelValueResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 317
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 319
    :sswitch_39
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RemoteViewfinderResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/RemoteViewfinderResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 320
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 322
    :sswitch_3a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SelectFocusModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/SelectFocusModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    .line 323
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_10
        0x8 -> :sswitch_b
        0x9 -> :sswitch_d
        0xa -> :sswitch_e
        0xb -> :sswitch_f
        0xc -> :sswitch_12
        0xd -> :sswitch_13
        0xe -> :sswitch_14
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0x12 -> :sswitch_25
        0x13 -> :sswitch_1a
        0x14 -> :sswitch_18
        0x15 -> :sswitch_1b
        0x16 -> :sswitch_1c
        0x17 -> :sswitch_11
        0x1b -> :sswitch_1d
        0x22 -> :sswitch_2b
        0x23 -> :sswitch_20
        0x27 -> :sswitch_0
        0x28 -> :sswitch_1f
        0x29 -> :sswitch_1
        0x33 -> :sswitch_19
        0x35 -> :sswitch_17
        0x3f -> :sswitch_27
        0x42 -> :sswitch_1
        0x47 -> :sswitch_2a
        0x48 -> :sswitch_2c
        0x4d -> :sswitch_2d
        0x55 -> :sswitch_32
        0x56 -> :sswitch_30
        0x5a -> :sswitch_c
        0x5c -> :sswitch_34
        0x5e -> :sswitch_35
        0x60 -> :sswitch_36
        0x61 -> :sswitch_31
        0x62 -> :sswitch_3a
        0x64 -> :sswitch_3
        0x65 -> :sswitch_7
        0x6d -> :sswitch_38
        0x6e -> :sswitch_1e
        0x70 -> :sswitch_28
        0x72 -> :sswitch_39
        0x78 -> :sswitch_29
        0xbb8 -> :sswitch_21
        0xbb9 -> :sswitch_22
        0xbbb -> :sswitch_23
        0xbbc -> :sswitch_24
        0xbbf -> :sswitch_26
        0xbc1 -> :sswitch_6
        0xbc3 -> :sswitch_2e
        0xbc4 -> :sswitch_2f
        0xbc5 -> :sswitch_25
        0xbc7 -> :sswitch_37
        0x1710 -> :sswitch_33
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 385
    const-string v2, "MenuResourceDepot"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 387
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/EmptyView;->clear()V

    .line 389
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mEmptyView:Lcom/sec/android/app/camera/EmptyView;

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v2, :cond_1

    .line 392
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->clear()V

    .line 393
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 395
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    if-eqz v2, :cond_2

    .line 396
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->clear()V

    .line 397
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mGLCamcorderRecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 399
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 400
    invoke-direct {p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearAllMenus()V

    .line 401
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 402
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    .line 404
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    .line 405
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 406
    .local v1, "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->cleanUpResources()V

    goto :goto_0

    .line 408
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 409
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResources:Ljava/util/HashMap;

    .line 411
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    if-eqz v2, :cond_6

    .line 412
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->clear()V

    .line 413
    iput-object v4, p0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    .line 415
    :cond_6
    return-void
.end method
