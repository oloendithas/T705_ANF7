.class public Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLEditableSideBar.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;


# static fields
.field public static final ANCHOR_HEIGHT:I

.field public static final ANCHOR_POS_X:I

.field public static final ANCHOR_POS_Y:I

.field public static final ANCHOR_POS_Y_OFFSET:I

.field public static final ANCHOR_WIDTH:I

.field public static final DRAGBOX_FIRST_BOX_POS_Y:I

.field public static final DRAGBOX_ITEM_HEIGHT:I

.field public static final DRAGBOX_ITEM_WIDTH:I

.field public static final DRAGBOX_POS_X:I

.field public static final DRAGBOX_SIDE_MARGIN:I

.field public static final EDITABLE_AREA_POS_X:I

.field public static final EDITABLE_AREA_POS_Y:I

.field public static final EFFECT_ANCHOR_HEIGHT:I

.field public static final EFFECT_ANCHOR_WIDTH:I

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_POS_X:I

.field public static final ITEM_POS_Y:I

.field public static final ITEM_WIDTH:I

.field public static final MAX_NUMBER_OF_SIDEBAR_ITEM:I

.field public static final MENU_HEIGHT:I

.field public static final MENU_WIDTH:I

.field private static final RELOCATEITEM_ANIMATION_DURATION:I = 0xc8

.field public static final SETTING_BUTTON_POS_X:I

.field public static final SETTING_BUTTON_POS_Y:I

.field public static final SIDEBAR_BOUNDARY_LINE:I

.field public static final SWITCH_CAMERA_BUTTON_POS_X:I

.field public static final SWITCH_CAMERA_BUTTON_POS_Y:I

.field private static final TAG:Ljava/lang/String; = "TwGLEditableSideBar"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

.field private mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;",
            ">;"
        }
    .end annotation
.end field

.field private mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

.field private mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

.field private mIsLaunchSettingMenuByDragStartSideBarItem:Z

.field private mIsLocatedInSideBar:Z

.field private mItemAnchorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

.field private mNeedToRemoveBox:Z

.field private mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

