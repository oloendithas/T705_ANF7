.class public Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityViewOverlay.java"


# static fields
.field private static mBootOnCameraShortCut:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

.field private mCameraCircle:Landroid/view/View;

.field private mEmergencyButtonArea:Landroid/widget/LinearLayout;

.field private mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

.field private mGuestCicle:Landroid/view/View;

.field private mGusetUnlockHelpText:Landroid/widget/TextView;

.field private mHandledCameraShortCut:Z

.field private mHandledEAC:Z

.field private mHandledGuestIcon:Z

.field private mIconContaniner:Landroid/view/View;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsCircleEffect:Z

.field private mIsKidsMode:Z

.field private mIsLiveWallPaper:Z

.field private mIsSecure:Z

.field private mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecCameraArrow:Landroid/widget/ImageView;

.field private mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewECA:Landroid/widget/LinearLayout;

.field private mShortcutSetting:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBootOnCameraShortCut:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 94
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 94
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 94
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->setCameraVisible()V

    return-void
.end method

.method private alignECA(IZ)V
    .registers 8
    .param p1, "gravity"    # I
    .param p2, "isPadding"    # Z

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_e

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 261
    :cond_e
    if-nez p2, :cond_28

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 265
    :cond_28
    return-void
.end method

.method private handleVisibility(Landroid/view/View;I)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 365
    .local v0, "targetID":I
    sparse-switch v0, :sswitch_data_5a

    .line 397
    :cond_b
    :goto_b
    return-void

    .line 367
    :sswitch_c
    if-ne p2, v3, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1a

    .line 368
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledEAC:Z

    goto :goto_b

    .line 370
    :cond_1a
    if-nez p2, :cond_b

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledEAC:Z

    if-eqz v1, :cond_b

    .line 371
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledEAC:Z

    goto :goto_b

    .line 376
    :sswitch_26
    if-ne p2, v3, :cond_34

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_34

    .line 377
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledGuestIcon:Z

    goto :goto_b

    .line 379
    :cond_34
    if-nez p2, :cond_b

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledGuestIcon:Z

    if-eqz v1, :cond_b

    .line 380
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledGuestIcon:Z

    goto :goto_b

    .line 385
    :sswitch_40
    if-ne p2, v3, :cond_4e

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4e

    .line 386
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledCameraShortCut:Z

    goto :goto_b

    .line 388
    :cond_4e
    if-nez p2, :cond_b

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledCameraShortCut:Z

    if-eqz v1, :cond_b

    .line 389
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledCameraShortCut:Z

    goto :goto_b

    .line 365
    :sswitch_data_5a
    .sparse-switch
        0x7f0b0026 -> :sswitch_40
        0x7f0b0069 -> :sswitch_26
        0x7f0b00ba -> :sswitch_c
    .end sparse-switch
.end method

