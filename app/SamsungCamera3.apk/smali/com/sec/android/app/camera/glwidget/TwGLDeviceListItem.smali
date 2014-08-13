.class public Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLDeviceListItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;
    }
.end annotation


# static fields
.field private static final CHECKBOX_POS_Y:I

.field private static final CHECKBOX_X_OFFSET_FROM_RIGHT:I

.field private static final ICON_IMAGE_HEIGHT:I

.field private static final ICON_IMAGE_WIDTH:I

.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I

.field private static final LIST_TYPE_BUTTON_HEIGHT:I

.field private static final LIST_TYPE_BUTTON_IMAGE_BOTTOM_PADDING:I

.field private static final LIST_TYPE_BUTTON_IMAGE_LEFT_PADDING:I

.field private static final LIST_TYPE_BUTTON_IMAGE_POS_X:I

.field private static final LIST_TYPE_BUTTON_IMAGE_POS_Y:I

.field private static final LIST_TYPE_BUTTON_IMAGE_RIGHT_PADDING:I

.field private static final LIST_TYPE_BUTTON_IMAGE_TOP_PADDING:I

.field private static final LIST_TYPE_BUTTON_WIDTH:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE:I

.field private static final LIST_TYPE_TEXT_HEIGHT:I

.field private static final LIST_TYPE_TEXT_POS_X:I

.field private static final LIST_TYPE_TEXT_POS_Y:I

.field private static final LIST_TYPE_TEXT_WIDTH:I

.field private static final SEPARATOR_HEIGHT:I

.field private static final SEPARATOR_POS_X:I

.field public static final TITLE_HEIGHT:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field public mButton:Lcom/sec/android/glview/TwGLButton;

.field private mData:Lcom/samsung/shareshot/User;

.field public mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

.field private mDim:Z

.field private mIcon:Lcom/sec/android/glview/TwGLImage;

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mShareShot:Lcom/sec/android/app/camera/ShareShot;

.field private mUserName:Lcom/sec/android/glview/TwGLText;

.field public m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0900d9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    .line 45
    const v0, 0x7f0900da

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    .line 46
    const v0, 0x7f0900db

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_WIDTH:I

    .line 47
    const v0, 0x7f0900dc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_HEIGHT:I

    .line 48
    const v0, 0x7f0900dd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_LEFT_PADDING:I

    .line 49
    const v0, 0x7f0900de

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_TOP_PADDING:I

    .line 50
    const v0, 0x7f0900df

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_RIGHT_PADDING:I

    .line 51
    const v0, 0x7f0900e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_BOTTOM_PADDING:I

    .line 52
    const v0, 0x7f0900e1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_POS_X:I

    .line 53
    const v0, 0x7f0900e2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_POS_Y:I

    .line 54
    const v0, 0x7f0900e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_WIDTH:I

    .line 55
    const v0, 0x7f0900e4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_HEIGHT:I

    .line 56
    const v0, 0x7f0a0033

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    .line 57
    const v0, 0x7f0901a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_WIDTH:I

    .line 58
    const v0, 0x7f0901aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_HEIGHT:I

    .line 60
    const v0, 0x7f0901ab

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    .line 61
    const v0, 0x7f0901ac

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->CHECKBOX_POS_Y:I

    .line 62
    const v0, 0x7f0901ad

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_HEIGHT:I

    .line 63
    const v0, 0x7f0901ae

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_POS_X:I

    .line 64
    const v0, 0x7f0900c3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->TITLE_HEIGHT:I

    .line 66
    const v0, 0x7f08000c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;IFF)V
    .locals 6
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "data"    # Lcom/samsung/shareshot/User;
    .param p3, "position"    # I
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDim:Z

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;

    .line 83
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 84
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->initContents()V

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->setContentType()V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    const/4 v7, 0x0

    const v4, 0x7f02030f

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 78
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDim:Z

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;

    .line 92
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 93
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    .line 94
    return-void
.end method

