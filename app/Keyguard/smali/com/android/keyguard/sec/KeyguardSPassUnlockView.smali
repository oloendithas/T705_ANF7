.class public Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;
    }
.end annotation


# static fields
.field public static mEnableFallback:Z


# instance fields
.field private mAccountButton:Landroid/widget/Button;

.field private mAnimationBottomMargin:F

.field private mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

.field private mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/Button;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentOrientation:I

.field private mDisplay:Landroid/view/Display;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

.field private mFingerprintViewHeight:F

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

.field private mMagazineCardChangeListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

.field private mMagazineCardSpace:Landroid/view/View;

.field private mMagazineCardSpaceEca:Landroid/view/View;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mOrientationHandler:Landroid/os/Handler;

.field private mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

.field private mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mStatusContainer:Landroid/widget/LinearLayout;

.field private mStatusContainerTopMargin:F

.field private mStatusImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTotalFailedSPassAttempts:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    .line 122
    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I

    .line 402
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationHandler:Landroid/os/Handler;

    .line 648
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 822
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    .line 871
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardChangeListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/CarrierText;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/MSimCarrierText;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->adjustMagazineCardLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateOrientation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateAnimationView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/EmergencyCircleView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    return-object v0
.end method

.method private adjustMagazineCardLayout()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 367
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_68

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardSpace:Landroid/view/View;

    if-eqz v3, :cond_68

    .line 369
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    move-result-object v1

    .line 371
    .local v1, "magazineCardManager":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
    if-nez v1, :cond_1e

    .line 372
    const-string v3, "KeyguardSPassView"

    const-string v4, "KeyguardMagazineCardManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v1    # "magazineCardManager":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
    :goto_1d
    return-void

    .line 376
    .restart local v1    # "magazineCardManager":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
    :cond_1e
    invoke-virtual {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getCards()Ljava/util/ArrayList;

    move-result-object v0

    .line 378
    .local v0, "arrCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/magazinecard/MagazineCardRecord;>;"
    if-nez v0, :cond_2c

    .line 379
    const-string v3, "KeyguardSPassView"

    const-string v4, "ArrayList<MagazineCardRecord> is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 383
    :cond_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 385
    .local v2, "size":I
    if-nez v2, :cond_59

    .line 386
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardSpace:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardSpaceEca:Landroid/view/View;

    if-eqz v3, :cond_40

    .line 388
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardSpaceEca:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 396
    :cond_40
    :goto_40
    const-string v3, "KeyguardSPassView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "magazine card size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 391
    :cond_59
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardSpace:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardSpaceEca:Landroid/view/View;

    if-eqz v3, :cond_40

    .line 393
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardSpaceEca:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_40

    .line 398
    .end local v0    # "arrCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/magazinecard/MagazineCardRecord;>;"
    .end local v1    # "magazineCardManager":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
    .end local v2    # "size":I
    :cond_68
    const-string v3, "KeyguardSPassView"

    const-string v4, "magazine card is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private disableDevicePermanently()V
    .registers 3

    .prologue
    .line 799
    const-string v0, "KeyguardSPassView"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_11

    .line 801
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 803
    :cond_11
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    .line 804
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;

    const v1, 0x7f0600c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 805
    :cond_1d
    return-void
.end method

.method private initializeSPassUnlockView()V
    .registers 5

    .prologue
    .line 555
    const-string v0, "KeyguardSPassView"

    const-string v1, "initializeSPassUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const v0, 0x7f0b00ce

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;

    .line 558
    const v0, 0x7f0b00cf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImageView:Landroid/widget/ImageView;

    .line 559
    const v0, 0x7f0b00d0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SPassAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    .line 560
    const v0, 0x7f0b00d5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardSpace:Landroid/view/View;

    .line 561
    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardSpaceEca:Landroid/view/View;

    .line 562
    const v0, 0x7f0b00d1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusContainer:Landroid/widget/LinearLayout;

    .line 563
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusContainerTopMargin:F

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFingerprintViewHeight:F

    .line 565
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMargin:F

    .line 566
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 568
    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    .line 569
    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    .line 570
    const v0, 0x7f0b00cd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    .line 572
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-nez v0, :cond_ad

    .line 573
    new-instance v0, Lcom/android/keyguard/sec/SPassUnlock;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/SPassUnlock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    .line 574
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/keyguard/sec/SPassUnlock;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SPassUnlock;->initializeViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 577
    :cond_ad
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    if-eqz v0, :cond_c3

    .line 578
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    const v1, 0x7f0600ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 579
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$6;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    :cond_c3
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 589
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    .line 592
    :cond_cc
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_da

    .line 593
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    :cond_da
    return-void
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .registers 8

    .prologue
    .line 782
    const/4 v2, 0x0

    .line 783
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 785
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 786
    .local v3, "lMaxNumFailedAttemptForDisable":I
    const-string v4, "KeyguardSPassView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    if-lez v3, :cond_4e

    .line 789
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    .line 790
    .local v1, "lCurNumFailedAttempts":I
    const-string v4, "KeyguardSPassView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-lt v1, v3, :cond_67

    const/4 v2, 0x1

    .line 794
    .end local v1    # "lCurNumFailedAttempts":I
    :cond_4e
    :goto_4e
    const-string v4, "KeyguardSPassView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return v2

    .line 791
    .restart local v1    # "lCurNumFailedAttempts":I
    :cond_67
    const/4 v2, 0x0

    goto :goto_4e
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 713
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;)V

    .line 714
    .local v0, "accountAnalyzer":Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$AccountAnalyzer;->start()V

    .line 715
    return-void
