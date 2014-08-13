.class public Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLContextMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final MENU_EDIT_SEPARATOR_HEIGHT:I

.field private static final MENU_ICON_POS_X:I

.field private static final MENU_ICON_POS_Y:I

.field private static final MENU_ITEM_COUNT:I = 0x3

.field private static final MENU_ITEM_HEIGHT:I

.field private static final MENU_ITEM_TEXT_FONT_COLOR:I

.field private static final MENU_ITEM_TEXT_FONT_SIZE:I

.field private static final MENU_ITEM_TEXT_HEIGHT:I

.field private static final MENU_ITEM_TEXT_POS_X:I

.field private static final MENU_ITEM_TEXT_POS_Y:I

.field private static final MENU_ITEM_TEXT_WIDTH:I

.field private static final MENU_LANDSCAPE_POS_X:I

.field private static final MENU_PORTRAIT_POS_X:I

.field private static final MENU_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I


# instance fields
.field private mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mEdit:Lcom/sec/android/glview/TwGLButton;

.field private mEffect:Lcom/sec/android/glview/TwGLButton;

.field private mHelp:Lcom/sec/android/glview/TwGLButton;

.field private mMenuHeight:I

.field private mMenuLandPosY:I

.field private mMenuPortPosY:I

.field private mSeparator2:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mSeparator3:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mSeparator4:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mSettings:Lcom/sec/android/glview/TwGLButton;

.field private mTextEdit:Lcom/sec/android/glview/TwGLText;

.field private mTextEffect:Lcom/sec/android/glview/TwGLText;

.field private mTextHelp:Lcom/sec/android/glview/TwGLText;

