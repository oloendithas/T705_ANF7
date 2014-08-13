.class public Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLHelpItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final BOTTOM_PADDING:I

.field private static final DESCRIPTION_COLOR:I

.field private static final DESCRIPTION_ICON_RIGHT_PADDING:I

.field private static final DESCRIPTION_ICON_WIDTH:I

.field private static final DESCRIPTION_TEXT_STROKE_COLOR:I

.field private static final FONT_SIZE:F

.field public static final ITEM_BOTTOM_PADDING:I = 0x2

.field public static final ITEM_NO_PADDING:I = 0x0

.field public static final ITEM_TOP_AND_BOTTOM_PADDING:I = 0x3

.field private static final ITEM_TOP_BOTTOM_PADDING:I

.field public static final ITEM_TOP_PADDING:I = 0x1

.field private static final LEFT_PADDING:I

.field public static final ONLY_DESCRIPTION_TYPE:I = 0x0

.field private static final RIGHT_PADDING:I

.field private static final SUBTITLE_TEXT_STROKE_COLOR:I

.field private static final TEXT_HEIGHT:I

.field private static final TEXT_STROKE_WIDTH:I

.field private static final TITLE_COLOR:I

.field private static final TOP_PADDING:I

.field public static final WITH_SUB_TITLE_AND_DESCRIPTION_ICON_TYPE:I = 0x2

.field public static final WITH_SUB_TITLE_TYPE:I = 0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mDescription:Lcom/sec/android/glview/TwGLText;

.field private mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

.field private mDescriptionString:Ljava/lang/String;

.field private mDescriptionType:I

.field private mItemPaddingPosition:I

.field private mItemSubTitle:Lcom/sec/android/glview/TwGLText;

.field private mResId:I

.field private mSubTitleRowsRequired:I

.field private mSubTitleString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f090269

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    .line 18
    const v0, 0x7f09026a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->RIGHT_PADDING:I

    .line 19
    const v0, 0x7f09026b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TOP_PADDING:I

    .line 20
    const v0, 0x7f09026c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    .line 21
    const v0, 0x7f09026d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    .line 22
    const v0, 0x7f09026e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_WIDTH:I

    .line 23
    const v0, 0x7f09026f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_RIGHT_PADDING:I

    .line 24
    const v0, 0x7f090270

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    .line 25
    const v0, 0x7f0a001e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    .line 26
    const v0, 0x7f080004

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->SUBTITLE_TEXT_STROKE_COLOR:I

    .line 27
    const/high16 v0, 0x7f080000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_TEXT_STROKE_COLOR:I

    .line 28
    const v0, 0x7f0a0044

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    .line 29
    const v0, 0x7f080012

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    .line 30
    const v0, 0x7f08000b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;I)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "itemPaddingPosition"    # I
    .param p7, "description"    # Ljava/lang/String;
    .param p8, "descriptionType"    # I

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 38
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 40
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 41
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 55
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    .line 58
    iput p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 59
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 60
    invoke-direct {p0, p8, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "itemPaddingPosition"    # I
    .param p7, "subTitle"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "descriptionType"    # I

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 67
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    .line 69
    iput p9, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 70
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 71
    invoke-direct {p0, p9, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "itemPaddingPosition"    # I
    .param p7, "subTitle"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "resId"    # I
    .param p10, "descriptionType"    # I

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 77
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 78
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    .line 79
    iput-object p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    .line 80
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 81
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 82
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 83
    move/from16 v0, p10

    invoke-direct {p0, v0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 84
    return-void
.end method

.method private initContent(II)V
    .locals 13
    .param p1, "descriptionType"    # I
    .param p2, "itemPaddingPosition"    # I

    .prologue
    .line 89
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TOP_PADDING:I

    int-to-float v3, v0

    .line 90
    .local v3, "currentY":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->RIGHT_PADDING:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    .line 92
    .local v4, "contentWidth":F
    packed-switch p1, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 94
    :pswitch_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 95
    :cond_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v12

    .line 99
    .local v12, "rowsRequired":I
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v11, v0, v12

    .line 100
    .local v11, "heightRequired":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_5

    .line 101
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 109
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, "currentLanguage":Ljava/lang/String;
    const-string v0, "he"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "iw"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 117
    :goto_2
    int-to-float v0, v11

    add-float/2addr v3, v0

    .line 118
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 119
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 120
    :cond_3
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 122
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_0

    .line 106
    .end local v10    # "currentLanguage":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v11

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    .line 114
    .restart local v10    # "currentLanguage":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_2

    .line 125
    .end local v10    # "currentLanguage":Ljava/lang/String;
    .end local v11    # "heightRequired":I
    .end local v12    # "rowsRequired":I
    :pswitch_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 126
    :cond_7
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 128
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 129
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    mul-int v11, v0, v1

    .line 131
    .restart local v11    # "heightRequired":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_b

    .line 132
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->SUBTITLE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 138
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 139
    int-to-float v0, v11

    add-float/2addr v3, v0

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v12

    .line 142
    .restart local v12    # "rowsRequired":I
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v11, v0, v12

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_c

    .line 144
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 151
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 152
    int-to-float v0, v11

    add-float/2addr v3, v0

    .line 153
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 154
    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    .line 155
    :cond_9
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 157
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_0

    .line 136
    .end local v12    # "rowsRequired":I
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v11

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_3

    .line 149
    .restart local v12    # "rowsRequired":I
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v11

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_4

    .line 160
    .end local v11    # "heightRequired":I
    .end local v12    # "rowsRequired":I
    :pswitch_2
    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 v0, 0x3

    if-ne p2, v0, :cond_e

    .line 161
    :cond_d
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 163
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 164
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    mul-int v11, v0, v1

    .line 166
    .restart local v11    # "heightRequired":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_12

    .line 167
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->SUBTITLE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 173
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 174
    int-to-float v0, v11

    add-float/2addr v3, v0

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_f

    .line 177
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 181
    :cond_f
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_WIDTH:I

    int-to-float v0, v0

    sub-float/2addr v4, v0

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v12

    .line 184
    .restart local v12    # "rowsRequired":I
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v11, v0, v12

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_13

    .line 186
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_RIGHT_PADDING:I

    add-int/2addr v2, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    int-to-float v5, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 194
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 195
    int-to-float v0, v11

    add-float/2addr v3, v0

    .line 196
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 197
    const/4 v0, 0x2

    if-eq p2, v0, :cond_10

    const/4 v0, 0x3

    if-ne p2, v0, :cond_11

    .line 198
    :cond_10
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 200
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_0

    .line 171
    .end local v12    # "rowsRequired":I
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v11

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto/16 :goto_5

    .line 192
    .restart local v12    # "rowsRequired":I
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v11

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_6

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .prologue
    const/4 v1, 0x0

    .line 228
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 229
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 240
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 241
    return-void

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public declared-synchronized setWidth(F)V
    .locals 5
    .param p1, "width"    # F

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_1

    .line 211
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 214
    .local v0, "beforeRowsRequired":I
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 215
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    if-eq v1, v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    sub-int/2addr v4, v0

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    sub-int/2addr v4, v0

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    .end local v0    # "beforeRowsRequired":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