.end method

.method private maybeStartBiometricUnlock()V
    .registers 8

    .prologue
    .line 616
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 617
    .local v0, "deadline":J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v5, :cond_16

    .line 618
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v5}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 646
    :cond_15
    :goto_15
    return-void

    .line 621
    :cond_16
    const-string v5, "KeyguardSPassView"

    const-string v6, "maybeStartBiometricUnlock()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v5, :cond_15

    .line 623
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 624
    .local v3, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 628
    .local v4, "powerManager":Landroid/os/PowerManager;
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 629
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    const/4 v5, 0x1

    if-ne v5, v2, :cond_3c

    .line 630
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    goto :goto_15

    .line 638
    :cond_3c
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_48

    .line 639
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v5}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    goto :goto_15

    .line 642
    :cond_48
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v5}, Lcom/android/keyguard/BiometricSensorUnlock;->isRunning()Z

    move-result v5

    if-nez v5, :cond_15

    .line 643
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v5}, Lcom/android/keyguard/BiometricSensorUnlock;->start()Z

    goto :goto_15
.end method

.method private updateAnimationView()V
    .registers 14

    .prologue
    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 281
    .local v6, "time":J
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTabletEnabledSpass()Z

    move-result v9

    if-nez v9, :cond_12

    .line 282
    const-string v9, "KeyguardSPassView"

    const-string v10, "KeyguardProperties.isGgsmTabletEnabledSpass() feature is false!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_11
    return-void

    .line 286
    :cond_12
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    if-nez v9, :cond_1e

    .line 287
    const-string v9, "KeyguardSPassView"

    const-string v10, "SPassAnimationView is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 291
    :cond_1e
    const/16 v5, 0x51

    .line 292
    .local v5, "statusContainerGravity":I
    const/16 v1, 0x51

    .line 293
    .local v1, "animationViewGravity":I
    const/4 v8, 0x0

    .line 294
    .local v8, "topMargin":F
    const/4 v2, 0x0

    .line 295
    .local v2, "bottomMargin":F
    const/4 v4, 0x0

    .line 297
    .local v4, "rotateDegree":F
    iget v9, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I

    packed-switch v9, :pswitch_data_a0

    .line 327
    const/4 v4, 0x0

    .line 328
    const/16 v5, 0x51

    .line 329
    const/16 v1, 0x51

    .line 330
    const/4 v8, 0x0

    .line 331
    const/4 v2, 0x0

    .line 334
    :goto_31
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    invoke-virtual {v9, v4}, Landroid/view/View;->setRotation(F)V

    .line 335
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 336
    .local v0, "alp":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 337
    float-to-int v9, v2

    iput v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 338
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 340
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_59

    .line 341
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 343
    float-to-int v9, v8

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 346
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_59
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->adjustMagazineCardLayout()V

    .line 348
    const-string v9, "KeyguardSPassView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAnimationView() time spend : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 299
    .end local v0    # "alp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_7a
    const/4 v4, 0x0

    .line 300
    const/16 v5, 0x51

    .line 301
    const/16 v1, 0x51

    .line 302
    const/4 v8, 0x0

    .line 303
    const/4 v2, 0x0

    .line 304
    goto :goto_31

    .line 306
    :pswitch_82
    const/high16 v4, 0x43870000

    .line 307
    const/4 v5, 0x1

    .line 308
    const/16 v1, 0x15

    .line 309
    iget v8, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusContainerTopMargin:F

    .line 310
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMargin:F

    .line 311
    goto :goto_31

    .line 313
    :pswitch_8c
    const/high16 v4, 0x43340000

    .line 314
    const/16 v5, 0x31

    .line 315
    const/16 v1, 0x31

    .line 316
    iget v8, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFingerprintViewHeight:F

    .line 317
    const/4 v2, 0x0

    .line 318
    goto :goto_31

    .line 320
    :pswitch_96
    const/high16 v4, 0x42b40000

    .line 321
    const/4 v5, 0x1

    .line 322
    const/16 v1, 0x13

    .line 323
    iget v8, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusContainerTopMargin:F

    .line 324
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMargin:F

    .line 325
    goto :goto_31

    .line 297
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_82
        :pswitch_8c
        :pswitch_96
    .end packed-switch
