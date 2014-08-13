.class public Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
.super Ljava/lang/Object;
.source "RecognizedStringWrapper.java"


# static fields
.field public static final NEW_STRING_IS_LEFT_POSITION:I = 0x1

.field public static final NEW_STRING_IS_RIGHT_POSITION:I = 0x2

.field public static final NEW_STRING_IS_RIGHT_POSITION_NO_SPACE:I = 0x3

.field private static final RATIO_PANEL_HEIGHT:D = 0.95


# instance fields
.field private final mAreaStartPoint:Landroid/graphics/PointF;

.field private mBaseline:F

.field private final mCharacter_None:Ljava/lang/String;

.field private final mCharacter_Space:Ljava/lang/String;

.field private mEndIndexOfChangeString:I

.field private mFontRosemary:Landroid/graphics/Typeface;

.field private mFontSize:I

.field private final mFontStartPoint:Landroid/graphics/PointF;

.field private mIsNeedSpace:Z

.field private mLeftPositionOfSelectString:F

.field private final mMinfont:I

.field private final mOverlapArea:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPanelBottom:I

.field private mPanelRight:I

.field private final mPermissibleRangeOfOverlapArea:D

.field private mRecognizedString:Ljava/lang/String;

.field private mRightPositionOfSelectString:F

.field private mSelectedTextRect:Landroid/graphics/Rect;

.field private mStartIndexOfChangeString:I

.field private final mStringArea:Landroid/graphics/RectF;

