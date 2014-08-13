.class public Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSliderMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;
    }
.end annotation


# static fields
.field private static final BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_X:I

.field private static final BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_Y:I

.field private static final BEAUTYFACE_LEVEL_NUM_OF_STEP:I

.field private static final BEAUTYLEVEL_MENU_TYPE:I = 0x3

.field private static final BEAUTY_BUTTON_HEIGHT:I

.field private static final BEAUTY_BUTTON_WIDTH:I

.field private static final BEAUTY_MINUS_BUTTON_POS_X:I

.field private static final BEAUTY_MINUS_BUTTON_POS_Y:I

.field private static final BEAUTY_PLUS_BUTTON_POS_X:I

.field private static final BEAUTY_PLUS_BUTTON_POS_Y:I

.field private static final BEAUTY_SLIDEBAR_HEIGHT:I

.field private static final BEAUTY_SLIDEBAR_POS_X:I

.field private static final BEAUTY_SLIDEBAR_POS_Y:I

.field private static final BEAUTY_SLIDEBAR_WIDTH:I

.field private static final BEAUTY_TITLE_IMAGE_HEIGHT:I

.field private static final BEAUTY_TITLE_IMAGE_POS_X:I

.field private static final BEAUTY_TITLE_IMAGE_POS_Y:I

.field private static final BEAUTY_TITLE_IMAGE_WIDTH:I

.field private static final COMMON_INDICATOR_GROUP_HEIGHT:I

