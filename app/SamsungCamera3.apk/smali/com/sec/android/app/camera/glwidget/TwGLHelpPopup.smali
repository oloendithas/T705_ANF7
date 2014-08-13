.class public Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLHelpPopup.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field private static final LIST_TOP_PADDING:I

.field private static final POPUP_HEIGHT:I

.field private static final POPUP_PORTRAIT_HEIGHT:I

.field private static final POPUP_PORTRAIT_POS_X:I

.field private static final POPUP_PORTRAIT_POS_Y:I

.field private static final POPUP_PORTRAIT_WIDTH:I

.field private static final POPUP_POS_X:I

.field private static final POPUP_POS_Y:I

.field private static final POPUP_TIMEOVER:I = 0x2710

.field private static final POPUP_WIDTH:I

.field private static final TITLE_CLOSE_LEFT_PADDING:I

.field private static final TITLE_CLOSE_POS_Y:I

.field private static final TITLE_CLOSE_WIDTH:I

.field private static final TITLE_HEIGHT:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static TITLE_TEXT_HEIGHT:I

.field private static final TITLE_TEXT_HEIGHT_SEA:I

.field private static final TITLE_TEXT_SIZE:F

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mDescriptionIconResId:I

.field private mDescriptionType:I

.field private mHasListTopBottomPadding:Z

.field private mHelpDescriptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHelpListSize:I

.field private mHelpSubTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHideDescription:Ljava/lang/Runnable;

.field private mIsPopupTimeOut:Z

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mListContentHeight:I

.field private mMenuTitle:Ljava/lang/String;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mShareshotItemStringId:I

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mTitleWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f090257

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_X:I

    .line 54
    const v0, 0x7f090258

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_Y:I

    .line 55
    const v0, 0x7f090259

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    .line 56
    const v0, 0x7f09025a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    .line 57
    const v0, 0x7f090264

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_X:I

    .line 58
    const v0, 0x7f090265

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_Y:I

    .line 59
    const v0, 0x7f090266

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    .line 60
    const v0, 0x7f090267

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    .line 61
    const v0, 0x7f09025b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    .line 62
    const v0, 0x7f09025c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    .line 63
    const v0, 0x7f09025d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT_SEA:I

    .line 64
    const v0, 0x7f09025e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    .line 65
    const v0, 0x7f09025f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TOP_PADDING:I

    .line 66
    const v0, 0x7f0a0043

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_SIZE:F

    .line 67
    const v0, 0x7f08000a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_COLOR:I

    .line 68
    const v0, 0x7f090260

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_POS_Y:I

    .line 69
    const v0, 0x7f090261

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    .line 70
    const v0, 0x7f090262

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    .line 71
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_WIDTH:I

    .line 72
    const v0, 0x7f090268

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_HEIGHT:I

    .line 73
    const v0, 0x7f090263

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_TOP_PADDING:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 103
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionIconResId:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHasListTopBottomPadding:Z

    .line 93
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    .line 105
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->iniResources(I)V

    .line 107
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSEALanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT_SEA:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    .line 112
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v10

    .line 119
    .local v10, "menuPaddings":Landroid/graphics/Rect;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    .line 122
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 123
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TOP_PADDING:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 127
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f020046

    const v7, 0x7f020047

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0xbcc

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 136
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_TOP_PADDING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHasListTopBottomPadding:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionIconResId:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    .line 493
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 494
    return-void
.end method

