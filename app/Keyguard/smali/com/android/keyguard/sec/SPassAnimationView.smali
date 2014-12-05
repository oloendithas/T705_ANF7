.class public Lcom/android/keyguard/sec/SPassAnimationView;
.super Landroid/view/View;
.source "SPassAnimationView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;
    }
.end annotation


# instance fields
.field private final FAILED_STATUS:I

.field private final IDLE_STATUS:I

.field private final PASSED_STATUS:I

.field private final SCANNING_STATUS:I

.field private final SUCCEED_STATUS:I

.field private TAG:Ljava/lang/String;

.field private final WAITING_STATUS:I

.field private mAlphaValue:I

.field private mAnimationDuration:J

.field mAnimationListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

.field private mFrameIndex:I

.field private mFrameInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mIdIemgArray:[I

.field private final mIdleImgCountt:I

.field private mIsFinished:Z

.field private mIsLast:Z

.field private final mMismatchImgArray:[I

.field private final mMismatchImgCnt:I

.field private mOverConsumeTimeTotal:J

.field private mPreviousHitTime:J

.field private mRemainFrame:J

.field private mResId:I

.field private mScaleValue:D

.field private final mScanImgArray:[I

.field private final mScanImgCnt:I

.field private mStatus:I

.field private mTotalFrame:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x22

    const/16 v5, 0xf

    const/16 v4, 0xa

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "SPassAnimationView"

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->IDLE_STATUS:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->SCANNING_STATUS:I

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->FAILED_STATUS:I

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->PASSED_STATUS:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->WAITING_STATUS:I

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->SUCCEED_STATUS:I

    .line 48
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    .line 49
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    .line 50
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mPreviousHitTime:J

    .line 51
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    .line 53
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationDuration:J

    .line 54
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    .line 56
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    .line 65
    iput v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgCnt:I

    .line 66
    new-array v0, v5, [I

    fill-array-data v0, :array_52

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgArray:[I

    .line 74
    iput v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgCnt:I

    .line 75
    new-array v0, v4, [I

    fill-array-data v0, :array_74

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgArray:[I

    .line 82
    iput v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdleImgCountt:I

    .line 83
    new-array v0, v6, [I

    fill-array-data v0, :array_8c

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdIemgArray:[I

    .line 98
    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    .line 105
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassAnimationView;->init()V

    .line 106
    return-void

    .line 66
    nop

    :array_52
    .array-data 4
        0x7f0201e1
        0x7f0201e2
        0x7f0201e3
        0x7f0201e4
        0x7f0201e5
        0x7f0201e6
        0x7f0201e7
        0x7f0201e8
        0x7f0201e9
        0x7f0201ea
        0x7f0201eb
        0x7f0201ec
        0x7f0201ed
        0x7f0201ee
        0x7f0201ef
    .end array-data

    .line 75
    :array_74
    .array-data 4
        0x7f0201f0
        0x7f0201f1
        0x7f0201f2
        0x7f0201f3
        0x7f0201f4
        0x7f0201f5
        0x7f0201f6
        0x7f0201f7
        0x7f0201f8
        0x7f0201f9
    .end array-data

    .line 83
    :array_8c
    .array-data 4
        0x7f02007c
        0x7f02007d
        0x7f02007e
        0x7f02007f
        0x7f020080
        0x7f020081
        0x7f020082
        0x7f020083
        0x7f020084
        0x7f020085
        0x7f020086
        0x7f020087
        0x7f020088
        0x7f020089
        0x7f02008a
        0x7f02008b
        0x7f02008c
        0x7f02008d
        0x7f02008e
        0x7f02008f
        0x7f020090
        0x7f020091
        0x7f020092
        0x7f020093
        0x7f020094
        0x7f020095
        0x7f020096
        0x7f020097
        0x7f020098
        0x7f020099
        0x7f02009a
        0x7f02009b
        0x7f02009c
        0x7f02009d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v6, 0x22

    const/16 v5, 0xf

    const/16 v4, 0xa

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string v0, "SPassAnimationView"

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->IDLE_STATUS:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->SCANNING_STATUS:I

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->FAILED_STATUS:I

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->PASSED_STATUS:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->WAITING_STATUS:I

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->SUCCEED_STATUS:I

    .line 48
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    .line 49
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    .line 50
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mPreviousHitTime:J

    .line 51
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    .line 53
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationDuration:J

    .line 54
    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    .line 56
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    .line 65
    iput v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgCnt:I

    .line 66
    new-array v0, v5, [I

    fill-array-data v0, :array_52

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgArray:[I

    .line 74
    iput v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgCnt:I

    .line 75
    new-array v0, v4, [I

    fill-array-data v0, :array_74

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgArray:[I

    .line 82
    iput v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdleImgCountt:I

    .line 83
    new-array v0, v6, [I

    fill-array-data v0, :array_8c

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdIemgArray:[I

    .line 98
    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    .line 110
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SPassAnimationView;->init()V

    .line 111
    return-void

    .line 66
    nop

    :array_52
    .array-data 4
        0x7f0201e1
        0x7f0201e2
        0x7f0201e3
        0x7f0201e4
        0x7f0201e5
        0x7f0201e6
        0x7f0201e7
        0x7f0201e8
        0x7f0201e9
        0x7f0201ea
        0x7f0201eb
        0x7f0201ec
        0x7f0201ed
        0x7f0201ee
        0x7f0201ef
    .end array-data

    .line 75
    :array_74
    .array-data 4
        0x7f0201f0
        0x7f0201f1
        0x7f0201f2
        0x7f0201f3
        0x7f0201f4
        0x7f0201f5
        0x7f0201f6
        0x7f0201f7
        0x7f0201f8
        0x7f0201f9
    .end array-data

    .line 83
    :array_8c
    .array-data 4
        0x7f02007c
        0x7f02007d
        0x7f02007e
        0x7f02007f
        0x7f020080
        0x7f020081
        0x7f020082
        0x7f020083
        0x7f020084
        0x7f020085
        0x7f020086
        0x7f020087
        0x7f020088
        0x7f020089
        0x7f02008a
        0x7f02008b
        0x7f02008c
        0x7f02008d
        0x7f02008e
        0x7f02008f
        0x7f020090
        0x7f020091
        0x7f020092
        0x7f020093
        0x7f020094
        0x7f020095
        0x7f020096
        0x7f020097
        0x7f020098
        0x7f020099
        0x7f02009a
        0x7f02009b
        0x7f02009c
        0x7f02009d
    .end array-data
.end method

.method private fireAnmationEnd(I)V
    .registers 3
    .param p1, "staus"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

    if-eqz v0, :cond_9

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;->onAnimationEnd(I)V

    .line 337
    :cond_9
    return-void
.end method

.method private nextFrame(IZ)V
    .registers 12
    .param p1, "status"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/android/keyguard/sec/SPassAnimationView;->setIsLast()V

    .line 275
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3b

    .line 276
    iget-object v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgArray:[I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget-object v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mMismatchImgArray:[I

    array-length v5, v5

    if-lt v3, v5, :cond_38

    const/4 v3, 0x0

    :goto_10
    aget v0, v4, v3

    .line 277
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SPassAnimationView;->setResourceId(I)V

    .line 278
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    .line 279
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_27

    .line 280
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    .line 316
    .end local v0    # "resId":I
    :cond_27
    :goto_27
    if-eqz p2, :cond_2c

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 320
    :cond_2c
    iget-boolean v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    if-nez v3, :cond_37

    .line 321
    iget-wide v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    .line 323
    :cond_37
    return-void

    .line 276
    :cond_38
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    goto :goto_10

    .line 282
    :cond_3b
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_78

    .line 283
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    long-to-double v5, v5

    div-double v1, v3, v5

    .line 284
    .local v1, "temp":D
    const-wide v3, 0x406fe00000000000L

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAlphaValue:I

    .line 285
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    if-nez v3, :cond_6f

    .line 286
    const-wide/high16 v3, 0x3fe0000000000000L

    iput-wide v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    .line 293
    :goto_5c
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    .line 294
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_27

    .line 295
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    goto :goto_27

    .line 288
    :cond_6f
    const-wide/high16 v3, 0x3fe0000000000000L

    const-wide/high16 v5, 0x3fe0000000000000L

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    goto :goto_5c

    .line 297
    .end local v1    # "temp":D
    :cond_78
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_bb

    .line 298
    iget-object v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdIemgArray:[I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget-object v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIdIemgArray:[I

    array-length v5, v5

    if-lt v3, v5, :cond_b8

    const/4 v3, 0x0

    :goto_87
    aget v0, v4, v3

    .line 299
    .restart local v0    # "resId":I
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SPassAnimationView;->setResourceId(I)V

    .line 300
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    .line 301
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_a3

    iget-wide v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 302
    :cond_a3
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    .line 303
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    .line 304
    const-wide/16 v3, 0x459

    const/16 v5, 0x22

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/keyguard/sec/SPassAnimationView;->setAnimationTime(JI)V

    .line 305
    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(IJ)V

    goto/16 :goto_27

    .line 298
    .end local v0    # "resId":I
    :cond_b8
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    goto :goto_87

    .line 307
    :cond_bb
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 308
    iget-object v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgArray:[I

    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    iget-object v5, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScanImgArray:[I

    array-length v5, v5

    if-lt v3, v5, :cond_e0

    const/4 v3, 0x0

    :goto_ca
    aget v0, v4, v3

    .line 309
    .restart local v0    # "resId":I
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SPassAnimationView;->setResourceId(I)V

    .line 310
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    .line 311
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_27

    .line 312
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    goto/16 :goto_27

    .line 308
    .end local v0    # "resId":I
    :cond_e0
    iget v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    goto :goto_ca
.end method

.method private setIsLast()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 356
    iget-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    if-ne v0, v4, :cond_10

    .line 357
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    .line 361
    :goto_f
    return-void

    .line 359
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    goto :goto_f
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public getResourceId()I
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mResId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v11, 0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    .line 222
    iget v5, p1, Landroid/os/Message;->what:I

    .line 227
    .local v5, "status":I
    iget v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    if-ne v6, v10, :cond_11

    .line 228
    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_11

    .line 233
    :cond_11
    iget-boolean v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsFinished:Z

    if-nez v6, :cond_1b

    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_24

    .line 234
    :cond_1b
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SPassAnimationView;->fireAnmationEnd(I)V

    .line 235
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    :cond_23
    :goto_23
    return v10

    .line 239
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 240
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mPreviousHitTime:J

    sub-long v3, v0, v6

    .line 241
    .local v3, "realFrameInterval":J
    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    iget-wide v8, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    sub-long v8, v3, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    .line 246
    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    cmp-long v6, v6, v11

    if-lez v6, :cond_59

    .line 247
    :goto_3b
    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    iget-wide v8, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_59

    .line 251
    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_54

    .line 252
    invoke-direct {p0, v5, v10}, Lcom/android/keyguard/sec/SPassAnimationView;->nextFrame(IZ)V

    .line 247
    :goto_4c
    iget-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    iget-wide v8, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    goto :goto_3b

    .line 254
    :cond_54
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/sec/SPassAnimationView;->nextFrame(IZ)V

    goto :goto_4c

    .line 259
    :cond_59
    iput-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mPreviousHitTime:J

    .line 261
    invoke-direct {p0, v5, v10}, Lcom/android/keyguard/sec/SPassAnimationView;->nextFrame(IZ)V

    .line 262
    iget-boolean v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsLast:Z

    if-nez v6, :cond_23

    .line 263
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 264
    .local v2, "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    iget-wide v7, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_23
.end method

.method public init()V
    .registers 2

    .prologue
    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsFinished:Z

    .line 118
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_21e

    .line 181
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 128
    :pswitch_a
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 129
    .local v8, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0201fd

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 130
    .local v5, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 131
    .local v4, "bit":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v21

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3fe0000000000000L

    mul-double v17, v21, v23

    .line 132
    .local v17, "xPos":D
    const-wide/16 v19, 0x0

    .line 133
    .local v19, "yPos":D
    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getResourceId()I

    move-result v10

    .line 135
    .local v10, "resId1":I
    if-eqz v10, :cond_9

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .end local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 137
    .restart local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v21

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3fe0000000000000L

    mul-double v17, v21, v23

    .line 139
    const-wide/16 v19, 0x0

    .line 140
    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 146
    .end local v4    # "bit":Landroid/graphics/Bitmap;
    .end local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v10    # "resId1":I
    .end local v17    # "xPos":D
    .end local v19    # "yPos":D
    :pswitch_b0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SPassAnimationView;->getResourceId()I

    move-result v9

    .line 147
    .local v9, "resId":I
    if-eqz v9, :cond_9

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 149
    .restart local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 150
    .restart local v4    # "bit":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v21

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3fe0000000000000L

    mul-double v17, v21, v23

    .line 151
    .restart local v17    # "xPos":D
    const-wide/16 v19, 0x0

    .line 152
    .restart local v19    # "yPos":D
    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 157
    .end local v4    # "bit":Landroid/graphics/Bitmap;
    .end local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "resId":I
    .end local v17    # "xPos":D
    .end local v19    # "yPos":D
    :pswitch_104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0201fd

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 158
    .restart local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 159
    .restart local v4    # "bit":Landroid/graphics/Bitmap;
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 163
    .end local v4    # "bit":Landroid/graphics/Bitmap;
    .end local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :pswitch_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0201fe

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 164
    .restart local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 165
    .restart local v4    # "bit":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 166
    .restart local v8    # "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mAlphaValue:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 168
    .local v16, "w":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 169
    .local v7, "h":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v21

    sub-int v21, v21, v16

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3fe0000000000000L

    mul-double v17, v21, v23

    .line 170
    .restart local v17    # "xPos":D
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v21

    sub-int v21, v21, v7

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3fe0000000000000L

    mul-double v19, v21, v23

    .line 171
    .restart local v19    # "yPos":D
    new-instance v15, Landroid/graphics/Rect;

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v21, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v23, v0

    add-double v23, v23, v17

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    int-to-double v0, v7

    move-wide/from16 v24, v0

    add-double v24, v24, v17

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 172
    .local v15, "src":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    const-wide/high16 v23, 0x3fe0000000000000L

    mul-double v11, v21, v23

    .line 173
    .local v11, "scaledXPos":D
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    int-to-double v0, v7

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    const-wide/high16 v23, 0x3fe0000000000000L

    mul-double v13, v21, v23

    .line 174
    .local v13, "scaledYPos":D
    new-instance v6, Landroid/graphics/Rect;

    double-to-int v0, v11

    move/from16 v21, v0

    double-to-int v0, v13

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    add-double v23, v23, v11

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    int-to-double v0, v7

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v24, v24, v11

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 175
    .local v6, "dst":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 126
    :pswitch_data_21e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b0
        :pswitch_b0
        :pswitch_9
        :pswitch_104
        :pswitch_12e
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public setAnimationTime(JI)V
    .registers 8
    .param p1, "animationDuration"    # J
    .param p3, "frameCount"    # I

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationDuration:J

    .line 185
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    .line 186
    iget-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationDuration:J

    iget-wide v2, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    .line 187
    iget-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mTotalFrame:J

    iput-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    .line 188
    return-void
.end method

.method public setResourceId(I)V
    .registers 2
    .param p1, "ResId"    # I

    .prologue
    .line 348
    iput p1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mResId:I

    .line 349
    return-void
.end method

.method public setSPassAnimationListener(Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationListener:Lcom/android/keyguard/sec/SPassAnimationView$SPassAnimationListener;

    .line 331
    return-void
.end method

.method public startAnimation(I)V
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/sec/SPassAnimationView;->startAnimation(IJ)V

    .line 192
    return-void
.end method

.method public startAnimation(IJ)V
    .registers 11
    .param p1, "status"    # I
    .param p2, "delay"    # J

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 195
    iget-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAnimationDuration:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_10

    iget-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameInterval:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_11

    .line 213
    :cond_10
    :goto_10
    return-void

    .line 198
    :cond_11
    iput p1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    .line 199
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mIsFinished:Z

    .line 200
    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mFrameIndex:I

    .line 201
    iput v3, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mAlphaValue:I

    .line 202
    const-wide/high16 v1, 0x3fe0000000000000L

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mScaleValue:D

    .line 204
    iput-wide v4, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mOverConsumeTimeTotal:J

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mPreviousHitTime:J

    .line 207
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 208
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    :cond_33
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 212
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_10
.end method

.method public stopAnimation(I)V
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mRemainFrame:J

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/sec/SPassAnimationView;->mStatus:I

    .line 219
    return-void
.end method
