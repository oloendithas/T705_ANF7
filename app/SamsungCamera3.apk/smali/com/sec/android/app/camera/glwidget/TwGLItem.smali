.class public Lcom/sec/android/app/camera/glwidget/TwGLItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final CHECKBOX_POS_Y:I

.field public static final EASYMODE_TYPE:I = 0x6

.field private static final EASYMODE_TYPE_BUTTON_HEIGHT:I

.field private static final EASYMODE_TYPE_BUTTON_WIDTH:I

.field private static final EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

.field public static final EDITABLESHORTCUT_TYPE:I = 0x1

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

.field private static final EDITABLESHORTCUT_TYPE_FONT_SIZE:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

.field public static final EFFECT_TYPE:I = 0x5

.field private static final EFFECT_TYPE_BUTTON_MARGIN:I

.field private static final EFFECT_TYPE_BUTTON_WIDTH:I

.field private static final EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

.field private static final EFFECT_TYPE_MANAGER_TEXT_HEIGHT:I

.field private static final EFFECT_TYPE_MANAGER_TEXT_Y:I

.field private static final EFFECT_TYPE_TEXT_HEIGHT:I

.field private static final EFFECT_TYPE_TEXT_SHADOW_Y_POS:I

.field private static EFFECT_TYPE_TEXT_SIZE:I = 0x0

.field private static final EFFECT_TYPE_TEXT_SIZE_SWA:I

.field private static final EFFECT_TYPE_TEXT_WIDTH:I

.field private static final EFFECT_TYPE_TEXT_X:I

.field private static final EFFECT_TYPE_TEXT_Y:I

.field private static final FIRST_ITEM:I = 0x0

.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I

.field public static final LIST_TYPE:I = 0x0

.field private static final LIST_TYPE_ANCHOR_POS_Y:I

.field private static final LIST_TYPE_BUTTON_HEIGHT:I

.field private static final LIST_TYPE_BUTTON_WIDTH:I

.field private static final LIST_TYPE_IMAGE_LEFT_PADDING:I

.field private static final LIST_TYPE_IMAGE_TOP_PADDING:I

.field private static final LIST_TYPE_LEFT_PADDING:I

.field private static final LIST_TYPE_TEXT_FONT_COLOR:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE:I

.field private static final LIST_TYPE_TEXT_HEIGHT:I

.field private static final LIST_TYPE_TEXT_POS_X:I

.field private static final LIST_TYPE_TEXT_POS_Y:I

.field private static final LIST_TYPE_TEXT_WIDTH:I

.field private static final ROTATE_ANIMATION_DURATION:I = 0x12c

.field private static final SEPARATOR_HEIGHT:I

.field public static final SETTINGS_TYPE:I = 0x3

.field private static final SETTING_MODE_VALUE_COLOR:I

.field private static final SETTING_TYPE_BUTTON_HEIGHT:I

.field private static final SETTING_TYPE_BUTTON_IMAGE_POS_Y:I

.field private static final SETTING_TYPE_BUTTON_WIDTH:I

.field private static final SETTING_TYPE_FONT_SIZE:I

.field private static final SETTING_TYPE_FONT_SIZE_SWA:I

.field private static final SETTING_TYPE_MODE_FONT_SIZE:I

.field private static final SETTING_TYPE_MODE_FONT_SIZE_SWA:I

.field private static final SETTING_TYPE_MODE_TEXT_HEIGHT:I

.field private static final SETTING_TYPE_MODE_TEXT_LEFT_PADDING:I

.field private static final SETTING_TYPE_MODE_TEXT_WIDTH:I

.field private static final SETTING_TYPE_TEXT_HEIGHT:I

.field private static final SETTING_TYPE_TEXT_HEIGHT_SWA:I

.field private static final SETTING_TYPE_TEXT_LEFT_PADDING:I

.field private static final SETTING_TYPE_TEXT_TOP_PADDING:I

.field private static final SETTING_TYPE_TEXT_WIDTH:I

.field private static final SETTING_TYPE_TEXT_WIDTH_SWA:I

.field private static final SETTING_TYPE_TOP_PADDING:I

.field public static final SIDEBAR_ITEM_TYPE:I = 0x2

