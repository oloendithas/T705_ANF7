.class public Lcom/sec/android/glview/TwGLUtil;
.super Ljava/lang/Object;
.source "TwGLUtil.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field public static final CLOSE:I = 0x1

.field private static final EPSILON:D = 9.999999747378752E-6

.field public static final EXPAND_DIRECTION_LEFT_DOWN:I = 0x0

.field public static final EXPAND_DIRECTION_LEFT_UP:I = 0x1

.field public static final EXPAND_DIRECTION_RIGHT_DOWN:I = 0x2

.field public static final EXPAND_DIRECTION_RIGHT_UP:I = 0x3

.field public static final FADE_ANIMATION:I = 0x4

.field public static final FADE_IN:I = 0x0

.field public static final FADE_OUT:I = 0x1

.field public static final OPEN:I = 0x0

.field public static final SLIDE_DIRECTION_DOWN:I = 0x3

.field public static final SLIDE_DIRECTION_LEFT:I = 0x0

.field public static final SLIDE_DIRECTION_RIGHT:I = 0x1

.field public static final SLIDE_DIRECTION_UP:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 249
    if-nez p0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 252
    :cond_0
    return-void
.end method

.method public static final calculateSampleSize(II)I
    .locals 1
    .param p0, "src"    # I
    .param p1, "target"    # I

    .prologue
    .line 998
    if-lt p0, p1, :cond_0

    if-nez p1, :cond_1

    .line 999
    :cond_0
    const/4 v0, 0x1

    .line 1001
    :goto_0
    return v0

    :cond_1
    div-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 737
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 739
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 803
    if-le p0, p2, :cond_0

    .line 807
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 805
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 806
    goto :goto_0

    :cond_1
    move p2, p0

    .line 807
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static distance(FFFF)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 789
    sub-float v0, p0, p2

    .line 790
    .local v0, "dx":F
    sub-float v1, p1, p3

    .line 791
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 750
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static floatEquals(DD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 1005
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b580000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAlphaOffAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 297
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 298
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 300
    return-object v0
.end method

.method public static getAlphaOnAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 278
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 279
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 281
    return-object v0
.end method

.method public static getAlphaOnAnimation(F)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "to"    # F

    .prologue
    .line 285
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 286
    .local v0, "showAlphaViewAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 288
    return-object v0
.end method

.method public static getBlinkAnimation(Z)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "repeat"    # Z

    .prologue
    .line 304
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 305
    .local v0, "blinkAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 306
    if-eqz p0, :cond_0

    .line 307
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 308
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 310
    :cond_0
    return-object v0
.end method

.method public static getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "array"    # [B

    .prologue
    .line 851
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 852
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 853
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 854
    return-object v0
.end method

.method public static getExpandAnimation(Landroid/view/View;IIZ)Landroid/view/animation/Animation;
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "to"    # I
    .param p2, "action"    # I
    .param p3, "withAlphaAnimation"    # Z

    .prologue
    .line 570
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 572
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    if-nez p2, :cond_0

    .line 573
    packed-switch p1, :pswitch_data_0

    .line 587
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 609
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 610
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 611
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 612
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 613
    packed-switch p2, :pswitch_data_1

    .line 621
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 579
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 581
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 582
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 584
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x3c

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 585
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 589
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 590
    packed-switch p1, :pswitch_data_2

    .line 604
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x3c

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 593
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 595
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_5
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 596
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 598
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_6
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x3c

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 599
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 601
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_7
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 602
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 607
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_8
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const v1, 0x3f666666

    const/high16 v2, 0x3f800000

    const v3, 0x3f666666

    const/high16 v4, 0x3f800000

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 623
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 624
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 625
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 626
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 627
    if-eqz p3, :cond_2

    .line 628
    packed-switch p2, :pswitch_data_3

    .line 636
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 618
    :pswitch_9
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000

    const v2, 0x3f666666

    const/high16 v3, 0x3f800000

    const v4, 0x3f666666

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 619
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 630
    :pswitch_a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 638
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :goto_2
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 639
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 640
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 642
    :cond_2
    return-object v9

    .line 633
    :pswitch_b
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 634
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_2

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 613
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 590
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_5
    .end packed-switch

    .line 628
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getExpandAnimation(Lcom/sec/android/glview/TwGLView;IIZ)Landroid/view/animation/Animation;
    .locals 10
    .param p0, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p1, "to"    # I
    .param p2, "action"    # I
    .param p3, "withAlphaAnimation"    # Z

    .prologue
    .line 478
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 480
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    if-nez p2, :cond_1

    .line 481
    packed-switch p1, :pswitch_data_0

    .line 495
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    const/high16 v2, 0x42700000

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x41a00000

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 518
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 520
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 521
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 522
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 525
    :cond_0
    packed-switch p2, :pswitch_data_1

    .line 533
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x42700000

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x41a00000

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 487
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 489
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    const/high16 v2, 0x42700000

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    const/high16 v4, 0x41a00000

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 490
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 492
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x42700000

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    const/high16 v4, 0x41a00000

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 493
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 497
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 498
    packed-switch p1, :pswitch_data_2

    .line 512
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x42700000

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x41a00000

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 501
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 503
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_5
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    const/high16 v3, 0x42700000

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x41a00000

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 504
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 506
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_6
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x42700000

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    const/high16 v5, 0x41a00000

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 507
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 509
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_7
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    const/high16 v3, 0x42700000

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    const/high16 v5, 0x41a00000

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 510
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 515
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 527
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_8
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const v1, 0x3f666666

    const/high16 v2, 0x3f800000

    const v3, 0x3f666666

    const/high16 v4, 0x3f800000

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 536
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :goto_1
    if-eqz v0, :cond_3

    .line 537
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 538
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 539
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 540
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 543
    :cond_3
    if-eqz p3, :cond_4

    .line 544
    packed-switch p2, :pswitch_data_3

    .line 552
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :pswitch_9
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000

    const v2, 0x3f666666

    const/high16 v3, 0x3f800000

    const v4, 0x3f666666

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 531
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 546
    :pswitch_a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 554
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :goto_2
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 555
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 556
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 558
    :cond_4
    return-object v9

    .line 549
    :pswitch_b
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 550
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_2

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 525
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 498
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_5
    .end packed-switch

    .line 544
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getFadeAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "to"    # I
    .param p2, "withAlphaAnimation"    # Z

    .prologue
    .line 695
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 697
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 705
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :pswitch_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f666666

    const/high16 v2, 0x3f800000

    const v3, 0x3f666666

    const/high16 v4, 0x3f800000

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    int-to-float v8, v8

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 707
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 708
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 709
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 710
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 711
    if-eqz p2, :cond_0

    .line 712
    packed-switch p1, :pswitch_data_1

    .line 720
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000

    const v2, 0x3f666666

    const/high16 v3, 0x3f800000

    const v4, 0x3f666666

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v10

    int-to-float v8, v8

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 703
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 714
    :pswitch_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 722
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :goto_1
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 723
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 724
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 726
    :cond_0
    return-object v9

    .line 717
    :pswitch_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 718
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 697
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 712
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;
    .locals 12
    .param p0, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p1, "to"    # I
    .param p2, "withAlphaAnimation"    # Z

    .prologue
    .line 653
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 655
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 663
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 657
    :pswitch_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f666666

    const/high16 v2, 0x3f800000

    const v3, 0x3f666666

    const/high16 v4, 0x3f800000

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 665
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 666
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 667
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 668
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 669
    if-eqz p2, :cond_0

    .line 670
    packed-switch p1, :pswitch_data_1

    .line 678
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000

    const v2, 0x3f666666

    const/high16 v3, 0x3f800000

    const v4, 0x3f666666

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 661
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 672
    :pswitch_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 680
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :goto_1
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 681
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 682
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 684
    :cond_0
    return-object v9

    .line 675
    :pswitch_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 676
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 670
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 836
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 837
    .local v1, "tempBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 838
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 839
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 840
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 841
    return-object v0
.end method

.method public static getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V
    .locals 1
    .param p0, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p1, "glCoordinate"    # [F
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F

    .prologue
    .line 871
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 872
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 873
    return-void
.end method

.method public static getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F
    .locals 0
    .param p0, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p1, "screenDistance"    # F

    .prologue
    .line 883
    return p1
.end method

.method public static getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F
    .locals 0
    .param p0, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p1, "screenDistance"    # F

    .prologue
    .line 895
    return p1
.end method

.method public static getGLOrientationByDisplayOrientation(I)I
    .locals 1
    .param p0, "displayOrientation"    # I

    .prologue
    const/4 v0, 0x0

    .line 1010
    packed-switch p0, :pswitch_data_0

    .line 1020
    :goto_0
    :pswitch_0
    return v0

    .line 1012
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 1016
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1018
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final getGLOrientationBySystemOrientation(I)I
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 946
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    .line 960
    :goto_0
    return v1

    .line 949
    :cond_0
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getOrientationCompensationValue()I

    move-result v2

    add-int/2addr v2, p0

    rem-int/lit16 v2, v2, 0x168

    invoke-static {v2}, Lcom/sec/android/glview/TwGLUtil;->roundOrientation(I)I

    move-result v0

    .line 951
    .local v0, "degree":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 953
    :sswitch_0
    const/4 v1, 0x3

    goto :goto_0

    .line 955
    :sswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 957
    :sswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 951
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getScreenCoordinateFromGLCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V
    .locals 1
    .param p0, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p1, "screenCoordinate"    # [F
    .param p2, "glX"    # F
    .param p3, "glY"    # F

    .prologue
    .line 911
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 912
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 913
    return-void
.end method

.method public static getScreenDistanceFromGLDistanceX(Lcom/sec/android/glview/TwGLContext;F)F
    .locals 0
    .param p0, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p1, "glDistance"    # F

    .prologue
    .line 924
    return p1
.end method

.method public static getScreenDistanceFromGLDistanceY(Lcom/sec/android/glview/TwGLContext;F)F
    .locals 0
    .param p0, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p1, "glDistance"    # F

    .prologue
    .line 936
    return p1
.end method

.method public static getSlideInAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "from"    # I
    .param p2, "withAlphaAnimation"    # Z

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x0

    .line 438
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 440
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 454
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 442
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 456
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 457
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 458
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 459
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 460
    if-eqz p2, :cond_0

    .line 461
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, 0x3f800000

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 462
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 463
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 464
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 466
    :cond_0
    return-object v1

    .line 445
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 446
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 448
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 449
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 451
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 452
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;
    .locals 9
    .param p0, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p1, "from"    # I
    .param p2, "withAlphaAnimation"    # Z

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x0

    .line 399
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 401
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 415
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 417
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 418
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 419
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 420
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 421
    if-eqz p2, :cond_0

    .line 422
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, 0x3f800000

    invoke-direct {v0, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 423
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 424
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 425
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 427
    :cond_0
    return-object v1

    .line 406
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 407
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 409
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 410
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 412
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 413
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlideOutAnimation(Landroid/view/View;IZ)Landroid/view/animation/Animation;
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "to"    # I
    .param p2, "withAlphaAnimation"    # Z

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x0

    .line 360
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 362
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 376
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 378
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 379
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 380
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 381
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 382
    if-eqz p2, :cond_0

    .line 383
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, 0x3f800000

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 384
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 385
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 386
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 388
    :cond_0
    return-object v1

    .line 367
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 368
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 370
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 371
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 373
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 374
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;
    .locals 9
    .param p0, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p1, "to"    # I
    .param p2, "withAlphaAnimation"    # Z

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x0

    .line 321
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 323
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 337
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 339
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 340
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 341
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 342
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 343
    if-eqz p2, :cond_0

    .line 344
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, 0x3f800000

    invoke-direct {v0, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 345
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 346
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 347
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 349
    :cond_0
    return-object v1

    .line 328
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    invoke-direct {v0, v6, v2, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 329
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 331
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 332
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 334
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 335
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "s":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 195
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 194
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isPowerOf2(I)Z
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 760
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 770
    add-int/lit8 p0, p0, -0x1

    .line 771
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 772
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 773
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 774
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 775
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 776
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000

    .line 104
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 105
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 108
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 109
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 110
    const/4 p0, 0x0

    .line 111
    move-object p0, v7

    .line 117
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 113
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static roundOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 972
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 994
    :cond_0
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    :goto_0
    return v0

    .line 974
    :pswitch_0
    const/16 v0, 0x136

    if-le v0, p0, :cond_1

    const/16 v0, 0x32

    if-ge p0, v0, :cond_0

    .line 975
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 979
    :pswitch_1
    const/16 v0, 0x28

    if-gt v0, p0, :cond_0

    const/16 v0, 0x8c

    if-ge p0, v0, :cond_0

    .line 980
    const/16 v0, 0x5a

    goto :goto_0

    .line 984
    :pswitch_2
    const/16 v0, 0x82

    if-gt v0, p0, :cond_0

    const/16 v0, 0xe6

    if-ge p0, v0, :cond_0

    .line 985
    const/16 v0, 0xb4

    goto :goto_0

    .line 989
    :pswitch_3
    const/16 v0, 0xdc

    if-gt v0, p0, :cond_0

    const/16 v0, 0x140

    if-ge p0, v0, :cond_0

    .line 990
    const/16 v0, 0x10e

    goto :goto_0

    .line 972
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toGLMatrix([F)[F
    .locals 7
    .param p0, "v"    # [F

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 817
    const/16 v0, 0xf

    const/16 v1, 0x8

    aget v1, p0, v1

    aput v1, p0, v0

    .line 818
    const/16 v0, 0xd

    aget v1, p0, v6

    aput v1, p0, v0

    .line 819
    aget v0, p0, v5

    aput v0, p0, v6

    .line 820
    aget v0, p0, v2

    aput v0, p0, v5

    .line 821
    const/16 v0, 0xc

    aget v1, p0, v4

    aput v1, p0, v0

    .line 822
    aget v0, p0, v3

    aput v0, p0, v2

    .line 823
    const/4 v0, 0x6

    aget v0, p0, v0

    aput v0, p0, v3

    .line 824
    const/4 v0, 0x6

    const/16 v1, 0x8

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput v3, p0, v2

    aput v3, p0, v1

    aput v3, p0, v0

    aput v3, p0, v4

    .line 825
    const/16 v0, 0xa

    const/high16 v1, 0x3f800000

    aput v1, p0, v0

    .line 826
    return-object p0
.end method
