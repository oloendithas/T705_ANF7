.class public Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLModeMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
.implements Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;
.implements Lcom/sec/android/glview/TwGLList$OnScrollListener;
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_HEIGHT:I

.field private static final LIST_PADDING:I

.field private static final LIST_POS_Y:I

.field private static final LIST_TRANSLATE_PADDING:I

.field private static final LIST_WIDTH:I

.field private static final MODE_ITEM_MARGIN:I

.field private static final MODE_MENU_ITEM_HEIGHT:I

.field private static final MODE_MENU_ITEM_WIDTH:I

.field private static final MODE_MENU_POS_Y:I

.field private static final TAG:Ljava/lang/String; = "TwGLModeMenu"


# instance fields
.field private mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const v0, 0x7f090035

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_POS_Y:I

    .line 38
    const v0, 0x7f090036

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    .line 40
    const v0, 0x7f090037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    .line 41
    const v0, 0x7f090038

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    .line 42
    const v0, 0x7f09004c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_ITEM_MARGIN:I

    .line 44
    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_WIDTH:I

    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_ITEM_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_HEIGHT:I

    .line 46
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_ITEM_MARGIN:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_POS_Y:I

    .line 48
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TRANSLATE_PADDING:I

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
    const/4 v7, 0x0

    .line 58
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    .line 60
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 61
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_POS_Y:I

    int-to-float v3, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_HEIGHT:I

    int-to-float v5, v2

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 65
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_HEIGHT:I

    int-to-float v5, v2

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 67
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLList;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLList;->setOnScrollListener(Lcom/sec/android/glview/TwGLList$OnScrollListener;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLContext;->registerHoverEventChangedObserver(Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;)V

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_ITEM_MARGIN:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->reset()V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLContext;->unregisterHoverEventChangedObserver(Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;)V

    .line 308
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 309
    return-void
.end method

.method public getCurrentSelectedIndex()I
    .locals 4

    .prologue
    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 237
    .local v1, "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :goto_1
    return v0

    .line 235
    .restart local v0    # "i":I
    .restart local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getModeItemByCommandId(I)Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    .locals 5
    .param p1, "cmdId"    # I

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 247
    .local v2, "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 249
    .local v1, "tempView":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 254
    .end local v1    # "tempView":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :goto_1
    return-object v1

    .line 247
    .restart local v1    # "tempView":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "tempView":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_1
    move-object v1, v2

    .line 254
    goto :goto_1
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 329
    :cond_0
    return v2
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    const/4 v3, 0x0

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->resetOrder(Z)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TRANSLATE_PADDING:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLList;->translateList(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 441
    :cond_1
    :goto_0
    return-void

    .line 404
    :pswitch_0
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    .line 410
    :pswitch_2
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    .line 413
    :pswitch_3
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TRANSLATE_PADDING:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLList;->translateList(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 423
    :pswitch_4
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    .line 426
    :pswitch_5
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    .line 429
    :pswitch_6
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    .line 432
    :pswitch_7
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 421
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 445
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->resetOrder(Z)V

    .line 446
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 392
    return-void
.end method

.method public onDrop(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 450
    return-void
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 282
    const-string v0, "TwGLModeMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setFocusIndicatorRefesh(Z)V

    .line 287
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 288
    return-void
.end method

.method public onHoverEventChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 466
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 313
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->setStepHide()V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 319
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setFocusIndicatorRefesh(Z)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 295
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 296
    return-void
.end method

.method public onScrollEnd()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->setStepChangeMode()V

    .line 461
    :cond_0
    return-void
.end method

.method public onScrollStart()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    .line 259
    const-string v2, "TwGLModeMenu"

    const-string v3, "onShow"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->refreshMenuPosition()V

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 264
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    .line 265
    const/16 v2, 0x12c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->getModeItemByCommandId(I)Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    move-result-object v1

    .line 266
    .local v1, "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    if-eqz v1, :cond_0

    .line 267
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setHighlightImage(Z)V

    .line 272
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->getCurrentSelectedIndex()I

    move-result v0

    .line 273
    .local v0, "currentSelectedIndex":I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 277
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 278
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 3

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "move":F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_WIDTH:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 499
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_WIDTH:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float v0, v1, v2

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 502
    return-void
.end method

.method public refreshModeMenu()V
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getBackCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 493
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->reset()V

    .line 494
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getFrontCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetOrder(Z)V
    .locals 7
    .param p1, "isSave"    # Z

    .prologue
    const/16 v6, 0x63

    .line 333
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getFirstBox()Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    move-result-object v2

    .line 335
    .local v2, "firstBox":Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;
    if-eqz v2, :cond_1

    .line 336
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->moveEmptyToLast()V

    .line 338
    move-object v0, v2

    .line 339
    .local v0, "b":Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 342
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v5, v5, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-nez v5, :cond_2

    .line 343
    const-string v5, "TwGLModeMenu"

    const-string v6, "Invalid menu data was provided"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v0    # "b":Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    return-void

    .line 347
    .restart local v0    # "b":Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 348
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 350
    .local v4, "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v5

    if-eq v5, v6, :cond_3

    .line 351
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    .line 352
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    move-result-object v0

    .line 355
    goto :goto_1

    .line 357
    .end local v4    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_4
    if-eqz p1, :cond_1

    .line 358
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    .line 360
    .local v3, "menuRes":Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->saveOrder()V

    goto :goto_0

    .line 364
    .end local v3    # "menuRes":Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v5, v5, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-nez v5, :cond_6

    .line 365
    const-string v5, "TwGLModeMenu"

    const-string v6, "Invalid menu data was provided"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_6
    :goto_2
    if-eqz v0, :cond_8

    .line 370
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 372
    .restart local v4    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v5

    if-eq v5, v6, :cond_7

    .line 373
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    .line 374
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    move-result-object v0

    .line 377
    goto :goto_2

    .line 379
    .end local v4    # "view":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_8
    if-eqz p1, :cond_1

    .line 380
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    .line 382
    .local v3, "menuRes":Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->saveOrder()V

    goto :goto_0
.end method

.method public setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 2
    .param p1, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->reset()V

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 518
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->refreshMenuPosition()V

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 521
    return-void
.end method