.field private final mWidthSpaceChar:I


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x32

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    .line 22
    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    .line 27
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    .line 31
    const-wide v0, 0x3fd47ae147ae147bL

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPermissibleRangeOfOverlapArea:D

    .line 33
    const-string v0, " "

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mCharacter_Space:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mCharacter_None:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    .line 38
    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mLeftPositionOfSelectString:F

    .line 39
    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRightPositionOfSelectString:F

    .line 40
    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    .line 41
    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mSelectedTextRect:Landroid/graphics/Rect;

    .line 47
    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mBaseline:F

    .line 48
    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mWidthSpaceChar:I

    .line 49
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    .line 84
    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mMinfont:I

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFFIILandroid/graphics/Typeface;)V
    .locals 5
    .param p1, "ans"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "panelBottom"    # I
    .param p6, "panelRight"    # I
    .param p7, "fontRosemary"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x32

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    .line 22
    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    .line 27
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    .line 31
    const-wide v0, 0x3fd47ae147ae147bL

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPermissibleRangeOfOverlapArea:D

    .line 33
    const-string v0, " "

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mCharacter_Space:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mCharacter_None:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    .line 38
    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mLeftPositionOfSelectString:F

    .line 39
    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRightPositionOfSelectString:F

    .line 40
    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    .line 41
    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mSelectedTextRect:Landroid/graphics/Rect;

    .line 47
    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mBaseline:F

    .line 48
    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mWidthSpaceChar:I

    .line 49
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    .line 84
    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mMinfont:I

    .line 65
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    .line 68
    iput p5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    .line 69
    iput p6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    .line 71
    iput-object p7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    .line 73
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->resetModifyInformation()V

    .line 74
    invoke-direct {p0, p3, p4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    .line 75
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStringArea()V

    .line 77
    return-void
.end method

.method private calculateRectSize(Landroid/graphics/RectF;)D
    .locals 2
    .param p1, "area"    # Landroid/graphics/RectF;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method private getOverlapArea()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method private resetModifyInformation()V
    .locals 2

    .prologue
    .line 242
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "SamsungIME"

    const-string v1, "resetStartAndEndPoint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartAndEndPoint(II)V

    .line 246
    return-void
.end method

.method private setStartAndEndPoint(II)V
    .locals 3
    .param p1, "s"    # I
    .param p2, "e"    # I

    .prologue
    .line 234
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartAndEndPoint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    .line 238
    iput p2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    .line 239
    return-void
.end method

.method private setStartPoint(FF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 80
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40a00000

    div-float/2addr v1, v2

    sub-float v1, p2, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 81
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 82
    return-void
.end method

.method private setStringArea()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/high16 v13, 0x3f800000

    const-wide v11, 0x3fee666666666666L

    const/16 v10, 0x32

    .line 87
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 88
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStringArea offset.x : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " offset.y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    .line 93
    .local v2, "tempString":Ljava/lang/String;
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 94
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 97
    .local v1, "preMeasure":F
    const/4 v0, 0x0

    .line 98
    .local v0, "crtMeasure":F
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 102
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStringArea : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    .line 107
    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    .line 108
    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    if-ge v3, v10, :cond_7

    .line 109
    iput v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    .line 110
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 111
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    .line 113
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v14

    if-gez v3, :cond_3

    .line 125
    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    .line 126
    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    if-ge v3, v10, :cond_8

    .line 127
    iput v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    .line 128
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 129
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 131
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    .line 132
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    cmpl-double v3, v3, v5

    if-lez v3, :cond_5

    .line 145
    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    .line 146
    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    if-ge v3, v10, :cond_9

    .line 147
    iput v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    .line 148
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 149
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    .line 151
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    float-to-double v4, v4

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    int-to-double v8, v8

    mul-double/2addr v8, v11

    sub-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 153
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    .line 154
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 164
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v14

    if-gez v3, :cond_6

    .line 165
    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    .line 166
    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    if-ge v3, v10, :cond_a

    .line 167
    iput v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    .line 168
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 169
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 171
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v13

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    .line 172
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 184
    :cond_6
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-double v3, v3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_b

    .line 185
    new-instance v3, Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;

    invoke-direct {v3}, Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;-><init>()V

    throw v3

    .line 117
    :cond_7
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 118
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 119
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    .line 120
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 136
    :cond_8
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 137
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 139
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    .line 140
    move v1, v0

    .line 141
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 158
    :cond_9
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 159
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    .line 161
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_2

    .line 176
    :cond_a
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 177
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 178
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 179
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v13

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    .line 180
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_3

    .line 188
    :cond_b
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v3, v13

    neg-float v3, v3

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mBaseline:F

    .line 190
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 191
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end setStringArea : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_c
    return-void
.end method


# virtual methods
.method public addNewString(Ljava/lang/String;Landroid/graphics/RectF;)I
    .locals 11
    .param p1, "newString"    # Ljava/lang/String;
    .param p2, "areaOfNewString"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v10, -0x40800000

    const/4 v9, 0x0

    .line 309
    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 310
    const-string v6, "SamsungIMEsetNewString"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setNewString - newString : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "tempString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 315
    .local v3, "resultString":Ljava/lang/String;
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v4, v6, Landroid/graphics/RectF;->right:F

    .line 317
    .local v4, "tempRight":F
    const/4 v2, 0x0

    .line 319
    .local v2, "result":I
    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 320
    iget v6, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_1

    const-string v6, " "

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_2

    .line 323
    const/4 v2, 0x2

    .line 328
    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 329
    .local v1, "newTextWidth":F
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    sub-float v7, v4, v1

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 330
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 392
    .end local v1    # "newTextWidth":F
    :goto_2
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    .line 394
    return v2

    .line 321
    :cond_1
    const-string v6, ""

    goto :goto_0

    .line 325
    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    .line 333
    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_4

    const-string v6, " "

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_5

    .line 336
    const/4 v2, 0x2

    .line 341
    :goto_4
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 342
    .restart local v1    # "newTextWidth":F
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    sub-float v7, v4, v1

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 343
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iput v7, v6, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 334
    .end local v1    # "newTextWidth":F
    :cond_4
    const-string v6, ""

    goto :goto_3

    .line 338
    :cond_5
    const/4 v2, 0x3

    goto :goto_4

    .line 345
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 348
    .restart local v1    # "newTextWidth":F
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v1

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 349
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 351
    const/4 v2, 0x1

    .line 352
    goto :goto_2

    .line 355
    .end local v1    # "newTextWidth":F
    :cond_7
    iget v6, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_a

    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_8

    const-string v6, " "

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_9

    .line 358
    const/4 v2, 0x2

    goto/16 :goto_2

    .line 356
    :cond_8
    const-string v6, ""

    goto :goto_5

    .line 360
    :cond_9
    const/4 v2, 0x3

    goto/16 :goto_2

    .line 363
    :cond_a
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    .line 364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 367
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, p2, Landroid/graphics/RectF;->left:F

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 368
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 369
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 371
    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 372
    .local v0, "leadingChar":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6, v9}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v6

    if-nez v6, :cond_c

    .line 373
    iput-boolean v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    .line 376
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6, v0}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 377
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_d

    const-string v6, " "

    :goto_6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 383
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_f

    const-string v6, " "

    :goto_8
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 384
    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_10

    .line 385
    const/4 v2, 0x2

    goto/16 :goto_2

    .line 377
    :cond_d
    const-string v6, ""

    goto :goto_6

    .line 379
    :cond_e
    move-object v3, v5

    .line 380
    iput-boolean v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    goto :goto_7

    .line 383
    :cond_f
    const-string v6, ""

    goto :goto_8

    .line 387
    :cond_10
    const/4 v2, 0x3

    goto/16 :goto_2
