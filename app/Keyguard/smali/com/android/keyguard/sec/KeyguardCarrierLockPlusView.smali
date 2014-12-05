.class public Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierLockPlusView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private final CARRIER_LOCK_DISABLED:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallButton:Landroid/widget/Button;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mContext:Landroid/content/Context;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMccInfo:Ljava/lang/String;

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneNumber:Ljava/lang/String;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mUnlockButton:Landroid/widget/Button;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I

.field mtelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const-string v1, "0000"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneNumber:Ljava/lang/String;

    .line 93
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->CARRIER_LOCK_DISABLED:Ljava/lang/String;

    .line 101
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$1;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$2;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 127
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$3;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 314
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$7;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    .line 139
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    .line 140
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPM:Landroid/os/PowerManager;

    .line 141
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPM:Landroid/os/PowerManager;

    const v2, 0x1000001a

    const-string v3, "keyguard"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    .line 149
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 150
    const-string v1, "gsm.operator.iso-country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->handleTimeout(I)V

    return-void
.end method

.method private handleTimeout(I)V
    .registers 4
    .param p1, "seq"    # I

    .prologue
    .line 326
    monitor-enter p0

    .line 327
    :try_start_1
    const-string v0, "KeyguardCarrierLockPlusView"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    if-ne p1, v0, :cond_11

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    :cond_11
    monitor-exit p0

    .line 332
    return-void

    .line 331
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private updateButtonVisibility(I)V
    .registers 6
    .param p1, "phoneState"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 335
    const/4 v0, 0x2

    if-ne p1, v0, :cond_49

    .line 336
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 337
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const v1, 0x7f06003c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 344
    :goto_18
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$8;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :goto_2c
    return-void

    .line 338
    :cond_2d
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_18

    .line 341
    :cond_40
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_18

    .line 353
    :cond_49
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const v1, 0x7f060033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 361
    :goto_5b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$9;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c

    .line 355
    :cond_70
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 356
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const v1, 0x7f060034

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5b

    .line 358
    :cond_83
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const v1, 0x7f060035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5b
.end method


# virtual methods
.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 300
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 272
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 274
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 278
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1a

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 283
    :cond_1a
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 169
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 170
    const-string v1, "KeyguardCarrierLockPlusView"

    const-string v2, "onFinishInflate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 173
    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    .line 174
    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_29

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 178
    :cond_29
    const v1, 0x7f0b0031

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    .line 179
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    .line 180
    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    .line 182
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_76

    .line 183
    const-string v1, "kr"

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 184
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 190
    :goto_64
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    if-nez v1, :cond_d3

    .line 191
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_76
    :goto_76
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    if-eqz v1, :cond_96

    .line 208
    const-string v1, "kr"

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 209
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    const v2, 0x7f060036

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :goto_8c
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$5;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :cond_96
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v1, :cond_b6

    .line 226
    const-string v1, "kr"

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 227
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    const v2, 0x7f060039

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 233
    :goto_ac
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$6;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_b6
    return-void

    .line 185
    :cond_b7
    const-string v1, "cn"

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 186
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const v2, 0x7f060034

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_64

    .line 188
    :cond_ca
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const v2, 0x7f060035

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_64

    .line 203
    :cond_d3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_76

    .line 210
    :cond_db
    const-string v1, "cn"

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 211
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    const v2, 0x7f060037

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8c

    .line 213
    :cond_ee
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    const v2, 0x7f060038

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8c

    .line 228
    :cond_f7
    const-string v1, "cn"

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 229
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_ac

    .line 231
    :cond_10a
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_ac
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 268
    :cond_11
    return-void
.end method

.method public onResume(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 261
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 248
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 155
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 159
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 294
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 252
    return-void
.end method
