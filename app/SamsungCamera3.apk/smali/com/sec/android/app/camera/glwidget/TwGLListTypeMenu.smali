.class public Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLListTypeMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field public static final ANCHOR_PADDING:I

.field public static final ANCHOR_WIDTH:I

.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field public static final LIST_SCROLL_PADDING:I

.field private static final MENU_HEIGHT:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field public static final MENU_SETTING_PADDING:I

.field public static final MENU_SETTING_POS_X:I

.field public static final MENU_SETTING_POS_Y:I

.field public static final MENU_SETTING_THIRD_POS_X:I

.field public static final MENU_SETTING_THIRD_POS_Y:I

.field public static final MENU_SETTING_Y_PADDING:I

.field private static final MENU_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final TITLE_DEVIDER_LINE_OFFSET:I

.field public static final TITLE_DIVIDER_LINE_HEIGHT:I

.field public static final TITLE_DIVIDER_LINE_POS_Y:I

.field public static final TITLE_DIVIDER_LINE_WIDTH:I

.field private static final TITLE_HEIGHT:I

.field public static final TITLE_INFO_LEFT_PADDING:I

.field public static final TITLE_INFO_POS_Y:I

.field public static final TITLE_INFO_WIDTH:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TEXT_SIZE:F

.field private static mTranslateX:F

.field private static mTranslateY:F


# instance fields
.field private mHasInfoButton:Z

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mInfoButton:Lcom/sec/android/glview/TwGLButton;

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuID:I

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mOrientation:I

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mSlideDirection:I

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mZOrder:I

.field private menuPadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    .line 52
    const v0, 0x7f0900bf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    .line 53
    const v0, 0x7f0900c0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    .line 55
    const v0, 0x7f0900c1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    .line 56
    const v0, 0x7f0900c2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_HEIGHT:I

    .line 57
    const v0, 0x7f0900c7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_WIDTH:I

    .line 58
    const v0, 0x7f0900c8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_HEIGHT:I

    .line 60
    const v0, 0x7f0900c3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    .line 61
    const v0, 0x7f0900c4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    .line 62
    const v0, 0x7f0a0038

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_SIZE:F

    .line 63
    const v0, 0x7f08000a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_COLOR:I

    .line 64
    const v0, 0x7f0900cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DEVIDER_LINE_OFFSET:I

    .line 65
    const v0, 0x7f0900cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_POS_Y:I

    .line 66
    const v0, 0x7f0900cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_WIDTH:I

    .line 67
    const v0, 0x7f0900ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_HEIGHT:I

    .line 68
    const v0, 0x7f0900d0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_POS_Y:I

    .line 69
    const v0, 0x7f0900d1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_LEFT_PADDING:I

    .line 70
    const v0, 0x7f0900d2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    .line 72
    const v0, 0x7f0900d3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    .line 73
    const v0, 0x7f0900d4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_Y:I

    .line 74
    const v0, 0x7f0900d5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_PADDING:I

    .line 75
    const v0, 0x7f0900d6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    .line 76
    const v0, 0x7f0900d7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_Y:I

    .line 77
    const v0, 0x7f0900d8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_Y_PADDING:I

    .line 79
    const v0, 0x7f09002c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_WIDTH:I

    .line 80
    const v0, 0x7f09002e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    .line 81
    const v0, 0x7f09018d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_SCROLL_PADDING:I

    .line 101
    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateY:F

    .line 102
    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "slideDirection"    # I

    .prologue
    const/4 v7, 0x0

    .line 105
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    .line 94
    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    .line 96
    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 97
    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 107
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    .line 108
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 109
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 110
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    .line 111
    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->init()V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;IIZ)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "slideDirection"    # I
    .param p8, "hasInfoButton"    # Z

    .prologue
    .line 117
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 119
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    .line 120
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 121
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 122
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    .line 123
    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    .line 124
    iput-boolean p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    .line 125
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->init()V

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .locals 5

    .prologue
    .line 428
    const/4 v3, 0x0

    .line 429
    .local v3, "size":I
    const/4 v1, 0x0

    .line 431
    .local v1, "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v3

    .line 433
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 434
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v4, v0}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .end local v1    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 435
    .restart local v1    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 440
    .end local v1    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .local v2, "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :goto_1
    return-object v2

    .line 433
    .end local v2    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v1    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 440
    .end local v1    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .restart local v2    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    goto :goto_1