.end method

.method public getBaseline()F
    .locals 1

    .prologue
    .line 976
    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mBaseline:F

    return v0
.end method

.method public getCalculatedOverlap()D
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getOverlapArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    return v0
.end method

.method public getFontStartPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getRecognizedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedStringArea()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSelectedTextRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mSelectedTextRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStartIndexOfChangeString()I
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    return v0
.end method

.method public getStringOnLongClick(Landroid/graphics/Point;)Ljava/lang/String;
    .locals 16
    .param p1, "clickPosition"    # Landroid/graphics/Point;

    .prologue
    .line 906
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 907
    .local v5, "strRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v5, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 908
    const/4 v10, 0x0

    .line 909
    .local v10, "textWidth":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v8, v11, Landroid/graphics/RectF;->left:F

    .line 911
    .local v8, "tempLeft":F
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mSelectedTextRect:Landroid/graphics/Rect;

    .line 913
    move-object/from16 v0, p0

    iput v8, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mLeftPositionOfSelectString:F

    .line 914
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRightPositionOfSelectString:F

    .line 917
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 918
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 920
    const/4 v3, 0x0

    .line 921
    .local v3, "leftSpace":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    .line 922
    .local v4, "rightSpace":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    .line 923
    .local v9, "tempString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 925
    .local v6, "stringLength":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3dcccccd

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    const v15, 0x3dcccccd

    add-float/2addr v14, v15

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 927
    const/4 v2, 0x0

    .line 929
    .local v2, "index":I
    const/4 v1, 0x0

    .line 931
    .local v1, "afterSetLeftPosition":Z
    :goto_0
    if-ge v2, v6, :cond_0

    .line 932
    add-float/2addr v8, v10

    .line 933
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 934
    .local v7, "tempChar":C
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 935
    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 936
    if-eqz v1, :cond_1

    .line 937
    move v4, v2

    .line 938
    move-object/from16 v0, p0

    iput v8, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRightPositionOfSelectString:F

    .line 957
    .end local v7    # "tempChar":C
    :cond_0
    add-int/lit8 v11, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartAndEndPoint(II)V

    .line 959
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mLeftPositionOfSelectString:F

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRightPositionOfSelectString:F

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    float-to-int v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mSelectedTextRect:Landroid/graphics/Rect;

    .line 964
    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .end local v1    # "afterSetLeftPosition":Z
    .end local v2    # "index":I
    :goto_1
    return-object v11

    .line 941
    .restart local v1    # "afterSetLeftPosition":Z
    .restart local v2    # "index":I
    .restart local v7    # "tempChar":C
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 942
    add-float v11, v8, v10

    move-object/from16 v0, p0

    iput v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mLeftPositionOfSelectString:F

    .line 945
    :cond_2
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    cmpg-float v11, v8, v11

    if-gez v11, :cond_4

    add-float v11, v8, v10

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 947
    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 948
    const/4 v11, 0x0

    goto :goto_1

    .line 950
    :cond_3
    const/4 v1, 0x1

    .line 952
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 953
    goto :goto_0

    .line 955
    .end local v1    # "afterSetLeftPosition":Z
    .end local v2    # "index":I
    .end local v7    # "tempChar":C
    :cond_5
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public handleAwayGesture(Landroid/graphics/RectF;)Z
    .locals 14
    .param p1, "awayArea"    # Landroid/graphics/RectF;

    .prologue
    const/4 v10, 0x1

    const/high16 v13, 0x40000000

    const/4 v9, 0x0

    .line 567
    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 568
    const-string v11, "SamsungIME"

    const-string v12, "handleAwayGesture"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 571
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 572
    const/4 v3, 0x0

    .line 573
    .local v3, "resultString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v7

    .line 574
    .local v7, "tempString":Ljava/lang/String;
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v11, Landroid/graphics/RectF;->right:F

    .line 576
    .local v6, "tempRight":F
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 577
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 579
    const/4 v8, 0x0

    .line 580
    .local v8, "textWidth":F
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v11, Landroid/graphics/RectF;->left:F

    .line 582
    .local v5, "tempLeft":F
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v2, v11}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    .line 584
    .local v4, "stringLength":I
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 585
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 586
    sub-float/2addr v6, v8

    .line 587
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 589
    iget v11, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v11, v6, v11

    if-lez v11, :cond_4

    sub-float v11, v6, v8

    iget v12, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_4

    .line 591
    div-float v11, v8, v13

    sub-float v11, v6, v11

    iget v12, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    .line 592
    if-nez v0, :cond_2

    .line 639
    .end local v0    # "index":I
    .end local v4    # "stringLength":I
    :cond_1
    :goto_1
    return v9

    .line 595
    .restart local v0    # "index":I
    .restart local v4    # "stringLength":I
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v12, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 604
    :goto_2
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 605
    .local v1, "newTextWidth":F
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v1

    iput v11, v9, Landroid/graphics/PointF;->x:F

    .line 606
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iput v11, v9, Landroid/graphics/PointF;->x:F

    .line 607
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    move v9, v10

    .line 608
    goto :goto_1

    .line 598
    .end local v1    # "newTextWidth":F
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-eq v0, v11, :cond_1

    .line 601
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    add-int/lit8 v12, v0, 0x1

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 585
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 614
    .end local v0    # "index":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_3
    if-ge v0, v4, :cond_1

    .line 615
    add-float/2addr v5, v8

    .line 616
    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 618
    iget v11, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v11, v5, v11

    if-gez v11, :cond_7

    add-float v11, v5, v8

    iget v12, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_7

    .line 620
    div-float v11, v8, v13

    add-float/2addr v11, v5

    iget v12, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_6

    .line 621
    if-eqz v0, :cond_1

    .line 624
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v12, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 633
    :goto_4
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    move v9, v10

    .line 634
    goto/16 :goto_1

    .line 627
    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-eq v0, v11, :cond_1

    .line 630
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    add-int/lit8 v12, v0, 0x1

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 614
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public handleDeleteGesture(Landroid/graphics/RectF;I)Z
    .locals 9
    .param p1, "deleteArea"    # Landroid/graphics/RectF;
    .param p2, "gesture"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 487
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 488
    const-string v5, "SamsungIME"

    const-string v6, "handleDeleteGesture"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 491
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 493
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v2, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 494
    const/16 v5, 0xc

    if-ne p2, v5, :cond_2

    .line 495
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setDeleteOverlapStartAndEndPoint(Landroid/graphics/RectF;)V

    .line 500
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "tempString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 502
    .local v0, "lengTempString":I
    if-eqz v0, :cond_5

    .line 503
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    if-ne v5, v0, :cond_4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    sub-int/2addr v5, v6

    if-le v5, v4, :cond_4

    .line 504
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpl-float v5, v5, v8

    if-nez v5, :cond_3

    .line 505
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v5, v5, -0x2

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "modifedStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpl-float v5, v5, v8

    if-nez v5, :cond_1

    .line 507
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v5, v5, -0x3

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 509
    :cond_1
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    .line 521
    .end local v0    # "lengTempString":I
    .end local v1    # "modifedStr":Ljava/lang/String;
    .end local v3    # "tempString":Ljava/lang/String;
    :goto_1
    return v4

    .line 497
    :cond_2
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setOverlapStartAndEndPoint(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 511
    .restart local v0    # "lengTempString":I
    .restart local v3    # "tempString":Ljava/lang/String;
    :cond_3
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    goto :goto_1

    .line 514
    :cond_4
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    goto :goto_1

    .line 517
    :cond_5
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    goto :goto_1

    .line 521
    .end local v0    # "lengTempString":I
    .end local v3    # "tempString":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public handleMergeGesture(Landroid/graphics/RectF;)Z
    .locals 13
    .param p1, "mergeArea"    # Landroid/graphics/RectF;

    .prologue
    const/4 v8, 0x0

    const/4 v12, -0x1

    .line 525
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 526
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMergeGesture : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 529
    .local v3, "rect":Landroid/graphics/RectF;
    invoke-virtual {v3, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 530
    const/4 v4, 0x0

    .line 531
    .local v4, "resultString":Ljava/lang/String;
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v7, v9, Landroid/graphics/RectF;->right:F

    .line 532
    .local v7, "tempRight":F
    const/4 v6, -0x1

    .line 533
    .local v6, "spaceStart":I
    const/4 v5, -0x1

    .line 534
    .local v5, "spaceEnd":I
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v3, Landroid/graphics/RectF;->left:F

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6

    iget v9, v3, Landroid/graphics/RectF;->right:F

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6

    .line 536
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setOverlapStartAndEndPoint(Landroid/graphics/RectF;)V

    .line 537
    const/4 v2, 0x0

    .line 538
    .local v2, "passedSpace":Z
    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    .local v0, "index":I
    :goto_0
    iget v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    if-gt v0, v9, :cond_4

    .line 539
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 540
    if-ne v6, v12, :cond_1

    .line 541
    move v6, v0

    .line 543
    :cond_1
    move v5, v0

    .line 544
    const/4 v2, 0x1

    .line 538
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_3
    if-eqz v2, :cond_2

    .line 551
    :cond_4
    if-eq v6, v12, :cond_6

    if-eq v5, v12, :cond_6

    .line 552
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v10, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    add-int/lit8 v10, v5, 0x1

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 554
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 555
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 556
    .local v1, "newTextWidth":F
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    sub-float v9, v7, v1

    iput v9, v8, Landroid/graphics/PointF;->x:F

    .line 557
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iput v9, v8, Landroid/graphics/PointF;->x:F

    .line 559
    .end local v1    # "newTextWidth":F
    :cond_5
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    .line 560
    const/4 v8, 0x1

    .line 563
    .end local v0    # "index":I
    .end local v2    # "passedSpace":Z
    :cond_6
    return v8
.end method

.method public handleSpaceGesture(Landroid/graphics/RectF;)Z
    .locals 8
    .param p1, "spaceArea"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x0

    .line 454
    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 455
    const-string v6, "SamsungIME"

    const-string v7, "handleSpaceGesture"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 458
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 460
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, "tempString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 462
    .local v2, "resultString":Ljava/lang/String;
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v6, Landroid/graphics/RectF;->right:F

    .line 464
    .local v3, "tempRight":F
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 465
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setOverlapStartAndEndPoint(Landroid/graphics/RectF;)V

    .line 466
    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-nez v6, :cond_3

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    :goto_0
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 474
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 475
    .local v0, "newTextWidth":F
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    sub-float v6, v3, v0

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 476
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 478
    .end local v0    # "newTextWidth":F
    :cond_1
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->resetModifyInformation()V

    .line 481
    const/4 v5, 0x1

    .line 483
    :cond_2
    return v5

    .line 469
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRTLText(Ljava/lang/String;)Z
    .locals 4
    .param p1, "recString"    # Ljava/lang/String;

    .prologue
    .line 984
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 986
    .local v1, "tempChar":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 987
    aget-char v2, v1, v0

    const/16 v3, 0x600

    if-lt v2, v3, :cond_0

    aget-char v2, v1, v0

    const/16 v3, 0x6ff

    if-le v2, v3, :cond_3

    :cond_0
    aget-char v2, v1, v0

    const/16 v3, 0x590

    if-lt v2, v3, :cond_1

    aget-char v2, v1, v0

    const/16 v3, 0x5ff

    if-le v2, v3, :cond_3

    :cond_1
    aget-char v2, v1, v0

    const v3, 0xfb50

    if-lt v2, v3, :cond_2

    aget-char v2, v1, v0

    const v3, 0xfdff

    if-le v2, v3, :cond_3

    :cond_2
    aget-char v2, v1, v0

    const v3, 0xfe70

    if-lt v2, v3, :cond_4

    aget-char v2, v1, v0

    const v3, 0xfefc

    if-gt v2, v3, :cond_4

    .line 991
    :cond_3
    const/4 v2, 0x1

    .line 994
    :goto_1
    return v2

    .line 986
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isSameArea(Landroid/graphics/RectF;)Z
    .locals 10
    .param p1, "newStringRect"    # Landroid/graphics/RectF;

    .prologue
    const v9, 0x3ea3d70a

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 398
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 399
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 401
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 402
    const-string v3, "SamsungIME"

    const-string v4, "isOverlap"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x42480000

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 406
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    .line 411
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 412
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v9

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 413
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 427
    :goto_1
    return v1

    .line 408
    :cond_1
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    goto :goto_0

    .line 415
    :cond_2
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v3, v3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v5

    const-wide v7, 0x3fd47ae140000000L

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_3

    .line 416
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 419
    :cond_3
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    cmpl-float v3, v3, v9

    if-lez v3, :cond_4

    .line 420
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 423
    goto :goto_1

    .line 426
    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    move v1, v2

    .line 427
    goto :goto_1
.end method

.method public isSameLine(Landroid/graphics/RectF;)Z
    .locals 9
    .param p1, "newStringRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const v8, 0x3ea3d70a

    .line 432
    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 433
    const-string v4, "SamsungIME"

    const-string v5, "isSameLine"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 436
    .local v1, "rect":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 437
    .local v0, "fullWidthRect":Landroid/graphics/RectF;
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 438
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 440
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 441
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v8

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 449
    :cond_1
    :goto_0
    return v2

    .line 443
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v8

    cmpl-float v4, v4, v5

    if-gez v4, :cond_1

    move v2, v3

    .line 446
    goto :goto_0

    :cond_3
    move v2, v3

    .line 449
    goto :goto_0
.end method

.method public modifyRecognizedString(Ljava/lang/String;)V
    .locals 10
    .param p1, "newString"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 249
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 250
    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNewString - newString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "tempString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 256
    .local v2, "resultString":Ljava/lang/String;
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v5, Landroid/graphics/RectF;->right:F

    .line 258
    .local v3, "tempRight":F
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-ne v5, v9, :cond_2

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 259
    move-object v2, p1

    .line 297
    :goto_0
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 299
    .local v1, "newTextWidth":F
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    sub-float v6, v3, v1

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 300
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 303
    .end local v1    # "newTextWidth":F
    :cond_1
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->resetModifyInformation()V

    .line 306
    return-void

    .line 260
    :cond_2
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-ne v5, v9, :cond_3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 261
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 264
    :cond_3
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-eq v5, v9, :cond_4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 267
    :cond_4
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 270
    const-string v0, ""

    .line 271
    .local v0, "leadingChar":Ljava/lang/String;
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-eqz v5, :cond_5

    .line 272
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_6

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 277
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v5, v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiComposable(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 278
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_8

    .line 280
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 282
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 284
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v5, v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 287
    :cond_a
    move-object v2, v4

    goto/16 :goto_0

    .line 291
    .end local v0    # "leadingChar":Ljava/lang/String;
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public setDeleteOverlapStartAndEndPoint(Landroid/graphics/RectF;)V
    .locals 12
    .param p1, "newRect"    # Landroid/graphics/RectF;

    .prologue
    .line 801
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 802
    const-string v9, "SamsungIME"

    const-string v10, "setDeleteOverlapStartAndEndPoint"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    const/4 v8, 0x0

    .line 805
    .local v8, "textWidth":F
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v7

    .line 806
    .local v7, "tempString":Ljava/lang/String;
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v9, Landroid/graphics/RectF;->right:F

    .line 807
    .local v6, "tempRight":F
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v9, Landroid/graphics/RectF;->left:F

    .line 808
    .local v5, "tempLeft":F
    const/4 v3, -0x1

    .line 809
    .local v3, "start":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 811
    .local v0, "end":I
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 812
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 814
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 815
    .local v4, "stringLength":I
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 816
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v4, :cond_c

    .line 817
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 818
    .local v2, "oneChar":C
    sub-float/2addr v6, v8

    .line 819
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 821
    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_2

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 823
    const/4 v9, -0x1

    if-ne v3, v9, :cond_1

    .line 824
    move v3, v1

    .line 826
    :cond_1
    iget v9, p1, Landroid/graphics/RectF;->right:F

    sub-float v10, v6, v8

    const v11, 0x3ea3d70a

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 829
    add-int/lit8 v3, v3, 0x1

    .line 833
    :cond_2
    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v6, v9

    if-lez v9, :cond_3

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_3

    .line 835
    move v0, v1

    .line 836
    iget v9, p1, Landroid/graphics/RectF;->left:F

    const v10, 0x3ea3d70a

    mul-float/2addr v10, v8

    sub-float v10, v6, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 839
    add-int/lit8 v0, v0, -0x1

    .line 816
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    .end local v1    # "index":I
    .end local v2    # "oneChar":C
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_1
    if-ge v1, v4, :cond_c

    .line 845
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 846
    .restart local v2    # "oneChar":C
    add-float/2addr v5, v8

    .line 847
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 848
    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_8

    add-float v9, v5, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 850
    const/4 v9, -0x1

    if-ne v3, v9, :cond_5

    .line 851
    move v3, v1

    .line 853
    :cond_5
    iget v9, p1, Landroid/graphics/RectF;->left:F

    add-float v10, v5, v8

    const v11, 0x3ea3d70a

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_8

    const/16 v9, 0x41

    if-lt v2, v9, :cond_6

    const/16 v9, 0x7a

    if-le v2, v9, :cond_7

    :cond_6
    const v9, 0xac00

    if-lt v2, v9, :cond_8

    const v9, 0xd7a3

    if-gt v2, v9, :cond_8

    .line 857
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 860
    :cond_8
    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_b

    add-float v9, v8, v5

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_b

    .line 862
    move v0, v1

    .line 863
    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v5

    if-gez v9, :cond_b

    if-ge v3, v0, :cond_b

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_b

    const/16 v9, 0x41

    if-lt v2, v9, :cond_9

    const/16 v9, 0x7a

    if-le v2, v9, :cond_a

    :cond_9
    const v9, 0xac00

    if-lt v2, v9, :cond_b

    const v9, 0xd7a3

    if-gt v2, v9, :cond_b

    .line 867
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 844
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 872
    .end local v2    # "oneChar":C
    :cond_c
    invoke-direct {p0, v3, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartAndEndPoint(II)V

    .line 873
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 972
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    .line 973
    return-void
.end method

.method public setOverlapStartAndEndPoint(Landroid/graphics/RectF;)V
    .locals 12
    .param p1, "newRect"    # Landroid/graphics/RectF;

    .prologue
    .line 726
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 727
    const-string v9, "SamsungIME"

    const-string v10, "getOverlapStartAndEndPoint"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    const/4 v8, 0x0

    .line 730
    .local v8, "textWidth":F
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v7

    .line 731
    .local v7, "tempString":Ljava/lang/String;
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v9, Landroid/graphics/RectF;->right:F

    .line 732
    .local v6, "tempRight":F
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v9, Landroid/graphics/RectF;->left:F

    .line 733
    .local v5, "tempLeft":F
    const/4 v3, -0x1

    .line 734
    .local v3, "start":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 736
    .local v0, "end":I
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 737
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 739
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 740
    .local v4, "stringLength":I
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 741
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v4, :cond_c

    .line 742
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 743
    .local v2, "oneChar":C
    sub-float/2addr v6, v8

    .line 744
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 746
    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_2

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 748
    const/4 v9, -0x1

    if-ne v3, v9, :cond_1

    .line 749
    move v3, v1

    .line 751
    :cond_1
    iget v9, p1, Landroid/graphics/RectF;->right:F

    sub-float v10, v6, v8

    const v11, 0x3ea3d70a

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 754
    add-int/lit8 v3, v3, 0x1

    .line 758
    :cond_2
    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v6, v9

    if-lez v9, :cond_3

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_3

    .line 760
    move v0, v1

    .line 761
    iget v9, p1, Landroid/graphics/RectF;->left:F

    const v10, 0x3ea3d70a

    mul-float/2addr v10, v8

    sub-float v10, v6, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 764
    add-int/lit8 v0, v0, -0x1

    .line 741
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    .end local v1    # "index":I
    .end local v2    # "oneChar":C
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_1
    if-ge v1, v4, :cond_c

    .line 770
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 771
    .restart local v2    # "oneChar":C
    add-float/2addr v5, v8

    .line 772
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 773
    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_8

    add-float v9, v5, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 775
    const/4 v9, -0x1

    if-ne v3, v9, :cond_5

    .line 776
    move v3, v1

    .line 778
    :cond_5
    iget v9, p1, Landroid/graphics/RectF;->left:F

    add-float v10, v5, v8

    const v11, 0x3ea3d70a

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_8

    const/16 v9, 0x41

    if-lt v2, v9, :cond_6

    const/16 v9, 0x7a

    if-le v2, v9, :cond_7

    :cond_6
    const v9, 0xac00

    if-lt v2, v9, :cond_8

    const v9, 0xd7a3

    if-gt v2, v9, :cond_8

    .line 782
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 785
    :cond_8
    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_b

    add-float v9, v8, v5

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_b

    .line 787
    move v0, v1

    .line 788
    iget v9, p1, Landroid/graphics/RectF;->right:F

    const v10, 0x3ea3d70a

    mul-float/2addr v10, v8

    add-float/2addr v10, v5

    cmpg-float v9, v9, v10

    if-gez v9, :cond_b

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_b

    const/16 v9, 0x41

    if-lt v2, v9, :cond_9

    const/16 v9, 0x7a

    if-le v2, v9, :cond_a

    :cond_9
    const v9, 0xac00

    if-lt v2, v9, :cond_b

    const v9, 0xd7a3

    if-gt v2, v9, :cond_b

    .line 792
    :cond_a
    add-int/lit8 v0, v0, -0x1

    .line 769
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 797
    .end local v2    # "oneChar":C
    :cond_c
    invoke-direct {p0, v3, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartAndEndPoint(II)V

    .line 798
    return-void
.end method

.method public setOverlapStartAndEndPoint(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 12
    .param p1, "newRect"    # Landroid/graphics/RectF;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 643
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 644
    const-string v9, "SamsungIME"

    const-string v10, "getOverlapStartAndEndPoint"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_0
    const/4 v8, 0x0

    .line 647
    .local v8, "textWidth":F
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v9, Landroid/graphics/RectF;->left:F

    .line 648
    .local v5, "tempLeft":F
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v7

    .line 649
    .local v7, "tempString":Ljava/lang/String;
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v9, Landroid/graphics/RectF;->right:F

    .line 651
    .local v6, "tempRight":F
    const/4 v3, -0x1

    .line 652
    .local v3, "start":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 654
    .local v0, "end":I
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 655
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 657
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 658
    .local v4, "stringLength":I
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 659
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v4, :cond_13

    .line 660
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 661
    .local v2, "oneChar":C
    sub-float/2addr v6, v8

    .line 662
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 664
    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_1

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 665
    move v3, v1

    .line 668
    :cond_1
    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v6, v9

    if-lez v9, :cond_2

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_2

    .line 669
    move v0, v1

    .line 659
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v1    # "index":I
    .end local v2    # "oneChar":C
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "index":I
    :goto_1
    if-ge v1, v4, :cond_13

    .line 674
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 677
    .restart local v2    # "oneChar":C
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_4

    .line 678
    add-float/2addr v5, v8

    .line 679
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 682
    :cond_4
    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_b

    add-float v9, v5, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b

    .line 684
    const/4 v9, -0x1

    if-ne v3, v9, :cond_5

    .line 685
    move v3, v1

    .line 687
    :cond_5
    iget v9, p1, Landroid/graphics/RectF;->left:F

    add-float v10, v5, v8

    const v11, 0x3ea3d70a

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_11

    const/16 v9, 0x41

    if-lt v2, v9, :cond_6

    const/16 v9, 0x7a

    if-le v2, v9, :cond_a

    :cond_6
    const/16 v9, 0xc0

    if-lt v2, v9, :cond_7

    const/16 v9, 0x17e

    if-le v2, v9, :cond_a

    :cond_7
    const/16 v9, 0x1ea0

    if-lt v2, v9, :cond_8

    const/16 v9, 0x1ef9

    if-le v2, v9, :cond_a

    :cond_8
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_9

    invoke-static {v2}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    const v9, 0xac00

    if-lt v2, v9, :cond_11

    const v9, 0xd7a3

    if-gt v2, v9, :cond_11

    .line 698
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 706
    :cond_b
    :goto_2
    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_10

    add-float v9, v8, v5

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_10

    .line 708
    move v0, v1

    .line 709
    iget v9, p1, Landroid/graphics/RectF;->right:F

    const v10, 0x3ea3d70a

    mul-float/2addr v10, v8

    add-float/2addr v10, v5

    cmpg-float v9, v9, v10

    if-gez v9, :cond_10

    const/16 v9, 0x41

    if-lt v2, v9, :cond_c

    const/16 v9, 0x7a

    if-le v2, v9, :cond_f

    :cond_c
    const/16 v9, 0xc0

    if-lt v2, v9, :cond_d

    const/16 v9, 0x17e

    if-le v2, v9, :cond_f

    :cond_d
    const/16 v9, 0x1ea0

    if-lt v2, v9, :cond_e

    const/16 v9, 0x1ef9

    if-le v2, v9, :cond_f

    :cond_e
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_f

    const v9, 0xac00

    if-lt v2, v9, :cond_10

    const v9, 0xd7a3

    if-gt v2, v9, :cond_10

    .line 717
    :cond_f
    add-int/lit8 v0, v0, -0x1

    .line 673
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 699
    :cond_11
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_12

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_12

    .line 700
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 701
    :cond_12
    iget v9, p1, Landroid/graphics/RectF;->left:F

    add-float v10, v5, v8

    const v11, 0x3f2e147b

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 703
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 722
    .end local v2    # "oneChar":C
    :cond_13
    invoke-direct {p0, v3, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartAndEndPoint(II)V

    .line 723
    return-void
.end method

.method public setRecognizedString(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    .line 201
    .local v0, "backupString":Ljava/lang/String;
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStringArea()V
    :try_end_0
    .catch Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    return-object v0
.end method
