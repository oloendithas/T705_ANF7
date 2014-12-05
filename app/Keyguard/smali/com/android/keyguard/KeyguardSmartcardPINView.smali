.class public Lcom/android/keyguard/KeyguardSmartcardPINView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSmartcardPINView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mCurrent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardSmartcardPINView;",
            ">;"
        }
    .end annotation
.end field

.field private static mSmartcardAuthProgress:Z


# instance fields
.field private mEntry:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPM:Landroid/os/PowerManager;

.field private mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string v0, "KeyguardSmartcardPINView"

    sput-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 221
    new-instance v0, Lcom/android/keyguard/KeyguardSmartcardPINView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSmartcardPINView$4;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;

    .line 80
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSmartcardPINView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    .line 83
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mPM:Landroid/os/PowerManager;

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 88
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSmartcardPINView;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSmartcardPINView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    return p0
.end method

.method static synthetic access$400()Ljava/lang/ref/WeakReference;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSmartcardPINView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSmartcardPINView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSmartcardPINView;ZLjava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSmartcardPINView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSmartcardPINView;->verifyPasswordAndUnlock(ZLjava/lang/String;I)V

    return-void
.end method

.method private verifyPasswordAndUnlock(ZLjava/lang/String;I)V
    .registers 11
    .param p1, "status"    # Z
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "errorMsgId"    # I

    .prologue
    const/4 v6, 0x1

    .line 316
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    .line 318
    sget-object v3, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verifyPasswordAndUnlock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v3, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verifyPasswordAndUnlock : KeygueardSmartcardPINView object"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-eqz p1, :cond_75

    .line 322
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    .line 323
    .local v2, "ret":Z
    sget-object v3, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verifyPasswordAndUnlock : checkpassword call ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 326
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 347
    .end local v2    # "ret":Z
    :goto_5e
    sget-object v3, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v4, "verifyPasswordAndUnlock before setText to empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 350
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 351
    return-void

    .line 329
    :cond_75
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_a3

    const v3, 0x7f060110

    if-ne p3, v3, :cond_a3

    .line 334
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 335
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->getFailedAttempts()I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_99

    .line 336
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 337
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 339
    .end local v0    # "deadline":J
    :cond_99
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->getWrongPasswordStringId()I

    move-result v4

    invoke-interface {v3, v4, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_5e

    .line 344
    :cond_a3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, p3, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_5e
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .registers 2

    .prologue
    .line 127
    const v0, 0x7f0b0056

    return v0
.end method

.method public getWrongPasswordStringId()I
    .registers 2

    .prologue
    .line 205
    const v0, 0x7f060099

    return v0
.end method

.method protected onFinishInflate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 132
    sget-object v2, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v3, "onFinishInflate "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 134
    sget-boolean v2, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-nez v2, :cond_14

    .line 135
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->initializeCACAuthentication()V

    .line 136
    :cond_14
    const v2, 0x7f0b0062

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "ok":Landroid/view/View;
    if-eqz v0, :cond_31

    .line 138
    new-instance v2, Lcom/android/keyguard/KeyguardSmartcardPINView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSmartcardPINView$1;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    new-instance v2, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 153
    :cond_31
    const v2, 0x7f0b0057

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, "pinDelete":Landroid/view/View;
    if-eqz v1, :cond_4d

    .line 155
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 156
    new-instance v2, Lcom/android/keyguard/KeyguardSmartcardPINView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSmartcardPINView$2;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v2, Lcom/android/keyguard/KeyguardSmartcardPINView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSmartcardPINView$3;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    :cond_4d
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 182
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 185
    sget-boolean v2, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v2, :cond_7c

    .line 186
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v3, 0x7f06010f

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 188
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 193
    :goto_76
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 196
    return-void

    .line 190
    :cond_7c
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 191
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const v3, 0x7f060116

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_76
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 101
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-boolean v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_14

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 107
    :cond_14
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    :cond_28
    return-void
.end method

.method public onResume(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 114
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mSmartcardAuthProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-boolean v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_60

    .line 117
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume if loop. mSmartcardAuthProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f06010f

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 123
    :goto_5f
    return-void

    .line 121
    :cond_60
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    goto :goto_5f
.end method

.method protected resetState()V
    .registers 3

    .prologue
    .line 92
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "resetState "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 97
    :cond_18
    return-void
.end method

.method public showUsabilityHint()V
    .registers 3

    .prologue
    .line 200
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "showUsabilityHint "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 5

    .prologue
    .line 210
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "verifyPasswordAndUnlock: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3b

    .line 214
    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string v1, "Using Smartcard(CAC) authentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;Lcom/android/keyguard/KeyguardSmartcardPINView$1;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 219
    :cond_3b
    return-void
.end method
