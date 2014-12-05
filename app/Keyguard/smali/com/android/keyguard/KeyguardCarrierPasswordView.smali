.class public Lcom/android/keyguard/KeyguardCarrierPasswordView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final DEBUG:Ljava/lang/Boolean;


# instance fields
.field private countryCode:Ljava/lang/String;

.field private deadline:J

.field imm:Landroid/view/inputmethod/InputMethodManager;

.field private mBackupPin:Landroid/widget/EditText;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFailedAttempts:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOk:Landroid/widget/Button;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    .line 75
    iput v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    .line 94
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 98
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->countryCode:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private CheckSecondlock()V
    .registers 6

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x7530

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 214
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "backupPin":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkSKTPassword(Ljava/lang/String;)Z

    move-result v0

    .line 217
    .local v0, "IsSecondLock":Z
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->onCheckSecondLockResult(Z)V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 274
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 297
    return-void
.end method

.method private onCheckSecondLockResult(Z)V
    .registers 7
    .param p1, "success"    # Z

    .prologue
    .line 221
    sget-object v2, Lcom/android/keyguard/KeyguardCarrierPasswordView;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "KeyguardCarrierPasswordView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_20
    if-eqz p1, :cond_47

    .line 223
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.FindingLostPhonePlus.RELEASE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "IntentForDM":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MASTER_CLEAR"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, "IntentForLock":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    .end local v0    # "IntentForDM":Landroid/content/Intent;
    .end local v1    # "IntentForLock":Landroid/content/Intent;
    :cond_46
    :goto_46
    return-void

    .line 229
    :cond_47
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v3, 0x7f060098

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 230
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    .line 232
    iget v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_46

    .line 233
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->setSKTLockoutAttemptDeadline()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    .line 234
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    goto :goto_46
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 158
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 161
    return-void
.end method

.method public hideBouncer(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 258
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_e

    .line 208
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->CheckSecondlock()V

    .line 210
    :cond_e
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 262
    if-eqz p2, :cond_8

    const/4 v0, 0x6

    if-eq p2, v0, :cond_8

    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    .line 264
    :cond_8
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->CheckSecondlock()V

    .line 265
    const/4 v0, 0x1

    .line 268
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 105
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 109
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mOk:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->reset()V

    .line 142
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 241
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->reset()V

    .line 246
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_b

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x7530

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 167
    :cond_b
    return-void
.end method

.method public reset()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 184
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 185
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getSKTLockoutAttemptDeadline()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    .line 186
    iget-wide v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3d

    .line 187
    iget-wide v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    .line 191
    :goto_2a
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    .line 192
    .local v0, "permLocked":Z
    iget-object v4, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_45

    const v3, 0x7f0600a8

    :goto_37
    if-eqz v0, :cond_49

    :goto_39
    invoke-interface {v4, v3, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 194
    return-void

    .line 189
    .end local v0    # "permLocked":Z
    :cond_3d
    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v4, ""

    invoke-interface {v3, v4, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_2a

    .line 192
    .restart local v0    # "permLocked":Z
    :cond_45
    const v3, 0x7f0600a9

    goto :goto_37

    :cond_49
    move v1, v2

    goto :goto_39
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 146
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 150
    return-void
.end method

.method public showBouncer(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 254
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 250
    return-void
.end method
