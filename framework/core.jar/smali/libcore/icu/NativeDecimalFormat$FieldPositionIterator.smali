.class Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
.super Ljava/lang/Object;
.source "NativeDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/NativeDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldPositionIterator"
.end annotation


# static fields
.field private static fields:[Ljava/text/Format$Field;


# instance fields
.field private data:[I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 598
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/text/Format$Field;

    const/4 v1, 0x0

    sget-object v2, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    sput-object v0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fields:[Ljava/text/Format$Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    const/4 v0, -0x3

    iput v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    .line 515
    return-void
.end method

.method synthetic constructor <init>(Llibcore/icu/NativeDecimalFormat$1;)V
    .locals 0
    .param p1, "x0"    # Llibcore/icu/NativeDecimalFormat$1;

    .prologue
    .line 510
    invoke-direct {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>()V

    return-void
.end method

.method static synthetic access$000(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    .locals 0
    .param p0, "x0"    # Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    .param p1, "x1"    # Ljava/text/FieldPosition;

    .prologue
    .line 510
    invoke-static {p0, p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V

    return-void
.end method

.method private checkValid()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    if-eqz v0, :cond_0

    iget v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    if-ltz v0, :cond_0

    iget v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 575
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 577
    :cond_1
    return-void
.end method

.method public static forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    .locals 2
    .param p0, "fp"    # Ljava/text/FieldPosition;

    .prologue
    .line 518
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 519
    new-instance v0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    invoke-direct {v0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>()V

    .line 521
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNativeFieldPositionId(Ljava/text/FieldPosition;)I
    .locals 5
    .param p0, "fp"    # Ljava/text/FieldPosition;

    .prologue
    const/4 v4, -0x1

    .line 531
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getField()I

    move-result v2

    .line 532
    .local v2, "id":I
    if-lt v2, v4, :cond_0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 533
    :cond_0
    const/4 v2, -0x1

    .line 535
    :cond_1
    if-ne v2, v4, :cond_2

    .line 536
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    .line 537
    .local v0, "attr":Ljava/text/Format$Field;
    if-eqz v0, :cond_2

    .line 538
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fields:[Ljava/text/Format$Field;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 539
    sget-object v3, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fields:[Ljava/text/Format$Field;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/text/AttributedCharacterIterator$Attribute;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 540
    move v2, v1

    .line 546
    .end local v0    # "attr":Ljava/text/Format$Field;
    .end local v1    # "i":I
    :cond_2
    return v2

    .line 538
    .restart local v0    # "attr":Ljava/text/Format$Field;
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setData([I)V
    .locals 1
    .param p1, "data"    # [I

    .prologue
    .line 618
    iput-object p1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    .line 619
    const/4 v0, -0x3

    iput v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    .line 620
    return-void
.end method

.method private static setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    .locals 2
    .param p0, "fpi"    # Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    .param p1, "fp"    # Ljava/text/FieldPosition;

    .prologue
    .line 550
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 551
    invoke-static {p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->getNativeFieldPositionId(Ljava/text/FieldPosition;)I

    move-result v0

    .line 552
    .local v0, "field":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 553
    :cond_0
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fieldId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 555
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->start()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 556
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 562
    .end local v0    # "field":I
    :cond_1
    return-void
.end method


# virtual methods
.method public field()Ljava/text/Format$Field;
    .locals 3

    .prologue
    .line 584
    invoke-direct {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->checkValid()V

    .line 585
    sget-object v0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fields:[Ljava/text/Format$Field;

    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v2, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    aget v1, v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public fieldId()I
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    aget v0, v0, v1

    return v0
.end method

.method public limit()I
    .locals 2

    .prologue
    .line 594
    invoke-direct {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->checkValid()V

    .line 595
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public next()Z
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    if-eqz v0, :cond_0

    iget v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 567
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 569
    :cond_1
    iget v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    .line 570
    iget v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()I
    .locals 2

    .prologue
    .line 589
    invoke-direct {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->checkValid()V

    .line 590
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method
