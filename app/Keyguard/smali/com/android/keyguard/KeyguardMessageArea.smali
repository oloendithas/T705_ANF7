.class public Lcom/android/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;,
        Lcom/android/keyguard/KeyguardMessageArea$Helper;
    }
.end annotation


# static fields
.field private static final ANNOUNCE_TOKEN:Ljava/lang/Object;

.field public static DEBUG:Z


# instance fields
.field private final CMAS_MESSAGE_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_MSG:I

.field private VZW_CMAS_PKG:Ljava/lang/String;

.field protected mBatteryCharged:Z

.field protected mBatteryIsLow:Z

.field mBatteryLevel:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCMASIcon:I

.field private mCMASNotiInfo:Landroid/app/NotificationInfo;

.field mCharging:Z

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mCmasHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMessage:Ljava/lang/CharSequence;

.field private mPrevShowingCMASText:Z

.field private mSeparator:Ljava/lang/CharSequence;

.field mShowingBatteryInfo:Z

.field mShowingBouncer:Z

.field private mShowingCMASText:Z

.field mShowingMessage:Z

.field mTimeout:J

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mVzwCmasNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardMessageArea;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 80
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    .line 83
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    .line 88
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 96
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->MSG_PKG:Ljava/lang/String;

    .line 97
    const-string v0, "com.sec.android.app.cmas"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->VZW_CMAS_PKG:Ljava/lang/String;

    .line 98
    const/16 v0, 0x41c

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->REQ_INDEX_MSG:I

    .line 100
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mPrevShowingCMASText:Z

    .line 106
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->CMAS_MESSAGE_UPDATE:I

    .line 115
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 184
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 395
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$4;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCmasHandler:Landroid/os/Handler;

    .line 209
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 211
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    .line 220
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardMessageArea;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->hideMessage(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMessageArea;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->showMessage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardMessageArea;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardMessageArea;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCmasHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "args"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v0, "b":Ljava/lang/StringBuilder;
    aget-object v3, p1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 295
    aget-object v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 297
    :cond_13
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_14
    array-length v3, p1

    if-ge v1, v3, :cond_30

    .line 298
    aget-object v2, p1, v1

    .line 299
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2a

    .line 301
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 303
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 297
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 306
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCMASCount()V
    .registers 7

    .prologue
    const/16 v3, 0x41c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 443
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 444
    .local v0, "mNM":Landroid/app/NotificationManager;
    if-nez v0, :cond_13

    .line 445
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    .line 479
    :goto_12
    return-void

    .line 449
    :cond_13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->MSG_PKG:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    .line 451
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 452
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->VZW_CMAS_PKG:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mVzwCmasNotiInfo:Landroid/app/NotificationInfo;

    .line 454
    :cond_29
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_68

    .line 455
    sget-boolean v1, Lcom/android/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v1, :cond_4d

    const-string v1, "CMASMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMAS missedCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_4d
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    if-lez v1, :cond_65

    .line 457
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCMASNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->commonValue:I

    if-nez v1, :cond_62

    .line 458
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    goto :goto_12

    .line 460
    :cond_62
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    goto :goto_12

    .line 463
    :cond_65
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    goto :goto_12

    .line 465
    :cond_68
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mVzwCmasNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_aa

    .line 466
    sget-boolean v1, Lcom/android/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v1, :cond_8c

    const-string v1, "CMASMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VZW CMAS missedCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mVzwCmasNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_8c
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mVzwCmasNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    if-lez v1, :cond_a6

    .line 468
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mVzwCmasNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->commonValue:I

    if-nez v1, :cond_a2

    .line 469
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    goto/16 :goto_12

    .line 471
    :cond_a2
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    goto/16 :goto_12

    .line 474
    :cond_a6
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    goto/16 :goto_12

    .line 477
    :cond_aa
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    goto/16 :goto_12
.end method

.method private getChargeInfo(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "icon"    # Llibcore/util/MutableInt;

    .prologue
    const/4 v5, 0x0

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "string":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v1, :cond_2a

    .line 328
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z

    if-eqz v1, :cond_2f

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-eqz v1, :cond_2b

    const v1, 0x7f06004f

    :goto_19
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 333
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 340
    :cond_2a
    :goto_2a
    return-object v0

    .line 330
    :cond_2b
    const v1, 0x7f060050

    goto :goto_19

    .line 334
    :cond_2f
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    if-eqz v1, :cond_2a

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_2a
.end method

.method private hideMessage(IZ)V
    .registers 8
    .param p1, "duration"    # I
    .param p2, "thenUpdate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 344
    if-lez p1, :cond_21

    .line 345
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 346
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 347
    if-eqz p2, :cond_1d

    .line 348
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 355
    :cond_1d
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 362
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_20
    :goto_20
    return-void

    .line 357
    :cond_21
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 358
    if-eqz p2, :cond_20

    .line 359
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    goto :goto_20
.end method

.method private showMessage(I)V
    .registers 7
    .param p1, "duration"    # I

    .prologue
    const/high16 v4, 0x3f800000

    .line 365
    if-lez p1, :cond_18

    .line 366
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 367
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 368
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 372
    .end local v0    # "anim":Landroid/animation/Animator;
    :goto_17
    return-void

    .line 370
    :cond_18
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_17
.end method


# virtual methods
.method getCurrentMessage()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 408
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 410
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 411
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 412
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    const-string v1, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$5;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 427
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->refreshCMASInfo()V

    .line 430
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_29
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 434
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 438
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 440
    :cond_e
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 225
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 226
    .local v0, "screenOn":Z
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 227
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public refreshCMASInfo()V
    .registers 3

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCMASCount()V

    .line 483
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mPrevShowingCMASText:Z

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    if-eq v0, v1, :cond_10

    .line 484
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 485
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mPrevShowingCMASText:Z

    .line 487
    :cond_10
    return-void
.end method

.method public securityMessageChanged()V
    .registers 8

    .prologue
    .line 230
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    :cond_23
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/keyguard/KeyguardMessageArea;->ANNOUNCE_TOKEN:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xfa

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 240
    return-void
.end method

.method update()V
    .registers 10

    .prologue
    const v8, 0x7f0600d0

    const v7, 0x7f020113

    const/4 v6, 0x0

    .line 250
    sget-boolean v3, Lcom/android/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v3, :cond_2b

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 251
    const-string v3, "CMASMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[update] mShowingCMASText is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_2b
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mShowingCMASText:Z

    if-eqz v3, :cond_9b

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "cmasText":Ljava/lang/String;
    iput v7, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCMASIcon:I

    .line 256
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 257
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 258
    sget-boolean v3, Lcom/android/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v3, :cond_49

    const-string v3, "CMASMessage"

    const-string v4, "[update] show cmas text - SPR!! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0600d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    const v3, 0x7f020114

    iput v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCMASIcon:I

    .line 273
    :goto_59
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCMASIcon:I

    invoke-virtual {p0, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 290
    .end local v0    # "cmasText":Ljava/lang/String;
    :cond_64
    :goto_64
    return-void

    .line 261
    .restart local v0    # "cmasText":Ljava/lang/String;
    :cond_65
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 262
    sget-boolean v3, Lcom/android/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v3, :cond_76

    const-string v3, "CMASMessage"

    const-string v4, "[update] show cmas text - No SPR!! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    const v3, 0x7f020115

    iput v3, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCMASIcon:I

    goto :goto_59

    .line 266
    :cond_84
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    iput v7, p0, Lcom/android/keyguard/KeyguardMessageArea;->mCMASIcon:I

    goto :goto_59

    .line 270
    :cond_8f
    sget-boolean v3, Lcom/android/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v3, :cond_64

    const-string v3, "CMASMessage"

    const-string v4, "[update] No show cmas text !! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 279
    .end local v0    # "cmasText":Ljava/lang/String;
    :cond_9b
    new-instance v1, Llibcore/util/MutableInt;

    invoke-direct {v1, v6}, Llibcore/util/MutableInt;-><init>(I)V

    .line 280
    .local v1, "icon":Llibcore/util/MutableInt;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->getChargeInfo(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 281
    .local v2, "status":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 282
    invoke-virtual {p0, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 283
    sget-boolean v3, Lcom/android/keyguard/KeyguardMessageArea;->DEBUG:Z

    if-eqz v3, :cond_c8

    .line 284
    const-string v3, "CMASMessage"

    const-string v4, "CMASIcon was GONE : "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_c8
    :goto_c8
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_64

    .line 286
    :cond_cf
    iget v3, v1, Llibcore/util/MutableInt;->value:I

    invoke-virtual {p0, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_c8
.end method