.end method

.method private init()V
    .locals 11

    .prologue
    .line 129
    new-instance v0, Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 135
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v10, v0, v1

    .line 137
    .local v10, "mTitleWidth":I
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    if-eqz v0, :cond_0

    .line 138
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DEVIDER_LINE_OFFSET:I

    sub-int v0, v10, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_LEFT_PADDING:I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    sub-int v10, v0, v1

    .line 139
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    add-int/2addr v2, v10

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DEVIDER_LINE_OFFSET:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_LEFT_PADDING:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f0200c7

    const v7, 0x7f0200c8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0xbcd

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 148
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    int-to-float v4, v10

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 154
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_SCROLL_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarPadding(F)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    .line 160
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 168
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 173
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getExpandAnimation(Lcom/sec/android/glview/TwGLView;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getExpandAnimation(Lcom/sec/android/glview/TwGLView;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 184
    return-void

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 190
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 191
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 271
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 263
    :cond_0
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBeautyMenu()V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_1
    return v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBeautyMenu()V

    goto :goto_0

    .line 252
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 405
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xbcd

    if-ne v0, v1, :cond_1

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onHelpPopupSelect(I)V

    .line 409
    :cond_0
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 234
    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    .line 235
    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateY:F

    .line 238
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 239
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 416
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    .line 417
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->refreshMenuPosition()V

    .line 418
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 278
    .local v0, "depth":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 279
    add-int/lit8 v0, v0, -0x1

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBaseMenu()V

    move v1, v0

    .line 282
    .end local v0    # "depth":I
    .local v1, "depth":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "depth":I
    .restart local v0    # "depth":I
    if-lez v1, :cond_1

    .line 283
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v1, v0

    .end local v0    # "depth":I
    .restart local v1    # "depth":I
    goto :goto_0

    .line 285
    .end local v1    # "depth":I
    .restart local v0    # "depth":I
    :cond_1
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->refreshMenuPosition()V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->requestLastViewFocus()V

    .line 227
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 228
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f800000

    const/high16 v6, 0x40000000

    .line 288
    const/4 v0, 0x0

    .local v0, "translateX":F
    const/4 v1, 0x0

    .line 291
    .local v1, "translateY":F
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-nez v2, :cond_5

    .line 292
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_4

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 295
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 402
    :goto_0
    return-void

    .line 298
    :pswitch_0
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateY:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_Y_PADDING:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_Y_PADDING:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_Y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    .line 309
    :pswitch_1
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateY:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_Y:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_Y_PADDING:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_Y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    .line 320
    :pswitch_2
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateY:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_Y_PADDING:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_Y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 332
    :pswitch_3
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 333
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateY:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 335
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_Y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 345
    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 347
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_Y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 350
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 353
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_Y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 356
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 363
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_2

    .line 396
    :cond_6
    :goto_1
    const-string v2, "MenuBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "translateX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", translateY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    .line 398
    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateY:F

    .line 400
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 365
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 366
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v1, v2, v6

    .line 368
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 369
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float v1, v2, v3

    goto :goto_1

    .line 370
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 371
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float v1, v2, v3

    goto/16 :goto_1

    .line 375
    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 376
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 377
    goto/16 :goto_1

    .line 379
    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 380
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v6

    .line 382
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_8

    .line 383
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    mul-float/2addr v3, v6

    add-float v1, v2, v3

    goto/16 :goto_1

    .line 384
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float v2, v1, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 385
    mul-float v2, v1, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float v1, v2, v3

    goto/16 :goto_1

    .line 389
    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 390
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 391
    goto/16 :goto_1

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 345
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 363
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public requestLastViewFocus()V
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->findLastSelectedView()Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-result-object v0

    .line 422
    .local v0, "lastSelectedView":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 425
    :cond_0
    return-void
.end method