.method private setCameraVisible()V
    .registers 14

    .prologue
    const/4 v8, 0x1

    const/16 v12, 0x8

    const/4 v7, 0x0

    .line 140
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    .line 141
    .local v4, "mIsSecure":Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isExclusivePatentFamily()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 142
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v9

    or-int/2addr v4, v9

    .line 144
    :cond_1b
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    .line 145
    .local v0, "currentlySetCarrier":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040595

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 146
    .local v3, "limitSvc":Ljava/lang/CharSequence;
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_c0

    move v1, v7

    .line 147
    .local v1, "isAirplaneModeOn":Z
    :goto_3f
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "set_shortcuts_mode"

    const/4 v11, -0x2

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 149
    .local v5, "shortcutSetting":I
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v6

    .line 151
    .local v6, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    if-eqz v4, :cond_6a

    .line 152
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v9, :cond_6a

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v9, :cond_6a

    .line 153
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    :cond_6a
    if-nez v4, :cond_bf

    if-ne v5, v8, :cond_bf

    iget-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-nez v9, :cond_bf

    .line 159
    const/4 v2, 0x1

    .line 160
    .local v2, "isCameraOn":Z
    if-eqz v1, :cond_76

    const/4 v2, 0x0

    .line 161
    :cond_76
    if-eqz v0, :cond_85

    .line 162
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_85

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    .line 163
    const/4 v2, 0x0

    .line 166
    :cond_85
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v9, :cond_9f

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v9, :cond_9f

    .line 167
    if-eqz v2, :cond_c3

    sget-boolean v9, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBootOnCameraShortCut:Z

    if-eqz v9, :cond_c3

    .line 168
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :goto_9d
    sput-boolean v8, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBootOnCameraShortCut:Z

    .line 177
    :cond_9f
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isExclusivePatentFamily()Z

    move-result v8

    if-eqz v8, :cond_bf

    .line 178
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v8, :cond_ad

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v8, :cond_ce

    .line 179
    :cond_ad
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v7, :cond_bf

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v7, :cond_bf

    .line 180
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    .end local v2    # "isCameraOn":Z
    :cond_bf
    :goto_bf
    return-void

    .end local v1    # "isAirplaneModeOn":Z
    .end local v5    # "shortcutSetting":I
    .end local v6    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_c0
    move v1, v8

    .line 146
    goto/16 :goto_3f

    .line 171
    .restart local v1    # "isAirplaneModeOn":Z
    .restart local v2    # "isCameraOn":Z
    .restart local v5    # "shortcutSetting":I
    .restart local v6    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_c3
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9d

    .line 184
    :cond_ce
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v8, :cond_bf

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v8, :cond_bf

    .line 185
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_bf
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x2

    const/4 v9, 0x3

    const/4 v8, -0x1

    .line 195
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 199
    .local v0, "density":F
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_37

    .line 200
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    const/high16 v7, 0x40400000

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 204
    :cond_37
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v3

    if-nez v3, :cond_43

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 205
    :cond_43
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_52
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_94

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_94

    .line 213
    invoke-direct {p0, v9, v11}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    .line 214
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 215
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 216
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_77
    :goto_77
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 242
    return-void

    .line 219
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_94
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a8

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_a8

    .line 220
    invoke-direct {p0, v9, v12}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    goto :goto_77

    .line 223
    :cond_a8
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_ce

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_ce

    .line 224
    invoke-direct {p0, v9, v11}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    .line 225
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 227
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_77

    .line 230
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_ce
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_77

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_77

    .line 231
    const/16 v3, 0x11

    invoke-direct {p0, v3, v12}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    .line 232
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 233
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 234
    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 235
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_77
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 269
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_11

    .line 272
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 274
    :cond_11
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 275
    return-void
.end method

