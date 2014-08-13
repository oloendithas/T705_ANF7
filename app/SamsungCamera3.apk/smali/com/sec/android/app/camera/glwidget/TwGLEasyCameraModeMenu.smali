.class public Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLEasyCameraModeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_POS_Y:I

.field private static final LIST_WIDTH:I

.field private static final MODE_ITEM_MARGIN:I

.field private static final MODE_MENU_ITEM_HEIGHT:I

.field private static final MODE_MENU_ITEM_WIDTH:I


# instance fields
.field private mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f090035

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_POS_Y:I

    .line 26
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_WIDTH:I

    .line 28
    const v0, 0x7f090037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    .line 29
    const v0, 0x7f090038

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    .line 30
    const v0, 0x7f09004c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_ITEM_MARGIN:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    const/4 v7, 0x1

    .line 41
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    .line 43
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 44
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 48
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_ITEM_MARGIN:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 49
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLList;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 57
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_ITEM_MARGIN:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;->reset()V

    .line 224
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 225
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 243
    :cond_0
    return v1
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setFocusIndicatorRefesh(Z)V

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 208
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 229
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->setStepHide()V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 235
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setFocusIndicatorRefesh(Z)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 214
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 215
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->refreshMenuPosition()V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 198
    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 199
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 3

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "move":F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_WIDTH:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 249
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_WIDTH:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float v0, v1, v2

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 253
    :cond_1
    return-void
.end method

.method public setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 2
    .param p1, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;->reset()V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;->setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 271
    return-void
.end method