.end method

.method private updateOrientation()V
    .registers 5

    .prologue
    .line 352
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTabletEnabledSpass()Z

    move-result v1

    if-nez v1, :cond_7

    .line 364
    :cond_6
    :goto_6
    return-void

    .line 356
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_6

    .line 357
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 358
    .local v0, "ori":I
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I

    if-eq v0, v1, :cond_6

    .line 359
    const-string v1, "KeyguardSPassView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change orientation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentOrientation:I

    .line 361
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6
.end method


# virtual methods
.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 698
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 699
    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz v0, :cond_16

    .line 700
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 702
    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 708
    :goto_1d
    return-void

    .line 705
    :cond_1e
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1d
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 468
    const-string v1, "KeyguardSPassView"

    const-string v2, "onAttachedToWindow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 470
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 472
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTabletEnabledSpass()Z

    move-result v1

    if-ne v1, v3, :cond_25

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_25

    .line 474
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 477
    :cond_25
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v1

    if-ne v1, v3, :cond_38

    .line 478
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    move-result-object v0

    .line 480
    .local v0, "instance":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
    if-eqz v0, :cond_38

    .line 481
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardChangeListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->registerCardChangedListener(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;)V

    .line 485
    .end local v0    # "instance":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
    :cond_38
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_49

    .line 486
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v1, Lcom/android/keyguard/sec/SPassUnlock;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SPassUnlock;->registerCallback(Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;)V

    .line 488
    :cond_49
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateOrientation()V

    .line 411
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 492
    const-string v1, "KeyguardSPassView"

    const-string v2, "onDetachedFromWindow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 495
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_24

    .line 496
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 497
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->cleanUp()V

    .line 498
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    if-eqz v1, :cond_24

    .line 499
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v1, Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SPassUnlock;->unregisterCallback()V

    .line 502
    :cond_24
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 504
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTabletEnabledSpass()Z

    move-result v1

    if-ne v1, v3, :cond_3e

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_3e

    .line 506
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 509
    :cond_3e
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v1

    if-ne v1, v3, :cond_51

    .line 510
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;

    move-result-object v0

    .line 512
    .local v0, "instance":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
    if-eqz v0, :cond_51

    .line 513
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMagazineCardChangeListener:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;->unregisterCardChangedListener(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager$MagazineCardChangedListener;)V

    .line 516
    .end local v0    # "instance":Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardManager;
    :cond_51
    return-void
.end method

