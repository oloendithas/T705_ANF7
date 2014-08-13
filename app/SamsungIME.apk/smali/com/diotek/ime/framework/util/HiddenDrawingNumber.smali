.class public Lcom/diotek/ime/framework/util/HiddenDrawingNumber;
.super Ljava/lang/Object;
.source "HiddenDrawingNumber.java"


# static fields
.field public static final HIDDEN_DRAWING_NUMBER_CONTROL_DEBUG_LOG:I = 0x1

.field public static final HIDDEN_DRAWING_NUMBER_PRINT_DOT_X_Y:I = 0x1

.field public static final HIDDEN_NUMBER_MOVING_KEY_CNT:I = 0x10

.field public static final HIDDEN_NUMBER_PRINT_DOT_X_Y_CNT:I = 0x18

.field public static final NUMBER_KEY_INDEX_1:I = 0x1

.field public static final NUMBER_KEY_INDEX_2:I = 0x2

.field public static final NUMBER_KEY_INDEX_3:I = 0x3

.field public static final RESULT_DISABLED_ALL_LOG:I = 0x2

.field public static final RESULT_DISABLED_PRINT_DOT_X_Y:I = 0x4

.field public static final RESULT_ENABLED_ALL_LOG:I = 0x1

.field public static final RESULT_ENABLED_PRINT_DOT_X_Y:I = 0x3

.field public static final RESULT_NONE:I

.field private static mDownKeyIndex:I

.field private static mIsDispalyDotXY:Z

.field private static mListCnt:I

.field private static mListDotX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mListDotY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mMoveKeyCount:I

.field private static mOnOff:Z

.field private static mPaint:Landroid/graphics/Paint;

.field private static mPrintDotXYOnOff:Z

.field private static mUpKeyIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    .line 30
    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mUpKeyIndex:I

    .line 31
    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    .line 33
    sput-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mOnOff:Z

    .line 34
    sput-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    .line 36
    sput-object v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    .line 37
    sput-object v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    .line 40
    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListCnt:I

    .line 41
    sput-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mIsDispalyDotXY:Z

    .line 43
    sput-object v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDotXY(IIILjava/lang/String;)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "index"    # I
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    sget-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mIsDispalyDotXY:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->initDotXY()V

    .line 174
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListCnt:I

    .line 182
    :cond_1
    return-void
.end method

.method public static addMoveKeyCount()V
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    .line 56
    return-void
.end method

.method public static compareHiddenDrawingNumber()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "nRetVal":I
    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mUpKeyIndex:I

    sget v2, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    if-ne v1, v2, :cond_2

    .line 63
    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    packed-switch v1, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    sput v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    .line 92
    return v0

    .line 65
    :pswitch_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mOnOff:Z

    if-nez v1, :cond_1

    .line 66
    sput-boolean v4, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mOnOff:Z

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    sput-boolean v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mOnOff:Z

    .line 70
    const/4 v0, 0x2

    goto :goto_0

    .line 74
    :cond_2
    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mUpKeyIndex:I

    sget v2, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    if-ne v1, v2, :cond_0

    .line 76
    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 78
    :pswitch_1
    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-boolean v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    if-nez v1, :cond_3

    .line 80
    sput-boolean v4, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    .line 81
    const/4 v0, 0x3

    goto :goto_0

    .line 83
    :cond_3
    sput-boolean v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    .line 84
    const/4 v0, 0x4

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 76
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static controlDebugLog(Z)V
    .locals 0
    .param p0, "bSet"    # Z

    .prologue
    .line 132
    sput-boolean p0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    .line 133
    sput-boolean p0, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    .line 134
    sput-boolean p0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    .line 135
    return-void
.end method

.method public static controlDotXY(Z)V
    .locals 1
    .param p0, "isEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 138
    if-eqz p0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->initDotXY()V

    .line 146
    sput-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    .line 147
    sput-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static doHiddenNumber(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "nRetVal":Z
    packed-switch p1, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 100
    :pswitch_0
    invoke-static {v3}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->controlDebugLog(Z)V

    .line 101
    const-string v1, "enabled all log for SamsungIME"

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    .line 103
    goto :goto_0

    .line 106
    :pswitch_1
    invoke-static {v2}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->controlDebugLog(Z)V

    .line 107
    const-string v1, "disabled all log for SamsungIME"

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    .line 109
    goto :goto_0

    .line 112
    :pswitch_2
    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {v3}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->controlDotXY(Z)V

    .line 114
    const-string v1, "enabled print dot x y for SamsungIME"

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :pswitch_3
    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {v2}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->controlDotXY(Z)V

    .line 122
    const-string v1, "disabled print dot x y for SamsungIME"

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static initDotXY()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 157
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 158
    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    :cond_1
    sput v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListCnt:I

    .line 165
    sput-boolean v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mIsDispalyDotXY:Z

    .line 166
    return-void
.end method

.method public static onDownKey(I)V
    .locals 1
    .param p0, "keyIndex"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    .line 47
    sput p0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    .line 48
    return-void
.end method

.method public static onUpKey(I)V
    .locals 0
    .param p0, "keyIndex"    # I

    .prologue
    .line 51
    sput p0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mUpKeyIndex:I

    .line 52
    return-void
.end method

.method public static printDotXY(Landroid/graphics/Canvas;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x10000

    .line 185
    if-eqz p0, :cond_1

    sget-boolean v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mIsDispalyDotXY:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "x":F
    const/4 v2, 0x0

    .line 188
    .local v2, "y":F
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    .line 189
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    .line 190
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 194
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 197
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 198
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 199
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41200000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListCnt:I

    if-ge v0, v3, :cond_1

    .line 203
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->floatValue()F

    move-result v1

    .line 204
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->floatValue()F

    move-result v2

    .line 205
    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "i":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    return-void
.end method

.method public static setDisplayDotXY(Z)V
    .locals 1
    .param p0, "bSet"    # Z

    .prologue
    .line 211
    sget-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sput-boolean p0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mIsDispalyDotXY:Z

    .line 214
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    return-void
.end method