.field private static final COMMON_INDICATOR_GROUP_POS_X:[F

.field private static final COMMON_INDICATOR_GROUP_POS_Y:[F

.field private static final COMMON_INDICATOR_GROUP_WIDTH:I

.field private static final COMMON_INDICATOR_SYMBOL_HEIGHT:I

.field private static final COMMON_INDICATOR_SYMBOL_WIDTH:I

.field private static final COMMON_INDICATOR_VALUE_TEXT_HEIGHT:I

.field private static final COMMON_INDICATOR_VALUE_TEXT_WIDTH:I

.field private static final EXPOSURE_BUTTON_HEIGHT:I

.field private static final EXPOSURE_BUTTON_WIDTH:I

.field private static final EXPOSURE_MENU_TYPE:I = 0x1

.field private static final EXPOSURE_MINUS_BUTTON_POS_X:I

.field private static final EXPOSURE_MINUS_BUTTON_POS_Y:I

.field private static final EXPOSURE_PLUS_BUTTON_POS_X:I

.field private static final EXPOSURE_PLUS_BUTTON_POS_Y:I

.field private static final EXPOSURE_SLIDEBAR_HEIGHT:I

.field private static final EXPOSURE_SLIDEBAR_POS_X:I

.field private static final EXPOSURE_SLIDEBAR_POS_Y:I

.field private static final EXPOSURE_SLIDEBAR_WIDTH:I

.field private static final EXPOSURE_VALUE_NUM_OF_STEP:I

.field private static final EXPOSURE_VALUE_OFFSET:I

.field private static final GAUGE_BALL_SELECT_AREA_HEIGHT:F

.field private static final GAUGE_BALL_SELECT_AREA_WIDTH:F

.field private static final MENU_TIMER_INTERVAL:J = 0xbb8L

.field private static final MSG_TIME_OUT:I = 0x1

.field private static final SLIDEBAR_TOUCH_AREA_HEIGHT:I

.field private static final SLIDEBAR_TOUCH_AREA_WIDTH:I

.field private static final SLIDE_BEAUTYFACE_GROUP_HEIGHT:I

.field private static final SLIDE_BEAUTYFACE_GROUP_POS_X:I

.field private static final SLIDE_BEAUTYFACE_GROUP_POS_Y:I

.field private static final SLIDE_BEAUTYFACE_GROUP_WIDTH:I

.field private static final SLIDE_GROUP_HEIGHT:I

.field private static final SLIDE_GROUP_POS_X:I

.field private static final SLIDE_GROUP_POS_Y:I

.field private static final SLIDE_GROUP_WIDTH:I

.field private static final ZOOM_BUTTON_HEIGHT:I

.field private static final ZOOM_BUTTON_WIDTH:I

.field private static final ZOOM_INDICATOR_TEXT_FONT_SIZE:I

.field private static final ZOOM_MENU_TYPE:I = 0x2

.field private static final ZOOM_MINUS_BUTTON_POS_X:I

.field private static final ZOOM_MINUS_BUTTON_POS_Y:I

.field private static final ZOOM_NUM_OF_STEP:I

.field private static final ZOOM_PLUS_BUTTON_POS_X:I

.field private static final ZOOM_PLUS_BUTTON_POS_Y:I

.field private static final ZOOM_SLIDEBAR_HEIGHT:I

.field private static final ZOOM_SLIDEBAR_POS_X:I

.field private static final ZOOM_SLIDEBAR_POS_Y:I

.field private static final ZOOM_SLIDEBAR_WIDTH:I

.field private static final ZOOM_TEXT_SHADOW:Z

.field private static final ZOOM_TEXT_STROKE_COLOR:I

.field private static final ZOOM_TEXT_STROKE_WIDTH:I

.field private static final ZOOM_VALUE_TEXT_FONT_SIZE:I


# instance fields
.field private mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCommonLevelText:Lcom/sec/android/glview/TwGLText;

.field private mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

.field private mEVSliderBackground:Lcom/sec/android/glview/TwGLImage;

.field private final mHandler:Landroid/os/Handler;

.field private mId:I

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMinusButton:Lcom/sec/android/glview/TwGLButton;

.field protected mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

.field protected mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

.field mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

.field protected mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

.field private mPlusButton:Lcom/sec/android/glview/TwGLButton;

.field private mSlider:Lcom/sec/android/glview/TwGLSlider;

.field private mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

.field private mTitleButton:Lcom/sec/android/glview/TwGLButton;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 53
    new-array v2, v6, [F

    const v3, 0x7f090123

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v1

    const v3, 0x7f090124

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v0

    const v3, 0x7f090125

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f090126

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v5

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_POS_X:[F

    .line 56
    new-array v2, v6, [F

    const v3, 0x7f090127

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v1

    const v3, 0x7f090128

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v0

    const v3, 0x7f090129

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f09012a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v5

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_POS_Y:[F

    .line 60
    const v2, 0x7f09012b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_X:I

    .line 61
    const v2, 0x7f09012c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_Y:I

    .line 63
    const v2, 0x7f09012d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_WIDTH:I

    .line 64
    const v2, 0x7f09012e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_HEIGHT:I

    .line 65
    const v2, 0x7f090131

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_SYMBOL_WIDTH:I

    .line 66
    const v2, 0x7f090132

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_SYMBOL_HEIGHT:I

    .line 67
    const v2, 0x7f09012f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_WIDTH:I

    .line 68
    const v2, 0x7f090130

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_HEIGHT:I

    .line 70
    const v2, 0x7f09011b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_X:I

    .line 71
    const v2, 0x7f09011c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_Y:I

    .line 72
    const v2, 0x7f09011d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_WIDTH:I

    .line 73
    const v2, 0x7f09011e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_HEIGHT:I

    .line 74
    const v2, 0x7f09011f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_POS_X:I

    .line 75
    const v2, 0x7f090120

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_POS_Y:I

    .line 76
    const v2, 0x7f090121

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_WIDTH:I

    .line 77
    const v2, 0x7f090122

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_HEIGHT:I

    .line 79
    const v2, 0x7f090133

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_X:I

    .line 80
    const v2, 0x7f090134

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    .line 81
    const v2, 0x7f090135

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_WIDTH:I

    .line 82
    const v2, 0x7f090136

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_HEIGHT:I

    .line 83
    const v2, 0x7f090137

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_X:I

    .line 84
    const v2, 0x7f090138

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_Y:I

    .line 85
    const v2, 0x7f090139

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_WIDTH:I

    .line 86
    const v2, 0x7f09013a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_HEIGHT:I

    .line 87
    const v2, 0x7f09013b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_POS_X:I

    .line 88
    const v2, 0x7f09013c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_POS_Y:I

    .line 89
    const v2, 0x7f09013d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_WIDTH:I

    .line 90
    const v2, 0x7f09013e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_HEIGHT:I

    .line 91
    const v2, 0x7f09013f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    .line 92
    const v2, 0x7f090140

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    .line 94
    const v2, 0x7f090141

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    .line 95
    const v2, 0x7f090142

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    .line 97
    const v2, 0x7f090149

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_PLUS_BUTTON_POS_X:I

    .line 98
    const v2, 0x7f09014a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_PLUS_BUTTON_POS_Y:I

    .line 99
    const v2, 0x7f09014b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_MINUS_BUTTON_POS_X:I

    .line 100
    const v2, 0x7f09014c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_MINUS_BUTTON_POS_Y:I

    .line 101
    const v2, 0x7f09014d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_WIDTH:I

    .line 102
    const v2, 0x7f09014e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_HEIGHT:I

    .line 104
    const v2, 0x7f0a0003

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_NUM_OF_STEP:I

    .line 105
    const v2, 0x7f0a0004

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    .line 107
    const v2, 0x7f090143

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_PLUS_BUTTON_POS_X:I

    .line 108
    const v2, 0x7f090144

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_PLUS_BUTTON_POS_Y:I

    .line 109
    const v2, 0x7f090145

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MINUS_BUTTON_POS_X:I

    .line 110
    const v2, 0x7f090146

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MINUS_BUTTON_POS_Y:I

    .line 111
    const v2, 0x7f090147

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_WIDTH:I

    .line 112
    const v2, 0x7f090148

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_HEIGHT:I

    .line 114
    const v2, 0x7f09014f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_PLUS_BUTTON_POS_X:I

    .line 115
    const v2, 0x7f090150

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_PLUS_BUTTON_POS_Y:I

    .line 116
    const v2, 0x7f090151

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_MINUS_BUTTON_POS_X:I

    .line 117
    const v2, 0x7f090152

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_MINUS_BUTTON_POS_Y:I

    .line 118
    const v2, 0x7f090147

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_WIDTH:I

    .line 119
    const v2, 0x7f090148

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_HEIGHT:I

    .line 120
    const v2, 0x7f090153

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_POS_X:I

    .line 121
    const v2, 0x7f090154

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_POS_Y:I

    .line 122
    const v2, 0x7f090155

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_WIDTH:I

    .line 123
    const v2, 0x7f090156

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_HEIGHT:I

    .line 125
    const v2, 0x7f0a003f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    .line 126
    const v2, 0x7f0a0040

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_INDICATOR_TEXT_FONT_SIZE:I

    .line 127
    const v2, 0x7f0a001d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    .line 128
    const/high16 v2, 0x7f080000

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    .line 129
    const v2, 0x7f0a0024

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_SHADOW:Z

    .line 131
    const v0, 0x7f0a0005

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_NUM_OF_STEP:I

    .line 133
    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_NUM_OF_STEP:I

    return-void

    :cond_0
    move v0, v1

    .line 129
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 10
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "slideDirection"    # I

    .prologue
    .line 213
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 144
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    .line 217
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    .line 220
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 222
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202dc

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 226
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 229
    invoke-virtual {p4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mId:I

    .line 230
    invoke-virtual {p4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 446
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_0

    .line 467
    :goto_1
    return-void

    .line 232
    :sswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 234
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 240
    new-instance v0, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const v7, 0x7f0202dd

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_NUM_OF_STEP:I

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v1, 0x7f0203d7

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLSlider;->setGaugeMarker(IFF)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSlider;->setGaugeZeroStep(I)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSlider;->expandTouchAreaFromCenter(FF)V

    .line 256
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const v7, 0x7f02007b

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mEVSliderBackground:Lcom/sec/android/glview/TwGLImage;

    .line 259
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_PLUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_PLUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020079

    const v7, 0x7f02007a

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0xe10

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRepeatClickWhenLongClicked(Z)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 271
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_MINUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_MINUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020077

    const v7, 0x7f020078

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0xe11

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRepeatClickWhenLongClicked(Z)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mEVSliderBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 288
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "0"

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 303
    :sswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 305
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_PLUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_PLUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202e1

    const v7, 0x7f0202e2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x17d4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRepeatClickWhenLongClicked(Z)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 317
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MINUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MINUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202df

    const v7, 0x7f0202e0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x17d5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRepeatClickWhenLongClicked(Z)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 329
    new-instance v0, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202de

    const v7, 0x7f0202dd

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_NUM_OF_STEP:I

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v1, 0x7f0203d7

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLSlider;->setGaugeMarker(IFF)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSlider;->expandTouchAreaFromCenter(FF)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 347
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_SYMBOL_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_SYMBOL_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "x"

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_INDICATOR_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 352
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_SYMBOL_WIDTH:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "1.0"

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 367
    :sswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 368
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 370
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202dc

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 374
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02001f

    const v7, 0x7f020020

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0122

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 385
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_PLUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_PLUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02001b

    const v7, 0x7f02001c

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x19c8

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRepeatClickWhenLongClicked(Z)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 397
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_MINUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_MINUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020019

    const v7, 0x7f02001a

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x19c9

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRepeatClickWhenLongClicked(Z)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 409
    new-instance v0, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202de

    const v7, 0x7f0202dd

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_NUM_OF_STEP:I

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v1, 0x7f0203d7

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLSlider;->setGaugeMarker(IFF)V

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSlider;->expandTouchAreaFromCenter(FF)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 427
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 430
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 438
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 439
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    goto/16 :goto_1

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
        0x6d -> :sswitch_2
        0xbc5 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/glview/TwGLSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 733
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 717
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 722
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideBeautyMenu()V

    .line 726
    :cond_1
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 711
    const/4 v0, 0x1

    .line 713
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->stopSliderMenuTimer()V

    .line 575
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 6
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/high16 v5, 0x3f800000

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 591
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 704
    :goto_0
    return v1

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "value":I
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 699
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_1
    move v1, v2

    .line 702
    goto :goto_0

    .line 599
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_2

    .line 600
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 601
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 602
    add-int/lit8 v0, v0, 0x1

    .line 603
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 606
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v1, :cond_3

    .line 607
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    .line 608
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    :cond_3
    move v1, v2

    .line 610
    goto :goto_0

    .line 612
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_4

    .line 613
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 614
    if-lez v0, :cond_4

    .line 615
    add-int/lit8 v0, v0, -0x1

    .line 616
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 619
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v1, :cond_5

    .line 620
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    .line 621
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    :cond_5
    move v1, v2

    .line 623
    goto :goto_0

    .line 625
    :sswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_6

    .line 626
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 627
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 628
    add-int/lit8 v0, v0, 0x1

    .line 629
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 632
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v3, :cond_8

    .line 633
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 634
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 635
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 638
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    .line 639
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_8
    move v1, v2

    .line 641
    goto/16 :goto_0

    .line 643
    :sswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_9

    .line 644
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 645
    if-lez v0, :cond_9

    .line 646
    add-int/lit8 v0, v0, -0x1

    .line 647
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 650
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v3, :cond_b

    .line 651
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 652
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 653
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 656
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    .line 657
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_b
    move v1, v2

    .line 659
    goto/16 :goto_0

    .line 661
    :sswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_c

    .line 662
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 663
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 664
    add-int/lit8 v0, v0, 0x1

    .line 665
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 668
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    if-eqz v3, :cond_e

    .line 669
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 670
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 671
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 674
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;->onBeautyLevelMenuSelect(I)V

    .line 675
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_e
    move v1, v2

    .line 678
    goto/16 :goto_0

    .line 680
    :sswitch_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_f

    .line 681
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 682
    if-lez v0, :cond_f

    .line 683
    add-int/lit8 v0, v0, -0x1

    .line 684
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 687
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    if-eqz v3, :cond_11

    .line 688
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 689
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 690
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 693
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;->onBeautyLevelMenuSelect(I)V

    .line 694
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    .line 695
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_11
    move v1, v2

    .line 697
    goto/16 :goto_0

    .line 597
    nop

    :sswitch_data_0
    .sparse-switch
        0x51 -> :sswitch_0
        0xe10 -> :sswitch_1
        0xe11 -> :sswitch_2
        0x17d4 -> :sswitch_3
        0x17d5 -> :sswitch_4
        0x19c8 -> :sswitch_5
        0x19c9 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->stopSliderMenuTimer()V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 584
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    .line 588
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/high16 v5, 0x3f800000

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 745
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "value":I
    sparse-switch p1, :sswitch_data_0

    .line 813
    :goto_0
    return v1

    .line 751
    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_0

    .line 752
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 753
    if-lez v0, :cond_0

    .line 754
    add-int/lit8 v0, v0, -0x1

    .line 755
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 758
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v3, :cond_3

    .line 759
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 760
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 761
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 764
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    .line 765
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v1, v2

    .line 779
    goto :goto_0

    .line 766
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v3, :cond_4

    .line 767
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    .line 768
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    goto :goto_1

    .line 769
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    if-eqz v3, :cond_2

    .line 770
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 771
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 772
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 775
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;->onBeautyLevelMenuSelect(I)V

    .line 776
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    .line 777
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 783
    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_6

    .line 784
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 785
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 786
    add-int/lit8 v0, v0, 0x1

    .line 787
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 790
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v3, :cond_9

    .line 791
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 792
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 793
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 796
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_8
    :goto_2
    move v1, v2

    .line 811
    goto/16 :goto_0

    .line 798
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v3, :cond_a

    .line 799
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    .line 800
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    goto :goto_2

    .line 801
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    if-eqz v3, :cond_8

    .line 802
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 803
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 804
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 807
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;->onBeautyLevelMenuSelect(I)V

    .line 808
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    .line 809
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 747
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x9c -> :sswitch_0
        0x9d -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 737
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 739
    const/4 v0, 0x1

    .line 741
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 830
    return-void
.end method

.method protected onShow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 482
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    .line 483
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 485
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->refreshMenuPosition()V

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 489
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mId:I

    sparse-switch v1, :sswitch_data_0

    .line 542
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "value":I
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 570
    :goto_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 571
    return-void

    .line 491
    .end local v0    # "value":I
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    .line 509
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f0202e1

    const v3, 0x7f0202e2

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f0202df

    const v3, 0x7f0202e0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$5;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    .line 525
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$6;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    .line 547
    .restart local v0    # "value":I
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v0

    .line 548
    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exposure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    .line 550
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->setGaugeBarSize()V

    .line 551
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    goto :goto_1

    .line 554
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v0

    .line 555
    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    .line 557
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->setGaugeBarSize()V

    .line 558
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 561
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v0

    .line 562
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    .line 563
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->setGaugeBarSize()V

    .line 564
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    .line 565
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 489
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
        0x6d -> :sswitch_2
        0xbc5 -> :sswitch_1
    .end sparse-switch

    .line 545
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 817
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 824
    :cond_0
    :goto_0
    return v2

    .line 819
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 820
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->stopSliderMenuTimer()V

    goto :goto_0

    .line 821
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 822
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    goto :goto_0
.end method

.method public refreshMenuPosition()V
    .locals 5

    .prologue
    const v4, 0x7f090017

    const/high16 v3, 0x40000000

    .line 833
    const/4 v0, 0x0

    .line 834
    .local v0, "move":F
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mId:I

    sparse-switch v1, :sswitch_data_0

    .line 855
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_1

    .line 856
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 859
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 860
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 861
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 863
    :cond_2
    return-void

    .line 836
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    div-float/2addr v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_Y:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 837
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_Y:I

    int-to-float v1, v1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v0, v1

    goto :goto_0

    .line 842
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    div-float/2addr v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 843
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v1, v1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v0, v1

    goto :goto_0

    .line 847
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    div-float/2addr v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 848
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v1, v1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v0, v1

    goto/16 :goto_0

    .line 834
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
        0x6d -> :sswitch_2
        0xbc5 -> :sswitch_1
    .end sparse-switch
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    return-void
.end method

.method public setBeautyFaceImage(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    const v4, 0x7f0b0032

    const/4 v3, 0x0

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 882
    if-lez p1, :cond_1

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02001f

    const v2, 0x7f020020

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0122

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02001d

    const v2, 0x7f02001e

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0123

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExposureValueText()V
    .locals 5

    .prologue
    .line 866
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v0

    .line 867
    .local v0, "exposureValueInt":I
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValueResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "exposureValueString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 870
    const-string v1, "0"

    .line 877
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 878
    return-void

    .line 871
    :cond_0
    if-lez v0, :cond_1

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 874
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setOnBeautyLevelChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    .line 479
    return-void
.end method

.method public setOnExposureValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    .line 471
    return-void
.end method

.method public setOnZoomValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    .line 475
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    return-void
.end method