.field private static final SIDEBAR_TYPE_BUTTON_HEIGHT:I

.field private static final SIDEBAR_TYPE_BUTTON_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "TwGLItem"

.field public static final THUMBNAIL_TYPE:I = 0x4

.field private static final THUMBNAIL_TYPE_BUTTON_HEIGHT:I

.field private static final THUMBNAIL_TYPE_BUTTON_MARGIN:I

.field private static final THUMBNAIL_TYPE_BUTTON_WIDTH:I

.field private static final THUMBNAIL_TYPE_TEXT_HEIGHT:I

.field private static final THUMBNAIL_TYPE_TEXT_SIZE:I

.field private static final THUMBNAIL_TYPE_TEXT_WIDTH:I

.field private static final THUMBNAIL_TYPE_TEXT_X:I

.field private static final THUMBNAIL_TYPE_TEXT_Y:I

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mCurrentType:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

.field private mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

.field private mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

.field private mDimmed:Z

.field private mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

.field private mExtra:I

.field private mHeight:F

.field private mModeText:Lcom/sec/android/glview/TwGLText;

.field private mSelected:Z

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mSettingTopPadding:I

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

.field private mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

.field private mToggle:Z

.field private mZOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    const v1, 0x7f0900db

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    .line 56
    const v1, 0x7f0900dc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    .line 57
    const v1, 0x7f0900e1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    .line 58
    const v1, 0x7f0900e2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    .line 59
    const v1, 0x7f0900e3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    .line 60
    const v1, 0x7f0900e4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    .line 61
    const v1, 0x7f0a0033

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    .line 62
    const v1, 0x7f08000b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    .line 63
    const v1, 0x7f0900e5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_ANCHOR_POS_Y:I

    .line 64
    const v1, 0x7f0900dd

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_LEFT_PADDING:I

    .line 65
    const v1, 0x7f0900de

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_TOP_PADDING:I

    .line 66
    const v1, 0x7f0900e6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_LEFT_PADDING:I

    .line 68
    const v1, 0x7f0900e7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    .line 69
    const v1, 0x7f090013

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_WIDTH:I

    .line 70
    const v1, 0x7f090014

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_HEIGHT:I

    .line 71
    const v1, 0x7f090174

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_WIDTH:I

    .line 72
    const v1, 0x7f090175

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_HEIGHT:I

    .line 73
    const v1, 0x7f0900f7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    .line 74
    const v1, 0x7f0900f8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    .line 75
    const v1, 0x7f0900f9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    .line 76
    const v1, 0x7f0900fa

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    .line 77
    const v1, 0x7f0900fb

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    .line 78
    const v1, 0x7f0900fc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    .line 79
    const v1, 0x7f0900fd

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    .line 80
    const v1, 0x7f0900fe

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    .line 81
    const v1, 0x7f0a0034

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    .line 82
    const v1, 0x7f0a0020

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    .line 83
    const v0, 0x7f0900ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    .line 85
    const v0, 0x7f09015a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    .line 86
    const v0, 0x7f09015b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_HEIGHT:I

    .line 87
    const v0, 0x7f09015c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    .line 88
    const v0, 0x7f090160

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_X:I

    .line 89
    const v0, 0x7f090161

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    .line 90
    const v0, 0x7f09015e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_WIDTH:I

    .line 91
    const v0, 0x7f09015f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    .line 92
    const v0, 0x7f09010b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_SIZE:I

    .line 94
    const v0, 0x7f0902fd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    .line 95
    const v0, 0x7f090100

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    .line 96
    const v0, 0x7f090101

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    .line 97
    const v0, 0x7f090102

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    .line 98
    const v0, 0x7f090103

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_Y:I

    .line 99
    const v0, 0x7f090104

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    .line 100
    const v0, 0x7f090105

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    .line 101
    const v0, 0x7f090107

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    .line 102
    const v0, 0x7f090108

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE_SWA:I

    .line 103
    const v0, 0x7f0903f6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SHADOW_Y_POS:I

    .line 104
    const v0, 0x7f090109

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_MANAGER_TEXT_Y:I

    .line 105
    const v0, 0x7f09010a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_MANAGER_TEXT_HEIGHT:I

    .line 107
    const v0, 0x7f08000c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    .line 109
    const v0, 0x7f080018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_MODE_VALUE_COLOR:I

    .line 110
    const v0, 0x7f0900e8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE:I

    .line 111
    const v0, 0x7f0900e9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE_SWA:I

    .line 112
    const v0, 0x7f0900ea

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE:I

    .line 113
    const v0, 0x7f0900eb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE_SWA:I

    .line 114
    const v0, 0x7f0900ec

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_LEFT_PADDING:I

    .line 115
    const v0, 0x7f0900ed

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_TOP_PADDING:I

    .line 116
    const v0, 0x7f0900ee

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    .line 117
    const v0, 0x7f0900ef

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT:I

    .line 118
    const v0, 0x7f0900f0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH_SWA:I

    .line 119
    const v0, 0x7f0900f1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT_SWA:I

    .line 120
    const v0, 0x7f0900f4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_HEIGHT:I

    .line 121
    const v0, 0x7f0900f2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_LEFT_PADDING:I

    .line 122
    const v0, 0x7f0900f3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_WIDTH:I

    .line 123
    const v0, 0x7f090186

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    .line 124
    const v0, 0x7f090187

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    .line 125
    const v0, 0x7f0900f5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_IMAGE_POS_Y:I

    .line 126
    const v0, 0x7f0900f6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TOP_PADDING:I

    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p8, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 206
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 132
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    .line 148
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 162
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    .line 163
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 164
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    .line 207
    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 208
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 209
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    .line 226
    :goto_0
    invoke-direct {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    .line 227
    invoke-virtual {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 230
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;II)V
    .locals 6
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p8, "type"    # I
    .param p9, "extra"    # I

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    .line 148
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    .line 234
    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 235
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 236
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 237
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mHeight:F

    .line 238
    iput p9, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mExtra:I

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    .line 255
    :goto_0
    invoke-direct {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    .line 256
    invoke-virtual {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 259
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p5, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p6, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 179
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 132
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    .line 148
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 162
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    .line 163
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 164
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    .line 180
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 181
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 182
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    .line 199
    :goto_0
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    .line 200
    invoke-virtual {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 203
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 3
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p3, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p4, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 132
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    .line 148
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 162
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    .line 163
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 164
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    .line 168
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 169
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 170
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 172
    invoke-direct {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    .line 173
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;

    .prologue
    const v4, 0x7f02030f

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 132
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    .line 148
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 162
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    .line 163
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 164
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    .line 264
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 266
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 268
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->diableDrag()V

    .line 269
    return-void
.end method

.method private clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->clear()V

    .line 409
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 414
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 419
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 424
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_4

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->clear()V

    .line 429
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_5

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->clear()V

    .line 434
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->clear()V

    .line 439
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .line 441
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_7

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->clear()V

    .line 444
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    .line 446
    :cond_7
    return-void
.end method

.method private diableDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDraggable(Z)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDraggable(Z)V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDraggable(Z)V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDraggable(Z)V

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDraggable(Z)V

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_5

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDraggable(Z)V

    .line 291
    :cond_5
    return-void
.end method

.method private initContents(I)V
    .locals 26
    .param p1, "type"    # I

    .prologue
    .line 468
    const/16 v25, 0x0

    .line 469
    .local v25, "width":F
    const/16 v16, 0x0

    .line 471
    .local v16, "height":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v2, :cond_6

    if-nez p1, :cond_6

    .line 473
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSizeSpecified:Z

    if-eqz v2, :cond_4

    .line 474
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getWidth()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getHeight()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v2 .. v12}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 479
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v2, v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v2, :cond_5

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    .line 489
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/glview/TwGLButton;->mContentDescription:Ljava/lang/String;

    .line 495
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-nez v2, :cond_1

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 498
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_26

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v6

    .line 500
    .end local v25    # "width":F
    .local v6, "width":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v7

    .line 614
    .end local v16    # "height":F
    .local v7, "height":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v2, :cond_2

    .line 615
    const/4 v8, 0x0

    .line 616
    .local v8, "title":Ljava/lang/String;
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getAbbTitleId()I

    move-result v24

    .line 618
    .local v24, "titleId":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v8

    .line 631
    :goto_4
    new-instance v2, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 633
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 640
    .end local v8    # "title":Ljava/lang/String;
    .end local v24    # "titleId":I
    :cond_2
    :goto_5
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-nez v2, :cond_1e

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v19

    .line 642
    .local v19, "menuid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v20

    .line 643
    .local v20, "modeid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v23

    .line 644
    .local v23, "selectedCommandId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v22

    .line 645
    .local v22, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v22, :cond_1b

    .line 646
    const-string v2, "TwGLItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing resource for CommandID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .end local v19    # "menuid":I
    .end local v20    # "modeid":I
    .end local v22    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v23    # "selectedCommandId":I
    :cond_3
    :goto_6
    return-void

    .line 477
    .end local v6    # "width":F
    .end local v7    # "height":F
    .restart local v16    # "height":F
    .restart local v25    # "width":F
    :cond_4
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_0

    .line 486
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    goto/16 :goto_1

    .line 502
    :cond_6
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 503
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v9

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v2, :cond_7

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 508
    :cond_7
    const/4 v8, 0x0

    .line 510
    .restart local v8    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v8

    .line 523
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setTitle(Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setExtraDescription(Z)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setObjectTag(I)V

    .line 526
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v7, v9

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    .end local v8    # "title":Ljava/lang/String;
    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_WIDTH:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_SIZE:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-direct/range {v2 .. v13}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFILcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_8

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const v3, 0x7f080007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setTextColor(I)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setTextShadow(Z)V

    .line 533
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setRotatable(Z)V

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setCenterPivot(Z)V

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setAlign(II)V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setBypassTouch(Z)V

    move/from16 v7, v16

    .end local v16    # "height":F
    .restart local v7    # "height":F
    move/from16 v6, v25

    .line 537
    .end local v25    # "width":F
    .restart local v6    # "width":F
    goto/16 :goto_2

    .line 514
    .end local v6    # "width":F
    .end local v7    # "height":F
    .restart local v8    # "title":Ljava/lang/String;
    .restart local v16    # "height":F
    .restart local v25    # "width":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v2, v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v2, :cond_a

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    .line 519
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    .line 537
    .end local v8    # "title":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_13

    .line 538
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mExtra:I

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v2, :cond_c

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 543
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v8

    .line 546
    .restart local v8    # "title":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v21

    .line 549
    .local v21, "objectTagName":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setTitle(Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setExtraDescription(Z)V

    .line 551
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    if-eq v2, v3, :cond_10

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    .line 556
    :goto_a
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 557
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE_SWA:I

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    .line 559
    :cond_d
    const/16 v18, 0x0

    .local v18, "mEffectManagerY":I
    const/16 v17, 0x0

    .line 561
    .local v17, "mEffectManagerHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x232e

    if-ne v2, v3, :cond_11

    .line 562
    sget v18, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_MANAGER_TEXT_Y:I

    .line 563
    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_MANAGER_TEXT_HEIGHT:I

    .line 569
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mExtra:I

    if-nez v2, :cond_12

    .line 570
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    int-to-float v5, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v7, v9

    const/4 v8, 0x0

    move/from16 v0, v18

    int-to-float v9, v0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    .end local v8    # "title":Ljava/lang/String;
    int-to-float v10, v10

    move/from16 v0, v17

    int-to-float v11, v0

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-direct/range {v2 .. v13}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFILcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    .line 583
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    const v4, 0x40490fdb

    const/4 v5, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SHADOW_Y_POS:I

    int-to-float v6, v9

    const v7, 0x7f080007

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setShadowLayer(ZFFFI)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setRotatable(Z)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setCenterPivot(Z)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setAlign(II)V

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setBypassTouch(Z)V

    move/from16 v7, v16

    .end local v16    # "height":F
    .restart local v7    # "height":F
    move/from16 v6, v25

    .line 588
    .end local v25    # "width":F
    .restart local v6    # "width":F
    goto/16 :goto_2

    .line 543
    .end local v6    # "width":F
    .end local v7    # "height":F
    .end local v17    # "mEffectManagerHeight":I
    .end local v18    # "mEffectManagerY":I
    .end local v21    # "objectTagName":Ljava/lang/String;
    .restart local v16    # "height":F
    .restart local v25    # "width":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    .line 546
    .restart local v8    # "title":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_9

    .line 554
    .restart local v21    # "objectTagName":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setObjectTag(I)V

    goto/16 :goto_a

    .line 565
    .restart local v17    # "mEffectManagerHeight":I
    .restart local v18    # "mEffectManagerY":I
    :cond_11
    sget v18, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_Y:I

    .line 566
    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    goto/16 :goto_b

    .line 577
    :cond_12
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    int-to-float v5, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v7, v9

    const/4 v8, 0x0

    move/from16 v0, v18

    int-to-float v9, v0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    .end local v8    # "title":Ljava/lang/String;
    int-to-float v10, v10

    move/from16 v0, v17

    int-to-float v11, v0

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-direct/range {v2 .. v13}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFILcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    goto/16 :goto_c

    .line 589
    .end local v17    # "mEffectManagerHeight":I
    .end local v18    # "mEffectManagerY":I
    .end local v21    # "objectTagName":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSizeSpecified:Z

    if-eqz v2, :cond_15

    .line 590
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getWidth()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getHeight()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    move/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/sec/android/app/camera/Camera;FFFFII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .line 595
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v2, v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v2, :cond_16

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTitle(Ljava/lang/String;)V

    .line 603
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setObjectTag(I)V

    .line 605
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-nez v2, :cond_14

    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_14

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 608
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_26

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getWidth()F

    move-result v6

    .line 610
    .end local v25    # "width":F
    .restart local v6    # "width":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getHeight()F

    move-result v7

    .end local v16    # "height":F
    .restart local v7    # "height":F
    goto/16 :goto_2

    .line 592
    .end local v6    # "width":F
    .end local v7    # "height":F
    .restart local v16    # "height":F
    .restart local v25    # "width":F
    :cond_15
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v9

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    goto/16 :goto_d

    .line 600
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTitle(Ljava/lang/String;)V

    goto :goto_e

    .line 616
    .end local v16    # "height":F
    .end local v25    # "width":F
    .restart local v6    # "width":F
    .restart local v7    # "height":F
    .restart local v8    # "title":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v24

    goto/16 :goto_3

    .line 622
    .restart local v24    # "titleId":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v2, v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v2, :cond_19

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 627
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 636
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_5

    .line 650
    .end local v8    # "title":Ljava/lang/String;
    .end local v24    # "titleId":I
    .restart local v19    # "menuid":I
    .restart local v20    # "modeid":I
    .restart local v22    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .restart local v23    # "selectedCommandId":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 652
    .restart local v8    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v0, v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0xbb9

    move/from16 v0, v19

    if-ne v0, v2, :cond_22

    .line 653
    :cond_1c
    const-string v2, " "

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v8, v2, v3

    .line 661
    :cond_1d
    :goto_f
    new-instance v2, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setBypassTouch(Z)V

    .line 664
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 671
    .end local v8    # "title":Ljava/lang/String;
    .end local v19    # "menuid":I
    .end local v20    # "modeid":I
    .end local v22    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v23    # "selectedCommandId":I
    :cond_1e
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-nez v2, :cond_1f

    if-nez p1, :cond_1f

    .line 672
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_ANCHOR_POS_Y:I

    int-to-float v4, v4

    sub-float v4, v6, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v9

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setBypassTouch(Z)V

    .line 676
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v2, :cond_20

    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_20

    .line 677
    new-instance v9, Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v14, v2

    const v15, 0x7f0203d0

    move v13, v6

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 680
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_21

    .line 681
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->diableDrag()V

    .line 683
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_3

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    invoke-direct {v3, v4, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setPaddings(Landroid/graphics/Rect;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setObjectTag(I)V

    goto/16 :goto_6

    .line 654
    .restart local v8    # "title":Ljava/lang/String;
    .restart local v19    # "menuid":I
    .restart local v20    # "modeid":I
    .restart local v22    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .restart local v23    # "selectedCommandId":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0x6f

    move/from16 v0, v19

    if-eq v0, v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0x1e

    move/from16 v0, v19

    if-eq v0, v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0x2d

    move/from16 v0, v19

    if-ne v0, v2, :cond_24

    .line 656
    :cond_23
    const-string v8, ""

    .line 657
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TOP_PADDING:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    goto/16 :goto_f

    .line 658
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0x8

    move/from16 v0, v19

    if-ne v0, v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_f

    .line 667
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_10

    .end local v6    # "width":F
    .end local v7    # "height":F
    .end local v8    # "title":Ljava/lang/String;
    .end local v19    # "menuid":I
    .end local v20    # "modeid":I
    .end local v22    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v23    # "selectedCommandId":I
    .restart local v16    # "height":F
    .restart local v25    # "width":F
    :cond_26
    move/from16 v7, v16

    .end local v16    # "height":F
    .restart local v7    # "height":F
    move/from16 v6, v25

    .end local v25    # "width":F
    .restart local v6    # "width":F
    goto/16 :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/glview/TwGLView;)V

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clearContent()V

    .line 399
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 400
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 401
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 402
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 403
    return-void
.end method

.method public getButtonType()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getCommand()Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    return-object v0
.end method

.method public getCommandId()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    .line 460
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 1101
    const/4 v0, 0x0

    return v0
.end method

.method public getSelected()Z
    .locals 2

    .prologue
    .line 1137
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getSelected()Z

    move-result v0

    .line 1146
    :goto_0
    return v0

    .line 1140
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->getSelected()Z

    move-result v0

    goto :goto_0

    .line 1143
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v0, :cond_2

    .line 1144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getChecked()Z

    move-result v0

    goto :goto_0

    .line 1146
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    goto :goto_0
.end method

.method public isDim()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    return v0
.end method

.method public onButtonHighlightChanged(Z)V
    .locals 2
    .param p1, "isHighlighted"    # Z

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_0

    .line 1124
    if-eqz p1, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setColor(I)V

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setColor(I)V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/high16 v7, 0x40000000

    const/4 v3, 0x0

    .line 1020
    const/4 v2, 0x1

    .line 1021
    .local v2, "result":Z
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v4, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return v3

    .line 1023
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1025
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 1028
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 1032
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    .line 1034
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x42

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1036
    .local v0, "menu":Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1040
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isCameraZoomrMenuOpened()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1041
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 1042
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuOpened()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1043
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideEffectThumbnailList()V

    .line 1044
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1048
    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    :cond_5
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v4, :cond_6

    .line 1050
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    .line 1051
    .local v1, "menuid":I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1053
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1057
    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    .end local v1    # "menuid":I
    :cond_6
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 1059
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x1b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 1061
    .restart local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1062
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setSelectedMenuId(I)V

    .line 1066
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_8

    .line 1067
    const-string v3, "TwGLItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Execute Menu!!!!, CurrentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CommandId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    .line 1069
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/MenuCommand;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 1070
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/command/MenuCommand;->setLaunchPosition(FF)V

    .line 1071
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v2

    :cond_8
    move v3, v2

    .line 1073
    goto/16 :goto_0
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getMatrix()[F

    move-result-object v2

    .line 850
    .local v2, "matrix":[F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 851
    .local v0, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getRotatable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 852
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 853
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 854
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v2, v0}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 857
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw()V

    .line 859
    :cond_1
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "focusStatus"    # I

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 1014
    const/4 v0, 0x1

    .line 1016
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    .line 976
    const/4 v0, 0x1

    .line 988
    :goto_0
    return v0

    .line 979
    :cond_0
    const/4 v0, 0x0

    .line 980
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 982
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 985
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 982
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    .line 995
    const/4 v0, 0x1

    .line 1007
    :goto_0
    return v0

    .line 998
    :cond_0
    const/4 v0, 0x0

    .line 999
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1001
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1004
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1001
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v2, :cond_1

    .line 908
    :cond_0
    const/4 v2, 0x1

    .line 925
    :goto_0
    return v2

    .line 911
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-eqz v2, :cond_2

    .line 912
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 915
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 917
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 919
    .local v0, "id":I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 920
    .local v1, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_3

    .line 921
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    .line 922
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_4

    .line 923
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 925
    .end local v0    # "id":I
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public resetSettingsText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setSelected(Z)V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    .line 1109
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setAlpha(F)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setAlpha(F)V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setAlpha(F)V

    .line 391
    :cond_3
    return-void
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0
    .param p1, "anchor"    # Lcom/sec/android/glview/TwGLImage;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 295
    return-void
.end method

.method public setContentType(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 692
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, p1, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 702
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    .line 703
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    .line 704
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    .line 706
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v4, :cond_3

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_3

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 712
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_5

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_4

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setAlpha(F)V

    .line 717
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    .line 722
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v0, :cond_8

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_TOP_PADDING:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 729
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 738
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayout(FF)V

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 839
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 840
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->resetSize()V

    goto/16 :goto_0

    .line 734
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_1

    .line 748
    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v4, :cond_9

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_6

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextPosition(FF)V

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 764
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 766
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setSize(FF)V

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setMargin(IIII)V

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 770
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 771
    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setSize(FF)V

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 775
    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_6

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_IMAGE_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextPosition(FF)V

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_c

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 783
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH_SWA:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT_SWA:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE_SWA:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 790
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_TOP_PADDING:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 794
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_d

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 796
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE_SWA:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 800
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_MODE_VALUE_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_TOP_PADDING:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setModeText(Lcom/sec/android/glview/TwGLText;)V

    .line 807
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 787
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    goto/16 :goto_3

    .line 799
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    goto :goto_4

    .line 814
    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v6, :cond_12

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_11

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const v1, 0x7f090015

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f090016

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 822
    :cond_11
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    .line 823
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    .line 824
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimationDuration(I)V

    .line 825
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    goto/16 :goto_2

    .line 826
    :cond_12
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_13

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const v1, 0x7f090015

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f090016

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 834
    :cond_13
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    .line 835
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    .line 836
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimationDuration(I)V

    .line 837
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    goto/16 :goto_2
.end method

.method public setDim(Z)V
    .locals 4
    .param p1, "dimmed"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 303
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    .line 305
    if-eqz p1, :cond_6

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_1

    .line 307
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDim(Z)V

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDim(Z)V

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 346
    :cond_5
    :goto_0
    return-void

    .line 326
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_8

    .line 327
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v1, :cond_7

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 330
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    .line 332
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_9

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDim(Z)V

    .line 335
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_a

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    .line 338
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_b

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDim(Z)V

    .line 341
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 354
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    packed-switch v0, :pswitch_data_0

    .line 371
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setMute(Z)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    goto :goto_0

    .line 361
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setMute(Z)V

    goto :goto_0

    .line 366
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setMute(Z)V

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v0, 0x1

    .line 1078
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v1, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getButton()Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setNextFocusUpId(I)V

    .line 1090
    :goto_0
    return v0

    .line 1082
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v1, :cond_1

    .line 1083
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->getButton()Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setNextFocusUpId(I)V

    goto :goto_0

    .line 1086
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_2

    .line 1087
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    goto :goto_0

    .line 1090
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V
    .locals 2
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .prologue
    const/4 v1, 0x0

    .line 930
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-nez v0, :cond_9

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 937
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 940
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 942
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_5

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 944
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 946
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_7

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 948
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 970
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 971
    return-void

    .line 951
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_a

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 953
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_b

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 955
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_c

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 957
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_d

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 959
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_e

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 961
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_f

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 963
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_10

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 965
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_11

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 967
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .prologue
    const/4 v1, 0x0

    .line 863
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_9

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 871
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 873
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 875
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_5

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 877
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 879
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_7

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 881
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 903
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 904
    return-void

    .line 884
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_a

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 886
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_b

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 888
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_c

    .line 889
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 890
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_d

    .line 891
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 892
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_e

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 894
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_f

    .line 895
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 896
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_10

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 898
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_11

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 900
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 1133
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    .line 1134
    return-void
.end method

.method public setToggleButton()V
    .locals 1

    .prologue
    .line 1112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    .line 1113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setToggleButton()V

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->setToggleButton()V

    .line 1119
    :cond_1
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 298
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    .line 299
    return-void
.end method
