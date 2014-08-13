.class public Lcom/diotek/ime/framework/view/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/view/Keyboard$Key;,
        Lcom/diotek/ime/framework/view/Keyboard$Row;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mShiftKeyIndices:[I

.field private mShiftKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const v0, 0x3fe66666

    sput v0, Lcom/diotek/ime/framework/view/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 516
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-array v1, v4, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    aput-object v5, v1, v3

    const/4 v2, 0x1

    aput-object v5, v1, v2

    iput-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 106
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mShiftKeyIndices:[I

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    .line 549
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 550
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayWidth:I

    .line 551
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayHeight:I

    .line 554
    iput v3, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    .line 555
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I

    .line 556
    iput v3, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    .line 557
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHeight:I

    .line 558
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 560
    iput p3, p0, Lcom/diotek/ime/framework/view/Keyboard;->mKeyboardMode:I

    .line 561
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/diotek/ime/framework/view/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 562
    return-void

    .line 106
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-array v0, v3, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    aput-object v4, v0, v2

    const/4 v1, 0x1

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 106
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mShiftKeyIndices:[I

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    .line 528
    iput p4, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayWidth:I

    .line 529
    iput p5, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayHeight:I

    .line 531
    iput v2, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    .line 532
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I

    .line 533
    iput v2, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    .line 534
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I

    iput v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHeight:I

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 537
    iput p3, p0, Lcom/diotek/ime/framework/view/Keyboard;->mKeyboardMode:I

    .line 538
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/diotek/ime/framework/view/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 539
    return-void

    .line 106
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I

    .prologue
    .line 580
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 581
    const/4 v6, 0x0

    .line 582
    .local v6, "x":I
    const/4 v7, 0x0

    .line 583
    .local v7, "y":I
    const/4 v1, 0x0

    .line 584
    .local v1, "column":I
    const/4 v8, 0x0

    iput v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->mTotalWidth:I

    .line 586
    new-instance v5, Lcom/diotek/ime/framework/view/Keyboard$Row;

    invoke-direct {v5, p0}, Lcom/diotek/ime/framework/view/Keyboard$Row;-><init>(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 587
    .local v5, "row":Lcom/diotek/ime/framework/view/Keyboard$Row;
    iget v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHeight:I

    iput v8, v5, Lcom/diotek/ime/framework/view/Keyboard$Row;->defaultHeight:I

    .line 588
    iget v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I

    iput v8, v5, Lcom/diotek/ime/framework/view/Keyboard$Row;->defaultWidth:I

    .line 589
    iget v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    iput v8, v5, Lcom/diotek/ime/framework/view/Keyboard$Row;->defaultHorizontalGap:I

    .line 590
    iget v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    iput v8, v5, Lcom/diotek/ime/framework/view/Keyboard$Row;->verticalGap:I

    .line 591
    const/16 v8, 0xc

    iput v8, v5, Lcom/diotek/ime/framework/view/Keyboard$Row;->rowEdgeFlags:I

    .line 592
    const/4 v8, -0x1

    if-ne p4, v8, :cond_3

    const v4, 0x7fffffff

    .line 593
    .local v4, "maxColumns":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 594
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 595
    .local v0, "c":C
    if-ge v1, v4, :cond_0

    iget v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I

    add-int/2addr v8, v6

    add-int/2addr v8, p5

    iget v9, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayWidth:I

    if-le v8, v9, :cond_1

    .line 597
    :cond_0
    const/4 v6, 0x0

    .line 598
    iget v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    iget v9, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 599
    const/4 v1, 0x0

    .line 601
    :cond_1
    new-instance v3, Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-direct {v3, v5}, Lcom/diotek/ime/framework/view/Keyboard$Key;-><init>(Lcom/diotek/ime/framework/view/Keyboard$Row;)V

    .line 602
    .local v3, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iput v6, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    .line 603
    iput v7, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    .line 604
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 605
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v0, v8, v9

    iput-object v8, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    .line 606
    add-int/lit8 v1, v1, 0x1

    .line 608
    iget v8, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    iget v9, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->gap:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 609
    iget-object v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v8, v5, Lcom/diotek/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    iget v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->mTotalWidth:I

    if-le v6, v8, :cond_2

    .line 612
    iput v6, p0, Lcom/diotek/ime/framework/view/Keyboard;->mTotalWidth:I

    .line 593
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v3    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    .end local v4    # "maxColumns":I
    :cond_3
    move v4, p4

    .line 592
    goto :goto_0

    .line 615
    .restart local v2    # "i":I
    .restart local v4    # "maxColumns":I
    :cond_4
    iget v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->mTotalHeight:I

    .line 616
    iget-object v8, p0, Lcom/diotek/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 63
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 63
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 63
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/view/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 63
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/view/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 63
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/view/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 63
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method private computeNearestNeighbors()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 736
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0xa

    iput v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellWidth:I

    .line 737
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0x5

    iput v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellHeight:I

    .line 738
    const/16 v10, 0x32

    new-array v10, v10, [[I

    iput-object v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mGridNeighbors:[[I

    .line 739
    iget-object v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v6, v10, [I

    .line 740
    .local v6, "indices":[I
    iget v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellWidth:I

    mul-int/lit8 v4, v10, 0xa

    .line 741
    .local v4, "gridWidth":I
    iget v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellHeight:I

    mul-int/lit8 v3, v10, 0x5

    .line 742
    .local v3, "gridHeight":I
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_0
    if-ge v8, v4, :cond_4

    .line 743
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_1
    if-ge v9, v3, :cond_3

    .line 744
    const/4 v1, 0x0

    .line 745
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 746
    iget-object v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 747
    .local v7, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    invoke-virtual {v7, v8, v9}, Lcom/diotek/ime/framework/view/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lcom/diotek/ime/framework/view/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10, v9}, Lcom/diotek/ime/framework/view/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lcom/diotek/ime/framework/view/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellHeight:I

    add-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Lcom/diotek/ime/framework/view/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lcom/diotek/ime/framework/view/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellHeight:I

    add-int/2addr v10, v9

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v8, v10}, Lcom/diotek/ime/framework/view/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lcom/diotek/ime/framework/view/Keyboard;->mProximityThreshold:I

    if-ge v10, v11, :cond_1

    .line 752
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput v5, v6, v1

    move v1, v2

    .line 745
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 755
    .end local v7    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_2
    new-array v0, v1, [I

    .line 756
    .local v0, "cell":[I
    invoke-static {v6, v13, v0, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    iget-object v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mGridNeighbors:[[I

    iget v11, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellHeight:I

    div-int v11, v9, v11

    mul-int/lit8 v11, v11, 0xa

    iget v12, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellWidth:I

    div-int v12, v8, v12

    add-int/2addr v11, v12

    aput-object v0, v10, v11

    .line 743
    iget v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellHeight:I

    add-int/2addr v9, v10

    goto :goto_1

    .line 742
    .end local v0    # "cell":[I
    .end local v1    # "count":I
    .end local v5    # "i":I
    :cond_3
    iget v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellWidth:I

    add-int/2addr v8, v10

    goto :goto_0

    .line 760
    .end local v9    # "y":I
    :cond_4
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    .prologue
    .line 899
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 900
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 907
    .end local p3    # "defValue":I
    :cond_0
    :goto_0
    return p3

    .line 901
    .restart local p3    # "defValue":I
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 902
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    goto :goto_0

    .line 903
    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 905
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 790
    const/4 v11, 0x0

    .line 791
    .local v11, "inKey":Z
    const/4 v12, 0x0

    .line 792
    .local v12, "inRow":Z
    const/4 v14, 0x0

    .line 793
    .local v14, "leftMostKey":Z
    const/4 v15, 0x0

    .line 794
    .local v15, "row":I
    const/4 v5, 0x0

    .line 795
    .local v5, "x":I
    const/4 v6, 0x0

    .line 796
    .local v6, "y":I
    const/4 v13, 0x0

    .line 797
    .local v13, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    const/4 v4, 0x0

    .line 798
    .local v4, "currentRow":Lcom/diotek/ime/framework/view/Keyboard$Row;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 799
    .local v3, "res":Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 803
    .local v16, "skipRow":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    .local v9, "event":I
    const/4 v2, 0x1

    if-eq v9, v2, :cond_5

    .line 804
    const/4 v2, 0x2

    if-ne v9, v2, :cond_9

    .line 805
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 806
    .local v17, "tag":Ljava/lang/String;
    const-string v2, "Row"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 807
    const/4 v12, 0x1

    .line 808
    const/4 v5, 0x0

    .line 809
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/diotek/ime/framework/view/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/diotek/ime/framework/view/Keyboard$Row;

    move-result-object v4

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    iget v2, v4, Lcom/diotek/ime/framework/view/Keyboard$Row;->mode:I

    if-eqz v2, :cond_1

    iget v2, v4, Lcom/diotek/ime/framework/view/Keyboard$Row;->mode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/diotek/ime/framework/view/Keyboard;->mKeyboardMode:I

    if-eq v2, v7, :cond_1

    const/16 v16, 0x1

    .line 812
    :goto_1
    if-eqz v16, :cond_0

    .line 813
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    .line 814
    const/4 v12, 0x0

    goto :goto_0

    .line 811
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 816
    :cond_2
    const-string v2, "Key"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 817
    const/4 v11, 0x1

    .line 818
    if-eqz v4, :cond_0

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    .line 819
    invoke-virtual/range {v2 .. v7}, Lcom/diotek/ime/framework/view/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Lcom/diotek/ime/framework/view/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v13

    .line 820
    if-eqz v13, :cond_0

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v2, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    const/4 v7, -0x1

    if-ne v2, v7, :cond_7

    .line 825
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v2, v2

    if-ge v10, v2, :cond_3

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, v10

    if-nez v2, :cond_6

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aput-object v13, v2, v10

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard;->mShiftKeyIndices:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/diotek/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aput v7, v2, v10

    .line 832
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    .end local v10    # "i":I
    :cond_4
    :goto_3
    iget-object v2, v4, Lcom/diotek/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 859
    .end local v9    # "event":I
    .end local v17    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 860
    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "Keyboard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Parse error:"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 863
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    sub-int v2, v6, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/view/Keyboard;->mTotalHeight:I

    .line 864
    return-void

    .line 825
    .restart local v9    # "event":I
    .restart local v10    # "i":I
    .restart local v17    # "tag":Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 833
    .end local v10    # "i":I
    :cond_7
    :try_start_1
    iget-object v2, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    const/4 v7, -0x6

    if-ne v2, v7, :cond_4

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 839
    :cond_8
    const-string v2, "Keyboard"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/diotek/ime/framework/view/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_0

    .line 842
    .end local v17    # "tag":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x3

    if-ne v9, v2, :cond_0

    .line 843
    if-eqz v11, :cond_a

    if-eqz v13, :cond_a

    .line 844
    const/4 v11, 0x0

    .line 845
    iget v2, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->gap:I

    iget v7, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v2, v7

    add-int/2addr v5, v2

    .line 846
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard;->mTotalWidth:I

    if-le v5, v2, :cond_0

    .line 847
    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/view/Keyboard;->mTotalWidth:I

    goto/16 :goto_0

    .line 849
    :cond_a
    if-eqz v12, :cond_0

    .line 850
    const/4 v12, 0x0

    .line 851
    iget v2, v4, Lcom/diotek/ime/framework/view/Keyboard$Row;->verticalGap:I

    add-int/2addr v6, v2

    .line 852
    iget v2, v4, Lcom/diotek/ime/framework/view/Keyboard$Row;->defaultHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v6, v2

    .line 853
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v4, 0x0

    .line 878
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 881
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v4, v1, v2}, Lcom/diotek/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I

    .line 884
    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayHeight:I

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHeight:I

    .line 887
    const/4 v1, 0x2

    iget v2, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayWidth:I

    invoke-static {v0, v1, v2, v4}, Lcom/diotek/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    .line 890
    const/4 v1, 0x3

    iget v2, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v4}, Lcom/diotek/ime/framework/view/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    .line 893
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Lcom/diotek/ime/framework/view/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mProximityThreshold:I

    .line 894
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mProximityThreshold:I

    iget v2, p0, Lcom/diotek/ime/framework/view/Keyboard;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mProximityThreshold:I

    .line 895
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 896
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 869
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 870
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    :cond_1
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lcom/diotek/ime/framework/view/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/diotek/ime/framework/view/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 786
    new-instance v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/diotek/ime/framework/view/Keyboard$Key;-><init>(Landroid/content/res/Resources;Lcom/diotek/ime/framework/view/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/diotek/ime/framework/view/Keyboard$Row;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 781
    new-instance v0, Lcom/diotek/ime/framework/view/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Lcom/diotek/ime/framework/view/Keyboard$Row;-><init>(Landroid/content/res/Resources;Lcom/diotek/ime/framework/view/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 770
    iget-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/Keyboard;->computeNearestNeighbors()V

    .line 771
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 772
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellHeight:I

    div-int v1, p2, v1

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/diotek/ime/framework/view/Keyboard;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 773
    .local v0, "index":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    .line 777
    .end local v0    # "index":I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public getShiftKeyIndex()I
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getShiftKeyIndices()[I
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected getVerticalGap()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mShifted:Z

    return v0
.end method

.method final resize(II)V
    .locals 12
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 620
    iget-object v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 621
    .local v3, "numRows":I
    const/4 v5, 0x0

    .local v5, "rowIndex":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 622
    iget-object v10, p0, Lcom/diotek/ime/framework/view/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/view/Keyboard$Row;

    .line 623
    .local v4, "row":Lcom/diotek/ime/framework/view/Keyboard$Row;
    iget-object v10, v4, Lcom/diotek/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 624
    .local v2, "numKeys":I
    const/4 v7, 0x0

    .line 625
    .local v7, "totalGap":I
    const/4 v8, 0x0

    .line 626
    .local v8, "totalWidth":I
    const/4 v1, 0x0

    .local v1, "keyIndex":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 627
    iget-object v10, v4, Lcom/diotek/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 628
    .local v0, "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-lez v1, :cond_0

    .line 629
    iget v10, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->gap:I

    add-int/2addr v7, v10

    .line 631
    :cond_0
    iget v10, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v8, v10

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    .end local v0    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_1
    add-int v10, v7, v8

    if-le v10, p1, :cond_2

    .line 634
    const/4 v9, 0x0

    .line 635
    .local v9, "x":I
    sub-int v10, p1, v7

    int-to-float v10, v10

    int-to-float v11, v8

    div-float v6, v10, v11

    .line 636
    .local v6, "scaleFactor":F
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 637
    iget-object v10, v4, Lcom/diotek/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 638
    .restart local v0    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    iget v10, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    .line 639
    iput v9, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    .line 640
    iget v10, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    iget v11, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->gap:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 621
    .end local v0    # "key":Lcom/diotek/ime/framework/view/Keyboard$Key;
    .end local v6    # "scaleFactor":F
    .end local v9    # "x":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 644
    .end local v1    # "keyIndex":I
    .end local v2    # "numKeys":I
    .end local v4    # "row":Lcom/diotek/ime/framework/view/Keyboard$Row;
    .end local v7    # "totalGap":I
    .end local v8    # "totalWidth":I
    :cond_3
    iput p1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mTotalWidth:I

    .line 648
    return-void
.end method

.method protected setHorizontalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 663
    iput p1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHorizontalGap:I

    .line 664
    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 679
    iput p1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultHeight:I

    .line 680
    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 687
    iput p1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultWidth:I

    .line 688
    return-void
.end method

.method public setShifted(Z)Z
    .locals 5
    .param p1, "shiftState"    # Z

    .prologue
    .line 707
    iget-object v0, p0, Lcom/diotek/ime/framework/view/Keyboard;->mShiftKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .local v0, "arr$":[Lcom/diotek/ime/framework/view/Keyboard$Key;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 708
    .local v3, "shiftKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-eqz v3, :cond_0

    .line 709
    iput-boolean p1, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->on:Z

    .line 707
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v3    # "shiftKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    :cond_1
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/Keyboard;->mShifted:Z

    if-eq v4, p1, :cond_2

    .line 713
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mShifted:Z

    .line 714
    const/4 v4, 0x1

    .line 716
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected setTotalWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 691
    iput p1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mTotalWidth:I

    .line 692
    return-void
.end method

.method protected setVerticalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 671
    iput p1, p0, Lcom/diotek/ime/framework/view/Keyboard;->mDefaultVerticalGap:I

    .line 672
    return-void
.end method