.method private clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 106
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 111
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    .line 113
    :cond_1
    return-void
.end method

.method private initContents()V
    .locals 18

    .prologue
    .line 120
    const/16 v17, 0x0

    .line 121
    .local v17, "width":F
    const/16 v16, 0x0

    .line 122
    .local v16, "height":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_7

    .line 123
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    const v7, 0x7f02030f

    const v8, 0x7f02030f

    const v9, 0x7f02030f

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 125
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDim:Z

    if-nez v1, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 128
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_7

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    .line 130
    .end local v17    # "width":F
    .local v5, "width":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    .line 134
    .end local v16    # "height":F
    .local v6, "height":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v2, Landroid/graphics/Rect;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_LEFT_PADDING:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_TOP_PADDING:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_RIGHT_PADDING:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_BOTTOM_PADDING:I

    invoke-direct {v2, v3, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setPaddings(Landroid/graphics/Rect;)V

    .line 138
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_4

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "username":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "[Unknown]"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v7, :cond_3

    .line 141
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 143
    :cond_3
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 147
    .end local v7    # "username":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-nez v1, :cond_5

    .line 148
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    int-to-float v3, v3

    sub-float v3, v5, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->CHECKBOX_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v8}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v8

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/Camera;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 151
    :cond_5
    new-instance v8, Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_HEIGHT:I

    int-to-float v13, v1

    const v14, 0x7f0203d0

    move v12, v5

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v14

    .line 153
    .local v14, "iconPath":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 154
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 156
    new-instance v8, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v10, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v11, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_WIDTH:I

    int-to-float v12, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_HEIGHT:I

    int-to-float v13, v1

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    .line 165
    .end local v15    # "f":Ljava/io/File;
    :goto_1
    return-void

    .line 161
    :cond_6
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v4, v4

    const v8, 0x7f02032b

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    goto :goto_1

    .end local v5    # "width":F
    .end local v6    # "height":F
    .end local v14    # "iconPath":Ljava/lang/String;
    .restart local v16    # "height":F
    .restart local v17    # "width":F
    :cond_7
    move/from16 v6, v16

    .end local v16    # "height":F
    .restart local v6    # "height":F
    move/from16 v5, v17

    .end local v17    # "width":F
    .restart local v5    # "width":F
    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->clearContent()V

    .line 99
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 100
    return-void
.end method

.method public getData()Lcom/samsung/shareshot/User;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    return-object v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 6
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 227
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v4

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v2, :cond_0

    .line 235
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    .line 236
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    .line 238
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v1, v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    .line 239
    .local v1, "selected":Z
    if-eqz v1, :cond_4

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->onSelected()V

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v2, v3}, Lcom/samsung/shareshot/User;->setActivate(Z)Z

    .line 244
    const/high16 v2, 0x3f800000

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 245
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    :cond_2
    :goto_3
    move v4, v3

    .line 264
    goto :goto_0

    .end local v1    # "selected":Z
    :cond_3
    move v2, v4

    .line 235
    goto :goto_1

    .line 246
    .restart local v1    # "selected":Z
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 253
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->onUnSelected()V

    .line 254
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v2, v4}, Lcom/samsung/shareshot/User;->setActivate(Z)Z

    .line 256
    const/high16 v2, 0x3f000000

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 257
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v5}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v2, v5, v4}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    goto :goto_3

    .line 258
    :catch_1
    move-exception v0

    .line 259
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRotatable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 222
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw()V

    .line 224
    :cond_1
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCheckBox(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iput-boolean p1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    .line 325
    :cond_0
    return-void
.end method

.method public setContentType()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetLayout()V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_6

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_7

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 202
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 208
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_8
    const/high16 v0, 0x3f000000

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .prologue
    const/4 v1, 0x0

    .line 283
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 284
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 303
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 304
    return-void

    .line 294
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mUserName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_6

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 298
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_7

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public setUserSelectionChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;

    .line 274
    return-void
.end method