.method protected onFinishInflate()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 109
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 111
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    .line 112
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    .line 113
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardGuestSelectorView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    .line 114
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecCameraShortcut;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    .line 115
    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCameraCircle:Landroid/view/View;

    .line 117
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGuestCicle:Landroid/view/View;

    .line 118
    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    .line 119
    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    .line 120
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 121
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_83
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsSecure:Z

    .line 125
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "set_shortcuts_mode"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_da

    move v0, v1

    :goto_9b
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    .line 126
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kids_home_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_dc

    :goto_ab
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    .line 128
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v0, :cond_c1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_c1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-eqz v0, :cond_ca

    .line 129
    :cond_c1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_ca

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :cond_ca
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-nez v0, :cond_d6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isExclusivePatentFamily()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 135
    :cond_d6
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->setCameraVisible()V

    .line 137
    :cond_d9
    return-void

    :cond_da
    move v0, v2

    .line 125
    goto :goto_9b

    :cond_dc
    move v1, v2

    .line 126
    goto :goto_ab
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 283
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 284
    .local v7, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v13, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_8a

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_8a

    const/4 v5, 0x1

    .line 288
    .local v5, "isGuestSelectorTouched":Z
    :goto_2d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v13, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_8c

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_8c

    const/4 v4, 0x1

    .line 292
    .local v4, "isCameraShortcutTouched":Z
    :goto_55
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getCurrentEffecType()I

    move-result v1

    .line 293
    .local v1, "currentEffectType":I
    if-nez v1, :cond_8e

    const/4 v13, 0x1

    :goto_64
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsCircleEffect:Z

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lockscreen_wallpaper"

    const/4 v15, 0x1

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_90

    const/4 v13, 0x0

    :goto_7d
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsLiveWallPaper:Z

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_1dc

    .line 360
    :cond_88
    :goto_88
    :pswitch_88
    const/4 v13, 0x0

    :goto_89
    return v13

    .line 285
    .end local v1    # "currentEffectType":I
    .end local v4    # "isCameraShortcutTouched":Z
    .end local v5    # "isGuestSelectorTouched":Z
    :cond_8a
    const/4 v5, 0x0

    goto :goto_2d

    .line 289
    .restart local v5    # "isGuestSelectorTouched":Z
    :cond_8c
    const/4 v4, 0x0

    goto :goto_55

    .line 293
    .restart local v1    # "currentEffectType":I
    .restart local v4    # "isCameraShortcutTouched":Z
    :cond_8e
    const/4 v13, 0x0

    goto :goto_64

    .line 294
    :cond_90
    const/4 v13, 0x1

    goto :goto_7d

    .line 299
    :pswitch_92
    if-nez v5, :cond_96

    if-eqz v4, :cond_88

    .line 300
    :cond_96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    if-eqz v5, :cond_101

    const/4 v13, 0x0

    :goto_a8
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v4, :cond_104

    const/4 v13, 0x0

    :goto_b4
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCameraCircle:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGuestCicle:Landroid/view/View;

    if-eqz v5, :cond_107

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsCircleEffect:Z

    if-nez v13, :cond_107

    const/4 v13, 0x0

    :goto_cf
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    if-eqz v13, :cond_e7

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->hideSecurityView(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v13}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->userActivity()V

    .line 314
    :cond_e7
    if-eqz v5, :cond_159

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v14, "user"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 316
    .local v10, "um":Landroid/os/UserManager;
    if-nez v10, :cond_10a

    .line 317
    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    .line 318
    .local v9, "t":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 319
    const/4 v13, 0x0

    goto :goto_89

    .line 301
    .end local v9    # "t":Ljava/lang/Throwable;
    .end local v10    # "um":Landroid/os/UserManager;
    :cond_101
    const/16 v13, 0x8

    goto :goto_a8

    .line 302
    :cond_104
    const/16 v13, 0x8

    goto :goto_b4

    .line 305
    :cond_107
    const/16 v13, 0x8

    goto :goto_cf

    .line 322
    .restart local v10    # "um":Landroid/os/UserManager;
    :cond_10a
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v12

    .line 323
    .local v12, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v12, :cond_11c

    .line 324
    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    .line 325
    .restart local v9    # "t":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 326
    const/4 v13, 0x0

    goto/16 :goto_89

    .line 328
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_11c
    const/4 v11, 0x0

    .line 329
    .local v11, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v6, 0x0

    .line 330
    .local v6, "message":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 331
    .local v2, "currentUserId":I
    if-nez v2, :cond_16a

    const/4 v13, 0x1

    :goto_125
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    check-cast v11, Landroid/content/pm/UserInfo;

    .line 333
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v14, 0x7f06012d

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "format":Ljava/lang/String;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "simpleResult":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .end local v2    # "currentUserId":I
    .end local v3    # "format":Ljava/lang/String;
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "simpleResult":Ljava/lang/String;
    .end local v10    # "um":Landroid/os/UserManager;
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v12    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v13, :cond_88

    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_88

    .line 331
    .restart local v2    # "currentUserId":I
    .restart local v6    # "message":Ljava/lang/String;
    .restart local v10    # "um":Landroid/os/UserManager;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_16a
    const/4 v13, 0x0

    goto :goto_125

    .line 346
    .end local v2    # "currentUserId":I
    .end local v6    # "message":Ljava/lang/String;
    .end local v10    # "um":Landroid/os/UserManager;
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v12    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_16c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    .line 347
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCameraCircle:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGuestCicle:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    if-eqz v13, :cond_1b2

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v13}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->showSecurityView()V

    .line 355
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v13, :cond_88

    if-eqz v4, :cond_88

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v13, :cond_88

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v13

    if-nez v13, :cond_88

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-nez v13, :cond_88

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v13, :cond_88

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_88

    .line 297
    :pswitch_data_1dc
    .packed-switch 0x0
        :pswitch_92
        :pswitch_16c
        :pswitch_88
        :pswitch_16c
    .end packed-switch
.end method

.method public onScreenTurnedOff()V
    .registers 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_9

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->onScreenTurnedOff()V

    .line 422
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 423
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    :cond_13
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_9

    .line 411
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->onScreenTurnedOn()V

    .line 413
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 414
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const v1, 0x7f040004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    :cond_15
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_27

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v0

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v0, :cond_28

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    :cond_27
    :goto_27
    return-void

    .line 251
    :cond_28
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_27
.end method

.method public setCallback(Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    .line 279
    return-void
.end method