.method public iniResources(I)V
    .locals 14
    .param p1, "modeId"    # I

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_0

    .line 392
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 162
    :pswitch_1
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0254

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 164
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0255

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 167
    .local v7, "res":Landroid/content/res/Resources;
    if-eqz v7, :cond_0

    .line 170
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 171
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 172
    .local v1, "globalLocale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, "voiceLocale":Ljava/lang/String;
    const-string v11, "zh"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 178
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "CN"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 179
    new-instance v11, Ljava/util/Locale;

    const-string v12, "zh"

    const-string v13, "CN"

    invoke-direct {v11, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 197
    :cond_1
    :goto_1
    const/4 v11, 0x0

    invoke-virtual {v7, v0, v11}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 198
    const/high16 v11, 0x7f070000

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "mBargeInCommands":[Ljava/lang/String;
    const-string v6, ""

    .line 200
    .local v6, "mHelpDescriptionListItems":Ljava/lang/String;
    array-length v3, v4

    .line 201
    .local v3, "itemsLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_6

    .line 202
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v4, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 203
    add-int/lit8 v11, v3, -0x1

    if-ge v2, v11, :cond_2

    .line 204
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 201
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 181
    .end local v2    # "i":I
    .end local v3    # "itemsLength":I
    .end local v4    # "mBargeInCommands":[Ljava/lang/String;
    .end local v6    # "mHelpDescriptionListItems":Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/util/Locale;

    const-string v12, "en"

    invoke-direct {v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v11, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 184
    :cond_4
    const-string v11, "pt-BR"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 185
    const-string v11, "-"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "splitVoiceLocale":[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 188
    const/4 v10, 0x0

    .line 189
    .local v10, "voicetalkLocale":Ljava/util/Locale;
    new-instance v10, Ljava/util/Locale;

    .end local v10    # "voicetalkLocale":Ljava/util/Locale;
    const/4 v11, 0x0

    aget-object v11, v8, v11

    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-direct {v10, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .restart local v10    # "voicetalkLocale":Ljava/util/Locale;
    iput-object v10, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 194
    .end local v8    # "splitVoiceLocale":[Ljava/lang/String;
    .end local v10    # "voicetalkLocale":Ljava/util/Locale;
    :cond_5
    new-instance v11, Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v9, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 207
    .restart local v2    # "i":I
    .restart local v3    # "itemsLength":I
    .restart local v4    # "mBargeInCommands":[Ljava/lang/String;
    .restart local v6    # "mHelpDescriptionListItems":Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    const v11, 0x7f070001

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "mBargeInCommandsForRecording":[Ljava/lang/String;
    const-string v6, ""

    .line 211
    array-length v3, v5

    .line 212
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_8

    .line 213
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v5, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 214
    add-int/lit8 v11, v3, -0x1

    if-ge v2, v11, :cond_7

    .line 215
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 218
    :cond_8
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 221
    const/4 v11, 0x0

    invoke-virtual {v7, v0, v11}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 223
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0256

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 225
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 228
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "globalLocale":Ljava/util/Locale;
    .end local v2    # "i":I
    .end local v3    # "itemsLength":I
    .end local v4    # "mBargeInCommands":[Ljava/lang/String;
    .end local v5    # "mBargeInCommandsForRecording":[Ljava/lang/String;
    .end local v6    # "mHelpDescriptionListItems":Ljava/lang/String;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v9    # "voiceLocale":Ljava/lang/String;
    :pswitch_2
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0259

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 230
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b025a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b025b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b025c

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b025d

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0262

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0263

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 257
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 260
    :pswitch_3
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0259

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 262
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b025a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b025b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b025c

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b025d

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 275
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 278
    :pswitch_4
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0265

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 280
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v11

    if-eqz v11, :cond_9

    const v11, 0x7f0b0268

    :goto_4
    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    .line 281
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0266

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v13, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0269

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b026a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0167

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b026f

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 296
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 280
    :cond_9
    const v11, 0x7f0b0267

    goto :goto_4

    .line 299
    :pswitch_5
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0265

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 301
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v11

    if-eqz v11, :cond_a

    const v11, 0x7f0b0268

    :goto_5
    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    .line 302
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0266

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v13, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0269

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b026a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 308
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 301
    :cond_a
    const v11, 0x7f0b0267

    goto :goto_5

    .line 311
    :pswitch_6
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0265

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 313
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v11

    if-eqz v11, :cond_b

    const v11, 0x7f0b0268

    :goto_6
    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    .line 314
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0266

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v13, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 317
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 313
    :cond_b
    const v11, 0x7f0b0267

    goto :goto_6

    .line 321
    :pswitch_7
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0162

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 325
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 326
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0270

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0271

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 329
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 332
    :pswitch_8
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0163

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 333
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 334
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b027b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 336
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 339
    :pswitch_9
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0166

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 340
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 341
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0272

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 343
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 349
    :pswitch_a
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b015f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 351
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 352
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0273

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 354
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 357
    :pswitch_b
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0141

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 358
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 359
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0274

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 361
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 364
    :pswitch_c
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0142

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 365
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 366
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0275

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 368
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 371
    :pswitch_d
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b015c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 372
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 373
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0276

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 375
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 378
    :pswitch_e
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0145

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 379
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 380
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0277

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 382
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 385
    :pswitch_f
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v12, 0x7f0b0146

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 386
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 387
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0b0279

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 389
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0xbc7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_e
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 531
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getFirstFullyVisibleViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 523
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 513
    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 497
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 507
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 499
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 501
    const/4 v0, 0x1

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0xbcc
        :pswitch_0
    .end packed-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 483
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 484
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 548
    packed-switch p1, :pswitch_data_0

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 551
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setWidth(F)V

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->getContentHeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    .line 554
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 555
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 557
    if-nez p1, :cond_1

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 566
    :goto_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 570
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_1

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_1

    .line 576
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setWidth(F)V

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->getContentHeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    .line 579
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 582
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 591
    :goto_2
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 595
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_2

    .line 588
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_2

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 538
    .local v0, "depth":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 539
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 541
    .end local v0    # "depth":I
    .local v1, "depth":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "depth":I
    .restart local v0    # "depth":I
    if-lez v1, :cond_0

    .line 542
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v1, v0

    .end local v0    # "depth":I
    .restart local v1    # "depth":I
    goto :goto_0

    .line 544
    .end local v1    # "depth":I
    .restart local v0    # "depth":I
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .end local v0    # "depth":I
    .restart local v1    # "depth":I
    goto :goto_0
.end method

.method protected onShow()V
    .locals 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    .line 459
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 461
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 479
    :cond_1
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 606
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 619
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 608
    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 614
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