.field private mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mTempAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mzOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const v0, 0x7f090165

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MENU_WIDTH:I

    .line 34
    const v0, 0x7f090166

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MENU_HEIGHT:I

    .line 36
    const v0, 0x7f090167

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EDITABLE_AREA_POS_X:I

    .line 37
    const v0, 0x7f090168

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EDITABLE_AREA_POS_Y:I

    .line 39
    const v0, 0x7f090013

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_WIDTH:I

    .line 40
    const v0, 0x7f090014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_HEIGHT:I

    .line 41
    const v0, 0x7f090169

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_POS_X:I

    .line 42
    const v0, 0x7f09016a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_POS_Y:I

    .line 44
    const v0, 0x7f09016b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_WIDTH:I

    .line 45
    const v0, 0x7f09016c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    .line 46
    const v0, 0x7f09016d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_POS_X:I

    .line 47
    const v0, 0x7f09016e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_FIRST_BOX_POS_Y:I

    .line 48
    const v0, 0x7f090173

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_SIDE_MARGIN:I

    .line 50
    const v0, 0x7f0902be

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SIDEBAR_BOUNDARY_LINE:I

    .line 51
    const v0, 0x7f09016f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SWITCH_CAMERA_BUTTON_POS_X:I

    .line 52
    const v0, 0x7f090170

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SWITCH_CAMERA_BUTTON_POS_Y:I

    .line 53
    const v0, 0x7f090171

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SETTING_BUTTON_POS_X:I

    .line 54
    const v0, 0x7f090172

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SETTING_BUTTON_POS_Y:I

    .line 57
    const v0, 0x7f0a002f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MAX_NUMBER_OF_SIDEBAR_ITEM:I

    .line 59
    const v0, 0x7f09002c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_WIDTH:I

    .line 60
    const v0, 0x7f09002d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_HEIGHT:I

    .line 61
    const v0, 0x7f09002f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_WIDTH:I

    .line 62
    const v0, 0x7f090030

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_HEIGHT:I

    .line 63
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_WIDTH:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_X:I

    .line 64
    const v0, 0x7f090032

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_Y:I

    .line 65
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_Y_OFFSET:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFI)V
    .locals 21
    .param p1, "activityCamera"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "zOrder"    # I

    .prologue
    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemList:Ljava/util/ArrayList;

    .line 76
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    .line 78
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 79
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 80
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 85
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    .line 86
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mNeedToRemoveBox:Z

    .line 87
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    .line 92
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 93
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mzOrder:I

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->initSideBarItemList()V

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v20

    .line 99
    .local v20, "resSwitchCameraIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x24

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-direct {v8, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 100
    .local v8, "switchCameraBundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0x24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mzOrder:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    .line 102
    .local v9, "cmdSwitchCamera":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SWITCH_CAMERA_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SWITCH_CAMERA_BUTTON_POS_Y:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_HEIGHT:I

    int-to-float v7, v7

    const/4 v10, 0x2

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/16 v3, 0x5351

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v19

    .line 109
    .local v19, "resSettingsIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v16, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x1b

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 110
    .local v16, "settingBundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0x1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mzOrder:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v17

    .line 111
    .local v17, "cmdSettings":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SETTING_BUTTON_POS_X:I

    int-to-float v12, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SETTING_BUTTON_POS_Y:I

    int-to-float v13, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_WIDTH:I

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_HEIGHT:I

    int-to-float v15, v2

    const/16 v18, 0x2

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/16 v3, 0x5351

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->refreshAnchors()V

    .line 117
    return-void
.end method


# virtual methods
.method public addEmptyItem(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MAX_NUMBER_OF_SIDEBAR_ITEM:I

    if-lt v1, v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->makeDragBox()Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    move-result-object v0

    .line 246
    .local v0, "emptyBox":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    float-to-int v2, p2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->coordiYtoCellPosition(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 247
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    .line 249
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f020277

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->relocateItem()V

    goto :goto_0
.end method

.method public coordiYtoCellPosition(I)I
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 222
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MENU_HEIGHT:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    div-int v0, p1, v0

    return v0
.end method

.method public getNumberOfEditableSideBarItem()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(I)I
    .locals 5
    .param p1, "cmd"    # I

    .prologue
    .line 295
    const/4 v3, -0x1

    .line 297
    .local v3, "index":I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 298
    .local v0, "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    .line 299
    .local v1, "commandId":I
    if-ne v1, p1, :cond_0

    .line 300
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    .line 304
    .end local v0    # "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    .end local v1    # "commandId":I
    :cond_1
    return v3
.end method

.method public initSideBarItemList()V
    .locals 23

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    const/16 v20, 0x0

    .line 125
    .local v20, "interval":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-lez v3, :cond_0

    .line 126
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MENU_HEIGHT:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int v20, v3, v4

    .line 129
    :cond_0
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_FIRST_BOX_POS_Y:I

    add-int v22, v3, v20

    .line 130
    .local v22, "posY":I
    const/16 v19, 0x0

    .local v19, "i":I
    move-object/from16 v21, v2

    .end local v2    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .local v21, "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    .line 131
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V

    .line 132
    .local v1, "dropBox":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    const/4 v3, 0x0

    move/from16 v0, v22

    int-to-float v4, v0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 134
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    .line 135
    .local v8, "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mzOrder:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    .line 136
    .local v9, "command":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_POS_Y:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_HEIGHT:I

    int-to-float v7, v7

    const/4 v10, 0x2

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v21    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v2    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 140
    new-instance v10, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_X:I

    int-to-float v12, v3

    const/4 v13, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_WIDTH:I

    int-to-float v14, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_HEIGHT:I

    int-to-float v15, v3

    const/16 v16, 0x1

    const v17, 0x7f020277

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_Y_OFFSET:I

    add-int v5, v5, v22

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 146
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    add-int v3, v3, v20

    add-int v22, v22, v3

    .line 147
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-nez v3, :cond_1

    .line 149
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 151
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    .end local v8    # "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v9    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    .line 159
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setOnSideBarBoxCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;)V

    .line 130
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v21, v2

    .end local v2    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v21    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    goto/16 :goto_0

    .line 154
    :catch_0
    move-exception v18

    move-object/from16 v2, v21

    .line 155
    .end local v21    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v2    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .local v18, "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    const-string v3, "TwGLEditableSideBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickSetting IndexOut for index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    .end local v1    # "dropBox":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    .end local v2    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v18    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v21    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_2
    return-void

    .line 154
    .end local v21    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v1    # "dropBox":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    .restart local v2    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v8    # "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v9    # "command":Lcom/sec/android/app/camera/command/MenuCommand;
    :catch_1
    move-exception v18

    goto :goto_2
.end method

.method public isLaunchSettingMenuByDragStartSideBarItem()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    return v0
.end method

.method public makeDragBox()Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    .locals 8

    .prologue
    .line 226
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V

    .line 227
    .local v0, "emptyBox":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    .line 229
    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 230
    .local v7, "emptyItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    const/16 v1, 0x63

    invoke-virtual {v7, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 232
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 233
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V

    .line 234
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    .line 235
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setOnSideBarBoxCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;)V

    .line 237
    return-object v0
.end method

.method public onCancelDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 450
    return-void
.end method

.method public onDragEndItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v3, 0x0

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mNeedToRemoveBox:Z

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    .line 402
    .local v0, "commandId":I
    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 404
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mNeedToRemoveBox:Z

    .line 407
    .end local v0    # "commandId":I
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->removeEmptyItem(Z)V

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarAreaVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->resetOrder()V

    .line 413
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    .line 414
    return-void
.end method

.method public onDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 420
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SIDEBAR_BOUNDARY_LINE:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    .line 421
    const/4 v0, 0x1

    .line 422
    .local v0, "inSideBar":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarAreaVisibility(I)V

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    .line 426
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mNeedToRemoveBox:Z

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->addEmptyItem(FF)V

    .line 443
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    if-eq v1, v0, :cond_2

    .line 444
    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    .line 446
    :cond_2
    return-void

    .line 430
    .end local v0    # "inSideBar":Z
    :cond_3
    const/4 v0, 0x0

    .line 431
    .restart local v0    # "inSideBar":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 432
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    .line 434
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    .line 437
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mNeedToRemoveBox:Z

    .line 438
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->removeEmptyItem(Z)V

    goto :goto_0
.end method

.method public onDragStartItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/16 v4, 0x1b

    const/4 v2, 0x1

    .line 377
    instance-of v1, p1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v1, :cond_0

    .line 378
    check-cast p1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .end local p1    # "view":Lcom/sec/android/glview/TwGLView;
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 381
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    .line 382
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 388
    .local v0, "cmd":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_2

    .line 389
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 393
    .end local v0    # "cmd":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v1, :cond_3

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarAreaVisibility(I)V

    .line 396
    :cond_3
    return-void
.end method

.method public onDrop(Lcom/sec/android/glview/TwGLView;)V
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setshowEditableShortcutGuideDialog(I)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->resetOrder()V

    .line 170
    return-void
.end method

.method public onSideBarBoxCancelListener(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->removeEmptyItem(Z)V

    .line 347
    return-void
.end method

.method public refreshAnchors()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 309
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 311
    .local v9, "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 309
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 317
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x1

    const v7, 0x7f02006d

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 323
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    goto :goto_1

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    goto :goto_2

    .line 326
    .end local v8    # "i":I
    .end local v9    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_2
    return-void
.end method

.method public relocateItem()V
    .locals 17

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    if-gez v13, :cond_1

    .line 219
    :cond_0
    return-void

    .line 177
    :cond_1
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MENU_HEIGHT:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x2

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    mul-int/2addr v14, v15

    sub-int/2addr v13, v14

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_SIDE_MARGIN:I

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    div-int v9, v13, v14

    .line 178
    .local v9, "interval":I
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_FIRST_BOX_POS_Y:I

    add-int v11, v13, v9

    .line 179
    .local v11, "posY":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_0

    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 181
    .local v2, "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    const/4 v12, 0x0

    .line 182
    .local v12, "previousBox":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    const/4 v10, 0x0

    .line 183
    .local v10, "nextBox":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    .line 185
    .local v3, "commandId":I
    if-eqz v8, :cond_2

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v14, v8, -0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "previousBox":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    check-cast v12, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 188
    .restart local v12    # "previousBox":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-eq v8, v13, :cond_3

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "nextBox":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    check-cast v10, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 192
    .restart local v10    # "nextBox":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    :cond_3
    invoke-virtual {v2, v12}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setPrevious(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V

    .line 193
    invoke-virtual {v2, v10}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNext(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V

    .line 195
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutX()F

    move-result v6

    .line 196
    .local v6, "fromX":F
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutY()F

    move-result v7

    .line 198
    .local v7, "fromY":F
    const/4 v13, 0x0

    int-to-float v14, v11

    invoke-virtual {v2, v13, v14}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 199
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_Y_OFFSET:I

    add-int/2addr v15, v11

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 203
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    add-int/2addr v13, v9

    add-int/2addr v11, v13

    .line 205
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutX()F

    move-result v13

    sub-float v4, v13, v6

    .line 206
    .local v4, "deltaX":F
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutY()F

    move-result v13

    sub-float v5, v13, v7

    .line 208
    .local v5, "deltaY":F
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-float v13, v4

    const/4 v14, 0x0

    neg-float v15, v5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v1, v13, v14, v15, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 209
    .local v1, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 210
    const-wide/16 v13, 0xc8

    invoke-virtual {v1, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 211
    new-instance v13, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 212
    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 213
    const/16 v13, 0x63

    if-eq v3, v13, :cond_4

    .line 214
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 217
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLView;->setClipRect(Landroid/graphics/Rect;)V

    .line 179
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method public removeEmptyItem(Z)V
    .locals 5
    .param p1, "immediatlyRemove"    # Z

    .prologue
    .line 259
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 260
    .local v0, "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    .line 261
    .local v1, "commandId":I
    const/16 v3, 0x63

    if-ne v1, v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 265
    if-eqz p1, :cond_1

    .line 266
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eq v3, v0, :cond_0

    .line 269
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 274
    .end local v0    # "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    .end local v1    # "commandId":I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->relocateItem()V

    .line 275
    return-void
.end method

.method public resetEditableMenu()V
    .locals 4

    .prologue
    .line 329
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSideBarMenuOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 333
    .local v0, "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 334
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->clear()V

    goto :goto_0

    .line 337
    .end local v0    # "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 340
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->initSideBarItemList()V

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->refreshAnchors()V

    .line 342
    return-void
.end method

.method public resetOrder()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 281
    .local v0, "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    .line 282
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setFocusBGVisibility(I)V

    .line 284
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 285
    .local v3, "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 289
    .end local v0    # "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    .end local v3    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 290
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->saveOrder()V

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->refreshAnchors()V

    .line 292
    return-void
.end method

.method public setDraggable(Z)V
    .locals 3
    .param p1, "draggable"    # Z

    .prologue
    .line 358
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 359
    .local v0, "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    goto :goto_0

    .line 361
    .end local v0    # "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    :cond_0
    return-void
.end method

.method public setEditableSideBarVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 350
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    .line 352
    .local v0, "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 355
    .end local v0    # "box":Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
