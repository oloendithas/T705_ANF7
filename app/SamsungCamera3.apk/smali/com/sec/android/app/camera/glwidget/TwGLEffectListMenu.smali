.class public Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLEffectListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final EFFECT_ANCHOR_LEFT_PADDING:I

.field private static final EFFECT_ANCHOR_WIDTH:I

.field private static final EFFECT_FIRST_ITEM_HEIGHT:I

.field private static final EFFECT_ITEM_WIDTH:I

.field private static final EFFECT_LAST_ITEM_HEIGHT:I

.field private static final EFFECT_MENU_HEIGHT:I

.field private static final EFFECT_MENU_POS_X:I

.field private static final EFFECT_MENU_POS_Y:I

.field private static final EFFECT_MENU_WIDTH:I

.field private static final EFFECT_MIDDLE_ITEM_HEIGHT:I

.field private static final EFFECT_TYPE_BUTTON_MARGIN:I

.field private static final FIRST_ITEM:I = 0x0

.field private static final LAST_ITEM:I = 0x2

.field private static final MIDDLE_ITEM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLEffectListMenu"


# instance fields
.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMute:Z

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f0902fa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MENU_POS_X:I

    .line 49
    const v0, 0x7f0902fb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MENU_POS_Y:I

    .line 50
    const v0, 0x7f0902fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MENU_WIDTH:I

    .line 51
    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MENU_HEIGHT:I

    .line 52
    const v0, 0x7f0902fd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_ITEM_WIDTH:I

    .line 53
    const v0, 0x7f0902fe

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_FIRST_ITEM_HEIGHT:I

    .line 54
    const v0, 0x7f0902ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MIDDLE_ITEM_HEIGHT:I

    .line 55
    const v0, 0x7f090300

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_LAST_ITEM_HEIGHT:I

    .line 56
    const v0, 0x7f090301

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_ANCHOR_LEFT_PADDING:I

    .line 57
    const v0, 0x7f090100

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_TYPE_BUTTON_MARGIN:I

    .line 58
    const v0, 0x7f09002f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_ANCHOR_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "slideDirection"    # I

    .prologue
    .line 73
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;IIZ)V

    .line 74
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
    .param p8, "isMuted"    # Z

    .prologue
    .line 78
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 69
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu$TwGLMenuAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mItemList:Landroid/util/SparseArray;

    .line 80
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 82
    iput-boolean p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMute:Z

    .line 84
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MENU_POS_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 86
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, p7, v1}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, p7, v1}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_LAST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MIDDLE_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMute:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_FIRST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 110
    return-void
.end method

.method public getCurrentSelectedIndex()I
    .locals 4

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 258
    .local v1, "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :goto_1
    return v0

    .line 256
    .restart local v0    # "i":I
    .restart local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 234
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mViewId:I

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 238
    :cond_1
    return v2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getFirstFullyVisibleViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 228
    :cond_0
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v0, 0x1

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->isActive()Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showEffectMenu()V

    .line 207
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 211
    :goto_1
    return v0

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideEffectMenu()V

    goto :goto_0

    .line 211
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 6
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 181
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    .line 172
    :sswitch_0
    const/4 v0, 0x0

    .line 173
    .local v0, "menuCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    const/16 v2, 0x232a

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    goto :goto_0

    .line 178
    .end local v0    # "menuCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onManageEffectMenuCommand()V

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0xe78 -> :sswitch_1
        0x232a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 196
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 197
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 245
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->refreshMenuPosition()V

    .line 188
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 189
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->getContentHeight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_ANCHOR_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_ANCHOR_LEFT_PADDING:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_ANCHOR_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_ANCHOR_LEFT_PADDING:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEffectListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLList;->getContentHeight()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto :goto_0
.end method