.method protected onFinishInflate()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    .line 147
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 148
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v4, :cond_111

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_10
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 151
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->initializeSPassUnlockView()V

    .line 152
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 154
    new-instance v4, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 155
    const v4, 0x7f0b00d2

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    .line 156
    const v4, 0x7f0b00d0

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_43

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 159
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 162
    :cond_43
    const v4, 0x7f0b0026

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/sec/SecCameraShortcut;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    .line 165
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 166
    const v4, 0x7f0b0019

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/sec/EmergencyCircleView;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    .line 167
    const v4, 0x7f0b0044

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    .line 171
    :cond_72
    const v4, 0x7f0b00ba

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, "securityViewEca":Landroid/view/View;
    if-eqz v1, :cond_7e

    .line 173
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_7e
    const v4, 0x7f0b0043

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/CarrierText;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 177
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz v4, :cond_92

    .line 178
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 180
    :cond_92
    sget-boolean v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v4, :cond_be

    .line 181
    const v4, 0x7f0b0041

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 182
    .local v2, "vStub":Landroid/view/ViewStub;
    if-eqz v2, :cond_be

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz v4, :cond_be

    .line 183
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 184
    const v4, 0x7f0b00ee

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/MSimCarrierText;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    .line 185
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 186
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .end local v2    # "vStub":Landroid/view/ViewStub;
    :cond_be
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v4, :cond_cc

    .line 191
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    :cond_cc
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    if-eqz v4, :cond_da

    .line 214
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    :cond_da
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    if-eqz v4, :cond_e8

    .line 237
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    :cond_e8
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_f1

    .line 261
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    .line 264
    :cond_f1
    new-instance v4, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-direct {v4, p0, v5, v6}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 270
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 271
    .local v3, "winMng":Landroid/view/WindowManager;
    if-eqz v3, :cond_10d

    .line 272
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mDisplay:Landroid/view/Display;

    .line 275
    :cond_10d
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->adjustMagazineCardLayout()V

    .line 276
    return-void

    .line 148
    .end local v0    # "bouncerFrameView":Landroid/view/View;
    .end local v1    # "securityViewEca":Landroid/view/View;
    .end local v3    # "winMng":Landroid/view/WindowManager;
    :cond_111
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_10
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 551
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 552
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 520
    const-string v0, "KeyguardSPassView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v0, :cond_10

    .line 522
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 524
    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1c

    .line 525
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 528
    :cond_1c
    return-void
.end method

.method public onResume(I)V
    .registers 6
    .param p1, "reason"    # I

    .prologue
    .line 532
    const-string v2, "KeyguardSPassView"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    .line 534
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 535
    .local v0, "deadline":J
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    .line 536
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    .line 537
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 768
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 770
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 771
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->maybeStartBiometricUnlock()V

    .line 772
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    .line 778
    :cond_c
    :goto_c
    return-void

    .line 774
    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v0, :cond_c

    .line 775
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    goto :goto_c
.end method

.method public reset()V
    .registers 8

    .prologue
    .line 430
    const-string v4, "KeyguardSPassView"

    const-string v5, "reset"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 434
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v4, :cond_2f

    .line 435
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    .line 436
    .local v3, "phoneState":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2f

    .line 437
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEmergencyButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 444
    .end local v3    # "phoneState":I
    :cond_2f
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 445
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v2, :cond_71

    .line 446
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCancelButton:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 448
    const-string v4, "KeyguardSPassView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed SPass Attempts : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateSPassButtonArea()V

    .line 450
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 451
    .local v0, "deadline":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_6d

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    if-eqz v4, :cond_6d

    .line 452
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSPassCallback:Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;

    invoke-interface {v4, v0, v1}, Lcom/android/keyguard/sec/SPassUnlock$SPassCallback;->handleAttemptLockout(J)V

    .line 463
    .end local v0    # "deadline":J
    :cond_6d
    :goto_6d
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateOrientation()V

    .line 464
    return-void

    .line 459
    :cond_71
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    goto :goto_6d
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 416
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_b

    .line 417
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecCameraShortcut;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 420
    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/keyguard/sec/SPassUnlock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SPassUnlock;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 421
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 426
    return-void
.end method

.method public showBouncer(I)V
    .registers 6
    .param p1, "duration"    # I

    .prologue
    const/4 v3, 0x0

    .line 687
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 688
    :cond_d
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    invoke-static {v1, v2, v3, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 689
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationView:Lcom/android/keyguard/sec/SPassAnimationView;

    invoke-static {v3, v3, v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startAnimationView(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    .line 694
    :goto_19
    return-void

    .line 691
    :cond_1a
    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 692
    .local v0, "bouncerFrameView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    invoke-static {v3, v1, v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startAnimationView(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_19
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 683
    return-void
.end method

.method public updateSPassButtonArea()V
    .registers 3

    .prologue
    .line 809
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    .line 810
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    if-nez v0, :cond_18

    .line 811
    const-string v0, "KeyguardSPassView"

    const-string v1, "account button is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :goto_17
    return-void

    .line 814
    :cond_18
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnableFallback:Z

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTotalFailedSPassAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_28

    .line 816
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    .line 818
    :cond_28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAccountButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17
.end method