.field private mTextSettings:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const v0, 0x7f0900c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->SCREEN_WIDTH:I

    .line 36
    const v0, 0x7f0900ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->SCREEN_HEIGHT:I

    .line 38
    const v0, 0x7f0902b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    .line 39
    const v0, 0x7f0902b5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_POS_X:I

    .line 42
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_POS_X:I

    .line 44
    const v0, 0x7f0902b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_WIDTH:I

    .line 45
    const v0, 0x7f0902b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_HEIGHT:I

    .line 46
    const v0, 0x7f0a0036

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_FONT_SIZE:I

    .line 47
    const v0, 0x7f080006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_FONT_COLOR:I

    .line 48
    const v0, 0x7f0902b9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ICON_POS_X:I

    .line 49
    const v0, 0x7f0902ba

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ICON_POS_Y:I

    .line 50
    const v0, 0x7f0902bb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_POS_X:I

    .line 51
    const v0, 0x7f0902bc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_POS_Y:I

    .line 52
    const v0, 0x7f0902bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_SEPARATOR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 16
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "slideDirection"    # I

    .prologue
    .line 74
    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 69
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuHeight:I

    .line 70
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuLandPosY:I

    .line 71
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuPortPosY:I

    .line 76
    const/4 v1, 0x5

    new-array v15, v1, [Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const/4 v1, 0x0

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0xe79

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v2

    aput-object v2, v15, v1

    const/4 v1, 0x1

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0xe78

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v2

    aput-object v2, v15, v1

    const/4 v1, 0x2

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0xe74

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v2

    aput-object v2, v15, v1

    const/4 v1, 0x3

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0xe77

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v2

    aput-object v2, v15, v1

    const/4 v1, 0x4

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0xe75

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v2

    aput-object v2, v15, v1

    .line 83
    .local v15, "res":[Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v12, 0x0

    .line 84
    .local v12, "isSupportHelpMenu":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v12

    .line 86
    :cond_0
    const/4 v11, 0x3

    .line 87
    .local v11, "Menu_Item_Count":I
    const/4 v14, 0x0

    .line 89
    .local v14, "recalcMenuPosY":I
    if-nez v12, :cond_1

    .line 90
    const-string v1, "TwGLContextMenu"

    const-string v2, "Helpmenu is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v11, 0x2

    .line 93
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isDownloadEffectSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const-string v1, "TwGLContextMenu"

    const-string v2, "Effect manager is supported"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    add-int/lit8 v11, v11, 0x1

    .line 96
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_SEPARATOR_HEIGHT:I

    add-int v14, v1, v2

    .line 99
    :cond_2
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    mul-int/2addr v1, v11

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_SEPARATOR_HEIGHT:I

    add-int/lit8 v3, v11, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuHeight:I

    .line 100
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuHeight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuLandPosY:I

    .line 101
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuHeight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuPortPosY:I

    .line 102
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f0203d2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v13

    .line 105
    .local v13, "menuPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuHeight:I

    iget v4, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isDownloadEffectSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, v13, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v13, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    iget v6, v13, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    int-to-float v6, v6

    const/4 v7, 0x1

    aget-object v7, v15, v7

    iget v7, v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    const/4 v8, 0x1

    aget-object v8, v15, v8

    iget v8, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    const/4 v9, 0x0

    const v10, 0x7f0203d1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEffect:Lcom/sec/android/glview/TwGLButton;

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEffect:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ICON_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 123
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x1

    aget-object v8, v15, v8

    iget v8, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextEffect:Lcom/sec/android/glview/TwGLText;

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextEffect:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEffect:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextEffect:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEffect:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x1

    aget-object v3, v15, v3

    iget v3, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEffect:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEffect:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe78

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEffect:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 132
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    iget v5, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_SEPARATOR_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0203ce

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSeparator2:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 148
    :cond_3
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, v13, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v14

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    iget v6, v13, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    int-to-float v6, v6

    const/4 v7, 0x2

    aget-object v7, v15, v7

    iget v7, v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    const/4 v8, 0x2

    aget-object v8, v15, v8

    iget v8, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    const/4 v9, 0x0

    const v10, 0x7f0203d1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEdit:Lcom/sec/android/glview/TwGLButton;

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEdit:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ICON_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 151
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x2

    aget-object v8, v15, v8

    iget v8, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextEdit:Lcom/sec/android/glview/TwGLText;

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextEdit:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEdit:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextEdit:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEdit:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x2

    aget-object v3, v15, v3

    iget v3, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEdit:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEdit:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe74

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEdit:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 160
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    add-int/2addr v4, v14

    iget v5, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_SEPARATOR_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0203ce

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSeparator3:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 163
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, v13, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    add-int/2addr v4, v14

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_SEPARATOR_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    iget v6, v13, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    int-to-float v6, v6

    const/4 v7, 0x3

    aget-object v7, v15, v7

    iget v7, v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    const/4 v8, 0x3

    aget-object v8, v15, v8

    iget v8, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    const/4 v9, 0x0

    const v10, 0x7f0203d1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSettings:Lcom/sec/android/glview/TwGLButton;

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSettings:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ICON_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 166
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x3

    aget-object v8, v15, v8

    iget v8, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextSettings:Lcom/sec/android/glview/TwGLText;

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextSettings:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSettings:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextSettings:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSettings:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x3

    aget-object v3, v15, v3

    iget v3, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSettings:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSettings:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe77

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSettings:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 175
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v14

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_SEPARATOR_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_SEPARATOR_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0203ce

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSeparator4:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 178
    if-eqz v12, :cond_4

    .line 179
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, v13, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v14

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_SEPARATOR_HEIGHT:I

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    iget v6, v13, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_HEIGHT:I

    int-to-float v6, v6

    const/4 v7, 0x4

    aget-object v7, v15, v7

    iget v7, v7, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    const/4 v8, 0x4

    aget-object v8, v15, v8

    iget v8, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    const/4 v9, 0x0

    const v10, 0x7f0203d1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mHelp:Lcom/sec/android/glview/TwGLButton;

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mHelp:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ICON_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 182
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x4

    aget-object v8, v15, v8

    iget v8, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextHelp:Lcom/sec/android/glview/TwGLText;

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextHelp:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mHelp:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mTextHelp:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mHelp:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v3, 0x4

    aget-object v3, v15, v3

    iget v3, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mHelp:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_ITEM_TEXT_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mHelp:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe75

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mHelp:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 193
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isDownloadEffectSupport()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEffect:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 195
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEdit:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_6

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEdit:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 197
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSettings:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_7

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSettings:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 199
    :cond_7
    if-eqz v12, :cond_8

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mHelp:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_8

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mHelp:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 204
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isDownloadEffectSupport()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSeparator2:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 206
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSeparator3:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mSeparator4:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_POS_X:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuLandPosY:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuHeight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_POS_X:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuPortPosY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_POS_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 221
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->initAnimation(I)V

    .line 222
    return-void
.end method

.method private initAnimation(I)V
    .locals 14
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x1

    const/high16 v13, 0x3f800000

    const-wide/16 v11, 0x12c

    const/4 v10, 0x0

    .line 225
    const/4 v4, 0x0

    .line 227
    .local v4, "slideInAnim":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 228
    .local v3, "ShowAnim":Landroid/view/animation/AnimationSet;
    const/4 v5, 0x0

    .line 230
    .local v5, "slideOutAnim":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 233
    .local v2, "HideAnim":Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 252
    :goto_0
    if-eqz v4, :cond_0

    .line 253
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 254
    invoke-virtual {v4, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 255
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 257
    invoke-virtual {v5, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 258
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 261
    :cond_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v10, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 262
    .local v1, "AlphaOnAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v1, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 263
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 265
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v13, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 266
    .local v0, "AlphaOffAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 267
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 269
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 270
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, p0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 272
    return-void

    .line 235
    .end local v0    # "AlphaOffAnimation":Landroid/view/animation/Animation;
    .end local v1    # "AlphaOnAnimation":Landroid/view/animation/Animation;
    :pswitch_0
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4    # "slideInAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    invoke-direct {v4, v10, v10, v6, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 236
    .restart local v4    # "slideInAnim":Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5    # "slideOutAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    invoke-direct {v5, v10, v10, v10, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 237
    .restart local v5    # "slideOutAnim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 239
    :pswitch_1
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4    # "slideInAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v4, v6, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 240
    .restart local v4    # "slideInAnim":Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5    # "slideOutAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v5, v10, v6, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 241
    .restart local v5    # "slideOutAnim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 243
    :pswitch_2
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4    # "slideInAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v4, v10, v10, v6, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 244
    .restart local v4    # "slideInAnim":Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5    # "slideOutAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v5, v10, v10, v10, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 245
    .restart local v5    # "slideOutAnim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 247
    :pswitch_3
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4    # "slideInAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    invoke-direct {v4, v6, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 248
    .restart local v4    # "slideInAnim":Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5    # "slideOutAnim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    invoke-direct {v5, v10, v6, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v5    # "slideOutAnim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 328
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 5
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onEditModeSelectCommand()V

    move v0, v1

    .line 299
    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onManageEffectMenuCommand()V

    move v0, v1

    .line 296
    goto :goto_0

    .line 301
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v2, :cond_0

    .line 302
    const/16 v0, 0x1b

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move v0, v1

    .line 303
    goto :goto_0

    .line 308
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onShowHelpHub()V

    move v0, v1

    .line 309
    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0xe74
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->initAnimation(I)V

    .line 339
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 334
    return-void
.end method

.method public onShow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mContextMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEdit:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 286
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 287
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mEdit:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_0
.end method
