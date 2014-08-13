.class public Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SamsungKeypadSettingsFragment.java"


# static fields
.field private static final DELAY_LONG:Ljava/lang/String; = "0.5"

.field private static final DELAY_LONG_ARABIC:Ljava/lang/String; = "\u0660.\u0665"

.field private static final DELAY_MEDIUM:Ljava/lang/String; = "0.3"

.field private static final DELAY_MEDIUM_ARABIC:Ljava/lang/String; = "\u0660.\u0663"

.field private static final DELAY_SHORT:Ljava/lang/String; = "0.2"

.field private static final DELAY_SHORT_ARABIC:Ljava/lang/String; = "\u0660.\u0662"

.field private static final applying2014:Z = true

.field private static delayTextForSummary:[Ljava/lang/CharSequence;


# instance fields
.field protected IS_FHD:Z

.field protected IS_WVGA:Z

.field public PointingPopup:Z

.field public SwipePopup:Z

.field public TracePopup:Z

.field public TracePopup2:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mEmergencyMode:Z

.field private mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field mHandler:Landroid/os/Handler;

.field private mHelpAppPackageVersion:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsCheckDontShowPinchZoomGuide:Z

.field private mIsCheckDontShowPredictiveTextGuide:Z

.field private mIsDaMode:Z

.field private mIsEnablePredictiveTextGuide:Z

.field private mIsKeypadGuideInHelpApp:Z

.field private mIsKorMode:Z

.field private mIsODDcsc:Z

.field private mIsSwiftKeySDK:Z

.field private mLangCode:I

.field private mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mT9Toast:Landroid/widget/Toast;

.field protected mWindowHeight:I

.field protected mWindowWidth:I

.field private mXt9Version:I

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field private misUseSplitFloatingKeyboard:Z

.field onAutoReplacementChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onAutoReplacementClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onKeyboardSwipeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onKorInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onLanguageItemClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onNumberSymbolInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onShortCutPhraseClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onSoundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onTurkishInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onUseHwrClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseKorKeypadClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUsePointingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseSweepingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onUseXt9ChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field onUseXt9ClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field onVibChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field pointingDialog:Landroid/app/AlertDialog$Builder;

.field salesCode:Ljava/lang/String;

.field private settingActivity:Landroid/app/Activity;

.field swipeDialog:Landroid/app/AlertDialog$Builder;

.field traceDialog:Landroid/app/AlertDialog$Builder;

.field traceDialog2:Landroid/app/AlertDialog$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 93
    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 94
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsDaMode:Z

    .line 95
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    .line 96
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    .line 97
    iput v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    .line 98
    iput v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    .line 100
    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 102
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->PointingPopup:Z

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->TracePopup:Z

    .line 104
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->TracePopup2:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->SwipePopup:Z

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misUseSplitFloatingKeyboard:Z

    .line 114
    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 120
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKeypadGuideInHelpApp:Z

    .line 121
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mEmergencyMode:Z

    .line 127
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    .line 128
    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    .line 130
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    .line 131
    const-string v0, "INU"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "INS"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NPL"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SLK"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TML"

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsODDcsc:Z

    .line 133
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowHeight:I

    .line 134
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowWidth:I

    .line 135
    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowHeight:I

    const/16 v3, 0x320

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowWidth:I

    const/16 v3, 0x1e0

    if-ne v0, v3, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->IS_WVGA:Z

    .line 136
    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowHeight:I

    const/16 v3, 0x780

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mWindowWidth:I

    const/16 v3, 0x438

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->IS_FHD:Z

    .line 140
    iput v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    .line 1361
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUsePointingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1408
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$23;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1449
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseSweepingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1482
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$25;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$25;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onShortCutPhraseClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1503
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$26;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1525
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$27;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1533
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1582
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$29;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1607
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$30;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$30;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKeyboardSwipeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1622
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$31;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$31;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseHwrClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1646
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$32;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$32;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseKorKeypadClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1670
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$33;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKorInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1702
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$34;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$34;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1719
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$35;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$35;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onNumberSymbolInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1736
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$36;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onTurkishInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1753
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$37;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$37;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onLanguageItemClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 2132
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$42;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$42;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 2141
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$43;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 2255
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$45;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$45;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onSoundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 2267
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$46;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$46;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onVibChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 2533
    new-instance v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$47;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$47;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_2
    move v0, v1

    .line 131
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 135
    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->areAllLanguagesDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->showAutoReplacementGuideDialogToEnalbe()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    return v0
.end method

.method static synthetic access$300()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setSummaryForPredictiveText(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPinchZoomGuide:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPinchZoomGuide:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    return p1
.end method

.method private addLanguageActivityPreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V
    .locals 11
    .param p1, "languageSettingCategory"    # Landroid/preference/PreferenceCategory;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "language"    # Lcom/diotek/ime/framework/common/Language;
    .param p4, "order"    # I

    .prologue
    const/4 v2, 0x0

    .line 2022
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v1, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2023
    .local v10, "sPrefs":Landroid/content/SharedPreferences;
    invoke-virtual {p3}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v7

    .line 2024
    .local v7, "languageCode":Ljava/lang/String;
    new-instance v9, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v9, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2025
    .local v9, "languageListPref":Landroid/preference/Preference;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2027
    .local v4, "defaultValue":Ljava/lang/String;
    const-string v0, "ko"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2028
    const/4 v8, 0x0

    .line 2029
    .local v8, "languageListListPref":Landroid/preference/ListPreference;
    const/4 v5, -0x1

    .line 2030
    .local v5, "entryId":I
    const/4 v6, -0x1

    .line 2032
    .local v6, "entryIdValue":I
    const v5, 0x7f070021

    .line 2033
    const v6, 0x7f070022

    .line 2034
    invoke-virtual {p3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->createLanguageListDialogPref(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)Landroid/preference/ListPreference;

    move-result-object v8

    .line 2039
    if-eqz v8, :cond_0

    .line 2040
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2041
    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2042
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2066
    .end local v5    # "entryId":I
    .end local v6    # "entryIdValue":I
    .end local v8    # "languageListListPref":Landroid/preference/ListPreference;
    :cond_0
    :goto_0
    return-void

    .line 2045
    :cond_1
    if-eqz v9, :cond_0

    .line 2046
    invoke-virtual {v9, p2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 2047
    invoke-virtual {p3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2048
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 2049
    invoke-virtual {v9, p4}, Landroid/preference/Preference;->setOrder(I)V

    .line 2050
    const-string v0, "ko"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v0, :cond_3

    const-string v0, "tr"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vi"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ja"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "zh"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "de"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2062
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onLanguageItemClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 2064
    :cond_3
    invoke-virtual {p1, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addLanguageListPreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V
    .locals 14
    .param p1, "languageSettingCategory"    # Landroid/preference/PreferenceCategory;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "language"    # Lcom/diotek/ime/framework/common/Language;
    .param p4, "order"    # I

    .prologue
    .line 1942
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v2, "com.sec.android.inputmethod_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1943
    .local v11, "sPrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p3 .. p3}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    .line 1944
    .local v8, "languageCode":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1945
    .local v9, "languageListListPref":Landroid/preference/ListPreference;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1946
    .local v5, "defaultValue":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1947
    .local v6, "entryId":I
    const/4 v7, -0x1

    .line 1949
    .local v7, "entryIdValue":I
    const-string v1, "ko"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    if-eqz v1, :cond_5

    .line 1950
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1951
    const v6, 0x7f070021

    .line 1952
    const v7, 0x7f070022

    .line 1998
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-ne v6, v1, :cond_10

    .line 1999
    new-instance v10, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v10, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2000
    .local v10, "languageListPref":Landroid/preference/Preference;
    if-eqz v10, :cond_2

    .line 2001
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 2002
    invoke-virtual/range {p3 .. p3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2003
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 2004
    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 2005
    invoke-virtual {p1, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2013
    .end local v10    # "languageListPref":Landroid/preference/Preference;
    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    .line 2014
    invoke-virtual {p1, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2015
    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2016
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v9, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2018
    :cond_3
    return-void

    .line 1954
    :cond_4
    const v6, 0x7f07001f

    .line 1955
    const v7, 0x7f070020

    goto :goto_0

    .line 1957
    :cond_5
    const-string v1, "tr"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_6

    .line 1958
    const v6, 0x7f070015

    .line 1959
    const v7, 0x7f070016

    goto :goto_0

    .line 1960
    :cond_6
    const-string v1, "vi"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_7

    .line 1961
    const v6, 0x7f070012

    .line 1962
    const v7, 0x7f070014

    goto :goto_0

    .line 1963
    :cond_7
    const-string v1, "ja"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_8

    .line 1964
    const v6, 0x7f070017

    .line 1965
    const v7, 0x7f070018

    goto :goto_0

    .line 1966
    :cond_8
    const-string v1, "zh"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-nez v1, :cond_9

    .line 1967
    const v6, 0x7f070019

    .line 1968
    const v7, 0x7f07001a

    goto/16 :goto_0

    .line 1969
    :cond_9
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "de"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1970
    const v6, 0x7f07001b

    .line 1971
    const v7, 0x7f07001c

    goto/16 :goto_0

    .line 1972
    :cond_a
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "bg"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1973
    const v6, 0x7f07001d

    .line 1974
    const v7, 0x7f07001e

    goto/16 :goto_0

    .line 1975
    :cond_b
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-nez v1, :cond_e

    const-string v1, "lo"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "km"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phonepad_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1977
    .local v12, "xmlFileName":Ljava/lang/String;
    const/4 v13, -0x1

    .line 1978
    .local v13, "xmlId":I
    const-string v1, "xh"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "zu"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1979
    :cond_c
    const-string v12, "phonepad_en"

    .line 1982
    :cond_d
    :try_start_0
    invoke-static {v12}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1983
    const v6, 0x7f070010

    .line 1984
    const v7, 0x7f070011

    goto/16 :goto_0

    .line 1988
    .end local v12    # "xmlFileName":Ljava/lang/String;
    .end local v13    # "xmlId":I
    :cond_e
    const-string v1, "lo"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "km"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_f
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v1, :cond_1

    .line 1989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phonepad_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1990
    .restart local v12    # "xmlFileName":Ljava/lang/String;
    const/4 v13, -0x1

    .line 1992
    .restart local v13    # "xmlId":I
    :try_start_1
    invoke-static {v12}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    goto/16 :goto_0

    .line 2008
    .end local v12    # "xmlFileName":Ljava/lang/String;
    .end local v13    # "xmlId":I
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->createLanguageListDialogPref(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)Landroid/preference/ListPreference;

    move-result-object v9

    goto/16 :goto_1

    .line 1985
    .restart local v12    # "xmlFileName":Ljava/lang/String;
    .restart local v13    # "xmlId":I
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 1993
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V
    .locals 1
    .param p1, "languageSettingCategory"    # Landroid/preference/PreferenceCategory;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "language"    # Lcom/diotek/ime/framework/common/Language;
    .param p4, "order"    # I

    .prologue
    .line 1930
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    if-eqz v0, :cond_0

    .line 1933
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguageActivityPreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V

    .line 1938
    :goto_0
    return-void

    .line 1936
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguageListPreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V

    goto :goto_0
.end method

.method private areAllLanguagesDisable()Z
    .locals 18

    .prologue
    .line 2162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 2163
    .local v12, "sharedPref":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v13

    .line 2164
    .local v13, "supported":[Lcom/diotek/ime/framework/common/Language;
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v10

    .line 2165
    .local v10, "selected":[Lcom/diotek/ime/framework/common/Language;
    array-length v14, v10

    new-array v11, v14, [Ljava/lang/String;

    .line 2166
    .local v11, "selectedPrefKey":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2167
    .local v7, "languageID":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2168
    .local v8, "languageListKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2169
    .local v1, "defaultValue":Z
    const/4 v5, 0x1

    .line 2171
    .local v5, "isNoSelected":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v14, v13

    if-ge v4, v14, :cond_3

    .line 2172
    const-string v14, "0x%08x"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v13, v4

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2173
    const/4 v14, 0x0

    invoke-interface {v12, v7, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 2174
    .local v6, "isSelected":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget-object v15, v13, v4

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    .line 2175
    if-eqz v6, :cond_2

    .line 2176
    const/4 v5, 0x0

    .line 2177
    aget-object v14, v13, v4

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2178
    const/4 v14, 0x0

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2182
    :goto_2
    if-eqz v1, :cond_2

    .line 2183
    const/4 v14, 0x0

    .line 2213
    .end local v6    # "isSelected":Z
    :goto_3
    return v14

    .line 2163
    .end local v1    # "defaultValue":Z
    .end local v4    # "i":I
    .end local v5    # "isNoSelected":Z
    .end local v7    # "languageID":Ljava/lang/String;
    .end local v8    # "languageListKey":Ljava/lang/String;
    .end local v10    # "selected":[Lcom/diotek/ime/framework/common/Language;
    .end local v11    # "selectedPrefKey":[Ljava/lang/String;
    .end local v13    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v13

    goto :goto_0

    .line 2180
    .restart local v1    # "defaultValue":Z
    .restart local v4    # "i":I
    .restart local v5    # "isNoSelected":Z
    .restart local v6    # "isSelected":Z
    .restart local v7    # "languageID":Ljava/lang/String;
    .restart local v8    # "languageListKey":Ljava/lang/String;
    .restart local v10    # "selected":[Lcom/diotek/ime/framework/common/Language;
    .restart local v11    # "selectedPrefKey":[Ljava/lang/String;
    .restart local v13    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_1
    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_2

    .line 2171
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2187
    .end local v6    # "isSelected":Z
    :cond_3
    if-eqz v5, :cond_6

    .line 2188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    .line 2189
    .local v9, "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14, v9}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    .line 2190
    invoke-virtual {v9}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2191
    const/4 v14, 0x0

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2196
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v15

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v14

    if-nez v14, :cond_4

    .line 2197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v3

    .line 2198
    .local v3, "englishLanguage":Lcom/diotek/ime/framework/common/Language;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14, v3}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    .line 2199
    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2202
    .end local v3    # "englishLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_4
    if-eqz v1, :cond_6

    .line 2203
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2204
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, v8, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2205
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2206
    const/4 v14, 0x0

    goto :goto_3

    .line 2193
    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_5
    const/4 v14, 0x1

    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_4

    .line 2210
    .end local v9    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_6
    if-eqz v1, :cond_7

    .line 2211
    const/4 v14, 0x0

    goto :goto_3

    .line 2213
    :cond_7
    const/4 v14, 0x1

    goto :goto_3
.end method

.method private changeSwipe(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 861
    instance-of v0, p1, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 864
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 866
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 868
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 872
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 873
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 876
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0

    .line 878
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 879
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 880
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 881
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 882
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 884
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0

    .line 886
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->selectOption()V

    .line 888
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mNoneSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 889
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mContinuousInputSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 890
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mCursorControllSwipe:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    .line 892
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mFlickUmlaut:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private createLanguageListDialogPref(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "order"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "entryId"    # I
    .param p6, "entryValueId"    # I

    .prologue
    .line 1910
    new-instance v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 1911
    .local v0, "languageListListPref":Landroid/preference/ListPreference;
    if-eqz v0, :cond_0

    .line 1912
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1914
    invoke-virtual {v0, p3}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 1915
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1916
    invoke-virtual {v0, p4}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 1917
    invoke-virtual {v0, p5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1918
    invoke-virtual {v0, p6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1923
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOrder(I)V

    .line 1925
    :cond_0
    return-object v0
.end method

.method private createLanguageListPreference()V
    .locals 22

    .prologue
    .line 2069
    const/4 v8, 0x0

    .line 2070
    .local v8, "languageListKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v17

    .line 2071
    .local v17, "supported":[Lcom/diotek/ime/framework/common/Language;
    :goto_0
    const/4 v7, 0x0

    .line 2072
    .local v7, "languageID":Ljava/lang/String;
    const/4 v12, -0x1

    .line 2074
    .local v12, "order":I
    const-string v18, "SETTINGS_INPUT_LANGUAGES"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 2075
    .local v9, "languageSettingCategory":Landroid/preference/PreferenceCategory;
    if-nez v9, :cond_1

    .line 2130
    :goto_1
    return-void

    .line 2070
    .end local v7    # "languageID":Ljava/lang/String;
    .end local v9    # "languageSettingCategory":Landroid/preference/PreferenceCategory;
    .end local v12    # "order":I
    .end local v17    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v17

    goto :goto_0

    .line 2077
    .restart local v7    # "languageID":Ljava/lang/String;
    .restart local v9    # "languageSettingCategory":Landroid/preference/PreferenceCategory;
    .restart local v12    # "order":I
    .restart local v17    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_1
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const-string v19, "com.sec.android.inputmethod_preferences"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 2081
    .local v13, "sPrefs":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_3

    .line 2082
    const-string v18, "0x%08x"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v17, v5

    invoke-virtual/range {v21 .. v21}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2083
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v7, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 2084
    .local v6, "isSelected":Z
    if-eqz v6, :cond_2

    .line 2085
    add-int/lit8 v12, v12, 0x1

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    aget-object v19, v17, v5

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    .line 2090
    aget-object v18, v17, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v8, v1, v12}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V

    .line 2081
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2092
    .end local v6    # "isSelected":Z
    :cond_3
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_4

    .line 2093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v10

    .line 2094
    .local v10, "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    if-eqz v10, :cond_4

    .line 2095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    .line 2096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v15

    .line 2097
    .local v15, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 2098
    .local v16, "spEditor":Landroid/content/SharedPreferences$Editor;
    const-string v18, "0x%08x"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2099
    .local v11, "localeLanguageID":Ljava/lang/String;
    const-string v18, "default_keyboard_language"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2100
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v18

    if-nez v18, :cond_5

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v4

    .line 2104
    .local v4, "englishLanguageListKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v9, v4, v1, v2}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V

    .line 2105
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2106
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v8, v10, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V

    .line 2107
    const-string v18, "SETTINGS_INPUT_DEFALUT_LANGUAGE"

    move-object/from16 v0, v18

    invoke-interface {v3, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2108
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2118
    .end local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "englishLanguageListKey":Ljava/lang/String;
    .end local v10    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    .end local v11    # "localeLanguageID":Ljava/lang/String;
    .end local v15    # "sp":Landroid/content/SharedPreferences;
    .end local v16    # "spEditor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    :goto_3
    new-instance v14, Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2119
    .local v14, "selectInputLanguagePref":Landroid/preference/Preference;
    const v18, 0x7f0d02d5

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 2120
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 2121
    const-string v18, "select_swiftkey_language_list"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 2122
    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.diotek.ime.implement.setting.SWIFTKEY_LANGUAGES_SETTINGS"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 2127
    :goto_4
    const/16 v18, 0x3e8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 2128
    const v18, 0x7f020a4e

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 2129
    invoke-virtual {v9, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 2110
    .end local v14    # "selectInputLanguagePref":Landroid/preference/Preference;
    .restart local v10    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    .restart local v11    # "localeLanguageID":Ljava/lang/String;
    .restart local v15    # "sp":Landroid/content/SharedPreferences;
    .restart local v16    # "spEditor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2111
    .restart local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v8, v10, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->addLanguagePreferenceItem(Landroid/preference/PreferenceCategory;Ljava/lang/String;Lcom/diotek/ime/framework/common/Language;I)V

    .line 2112
    const-string v18, "SETTINGS_INPUT_DEFALUT_LANGUAGE"

    move-object/from16 v0, v18

    invoke-interface {v3, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2113
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 2124
    .end local v3    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    .end local v11    # "localeLanguageID":Ljava/lang/String;
    .end local v15    # "sp":Landroid/content/SharedPreferences;
    .end local v16    # "spEditor":Landroid/content/SharedPreferences$Editor;
    .restart local v14    # "selectInputLanguagePref":Landroid/preference/Preference;
    :cond_6
    const-string v18, "select_language_list"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 2125
    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.diotek.ime.implement.setting.AC_LANGUAGES_SETTINGS"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private getAutoReplacementSelectedLanguages()Ljava/lang/String;
    .locals 15

    .prologue
    .line 2430
    const/4 v3, 0x1

    .line 2431
    .local v3, "isNoSelected":Z
    const/4 v6, 0x0

    .line 2432
    .local v6, "languageListKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2433
    .local v5, "languageID":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2434
    .local v10, "supported":[Lcom/diotek/ime/framework/common/Language;
    const/4 v0, 0x0

    .line 2435
    .local v0, "defaultValue":Z
    const-string v8, ""

    .line 2436
    .local v8, "message":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v12, "com.sec.android.inputmethod_preferences"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 2437
    .local v9, "sPrefs":Landroid/content/SharedPreferences;
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v10

    .line 2438
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v11, v10

    if-ge v2, v11, :cond_5

    .line 2440
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v11

    if-nez v11, :cond_2

    aget-object v11, v10, v2

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2438
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2437
    .end local v2    # "i":I
    :cond_1
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v10

    goto :goto_0

    .line 2444
    .restart local v2    # "i":I
    :cond_2
    aget-object v11, v10, v2

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ja"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    aget-object v11, v10, v2

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zh"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2448
    const-string v11, "0x%08x"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-object v14, v10, v2

    invoke-virtual {v14}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2449
    const/4 v11, 0x0

    invoke-interface {v9, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2450
    .local v4, "isSelected":Z
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget-object v12, v10, v2

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v6

    .line 2451
    if-eqz v4, :cond_0

    .line 2452
    const/4 v3, 0x0

    .line 2453
    aget-object v11, v10, v2

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2454
    const/4 v11, 0x0

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2458
    :goto_3
    if-eqz v0, :cond_0

    .line 2460
    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2461
    aget-object v11, v10, v2

    invoke-virtual {v11}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 2456
    :cond_3
    const/4 v11, 0x1

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_3

    .line 2463
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v2

    invoke-virtual {v12}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 2468
    .end local v4    # "isSelected":Z
    :cond_5
    if-eqz v3, :cond_6

    .line 2469
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v7

    .line 2470
    .local v7, "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11, v7}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v6

    .line 2471
    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2472
    const/4 v11, 0x0

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2476
    :goto_4
    if-eqz v0, :cond_b

    .line 2478
    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2479
    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2480
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v11

    if-nez v11, :cond_6

    .line 2481
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    .line 2482
    .local v1, "englishLanguage":Lcom/diotek/ime/framework/common/Language;
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11, v1}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v6

    .line 2483
    const/4 v11, 0x1

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2484
    if-eqz v0, :cond_6

    .line 2485
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2500
    .end local v1    # "englishLanguage":Lcom/diotek/ime/framework/common/Language;
    .end local v7    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_6
    :goto_5
    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_8

    .line 2501
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d020c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2503
    .end local v8    # "message":Ljava/lang/String;
    :cond_8
    return-object v8

    .line 2474
    .restart local v7    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    .restart local v8    # "message":Ljava/lang/String;
    :cond_9
    const/4 v11, 0x1

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    .line 2489
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 2491
    :cond_b
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v11

    if-nez v11, :cond_6

    .line 2492
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    .line 2493
    .restart local v1    # "englishLanguage":Lcom/diotek/ime/framework/common/Language;
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11, v1}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v6

    .line 2494
    const/4 v11, 0x1

    invoke-interface {v9, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2495
    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v0, :cond_6

    .line 2496
    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_5
.end method

.method private getHelpAppIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2292
    .local v0, "startHelpAppIntent":Landroid/content/Intent;
    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2293
    const-string v1, "helphub:section"

    const-string v2, "sip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2299
    :cond_0
    :goto_0
    return-object v0

    .line 2295
    :cond_1
    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 2297
    const-string v1, "helphub:appid"

    const-string v2, "keyboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getHelpAppPackageVersion()I
    .locals 6

    .prologue
    .line 2306
    const/4 v3, 0x1

    .line 2307
    .local v3, "version":I
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_0

    .line 2309
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2310
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 2311
    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2312
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 2313
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2321
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 2316
    :catch_0
    move-exception v0

    .line 2317
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isEnableToRemovePredictionOption()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2238
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPrivateImeOptionsController()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2250
    :cond_0
    :goto_0
    return v1

    .line 2243
    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPrivateImeOptionsController()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    .line 2244
    .local v0, "inputType":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x15

    if-eq v0, v2, :cond_2

    const/16 v2, 0x18

    if-ne v0, v2, :cond_0

    .line 2247
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private registerHelpAppPrefIntent()V
    .locals 2

    .prologue
    .line 2280
    const-string v1, "HELP_INTEGRATION"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2281
    .local v0, "helpappPref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 2282
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getHelpAppIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 2284
    :cond_0
    return-void
.end method

.method private removedPreferenceOnTalkbackEnabled()V
    .locals 5

    .prologue
    .line 2325
    const/4 v2, 0x0

    .line 2326
    .local v2, "pf":Landroid/preference/Preference;
    const/4 v1, 0x0

    .line 2327
    .local v1, "pc":Landroid/preference/PreferenceCategory;
    const/4 v3, 0x0

    .line 2328
    .local v3, "ps":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 2330
    .local v0, "cp":Landroid/preference/CheckBoxPreference;
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2331
    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2332
    if-eqz v2, :cond_2

    .line 2333
    const-string v4, "SETTINGS_SMART_TYPING"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pc":Landroid/preference/PreferenceCategory;
    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 2334
    .restart local v1    # "pc":Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_2

    .line 2335
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2337
    const-string v4, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2338
    if-eqz v2, :cond_0

    .line 2339
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 2341
    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2343
    const-string v4, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2344
    .restart local v0    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_1

    .line 2345
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2348
    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isSupportSpaceLanguageChange()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2349
    const-string v4, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2350
    .restart local v0    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_2

    .line 2351
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2359
    :cond_2
    const-string v4, "SETTINGS_SMART_TYPING"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pc":Landroid/preference/PreferenceCategory;
    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 2360
    .restart local v1    # "pc":Landroid/preference/PreferenceCategory;
    const-string v4, "settings_keyboard_swipe"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2361
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 2362
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2364
    :cond_3
    const-string v4, "SETTINGS_SHORTCUT_PHRASE"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2365
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 2366
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2368
    :cond_4
    const-string v4, "settings_key_tap_feedback"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pc":Landroid/preference/PreferenceCategory;
    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 2369
    .restart local v1    # "pc":Landroid/preference/PreferenceCategory;
    const-string v4, "SETTINGS_DEFAULT_HOLD_DELAY"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2370
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 2371
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2381
    :cond_5
    return-void
.end method

.method private setSummaryForPredictiveText()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2384
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v3, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2385
    .local v0, "sPrefs":Landroid/content/SharedPreferences;
    const-string v2, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2386
    .local v1, "usePredictiveText":Z
    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setSummaryForPredictiveText(Z)V

    .line 2387
    return-void
.end method

.method private setSummaryForPredictiveText(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2390
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v3, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2391
    .local v1, "sPrefs":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 2392
    .local v0, "pf":Landroid/preference/Preference;
    const-string v2, "settings_keyboard_swipe"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2393
    if-eqz v0, :cond_0

    .line 2394
    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2395
    const v2, 0x7f0d007b

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 2404
    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    .line 2405
    const-string v2, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2406
    if-eqz v0, :cond_1

    .line 2407
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getAutoReplacementSelectedLanguages()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2409
    :cond_1
    const-string v2, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2410
    if-eqz v0, :cond_2

    .line 2411
    const v2, 0x7f0d005c

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 2427
    :cond_2
    :goto_1
    return-void

    .line 2396
    :cond_3
    const-string v2, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2397
    const v2, 0x7f0d0081

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 2398
    :cond_4
    const-string v2, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2399
    const v2, 0x7f0d0084

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 2401
    :cond_5
    const v2, 0x7f0d02d9

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 2414
    :cond_6
    const-string v2, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2415
    if-eqz v0, :cond_7

    .line 2416
    const v2, 0x7f0d020b

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 2418
    :cond_7
    const-string v2, "SETTINGS_DEFAULT_AUTO_SPACING"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2419
    if-eqz v0, :cond_2

    .line 2420
    const v2, 0x7f0d005d

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method private showAutoReplacementGuideDialogToEnalbe()V
    .locals 4

    .prologue
    .line 2217
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2218
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const/high16 v3, 0x7f0e0000

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2220
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2221
    const v1, 0x7f0d0207

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2222
    const v1, 0x7f0d020a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2223
    const v1, 0x7f0d0116

    new-instance v2, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$44;

    invoke-direct {v2, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$44;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2233
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2235
    .end local v0    # "Dialog":Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 829
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 830
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 831
    .local v4, "middle":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 832
    .local v6, "sideWeight":I
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 834
    :try_start_0
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    .line 835
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 836
    .local v5, "parent":Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 837
    .local v3, "index":I
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 838
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 839
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 840
    .local v1, "childmiddle":Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f0800aa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 841
    .local v0, "childleft":Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f0800ab

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 842
    .local v2, "childright":Landroid/view/View;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020a4b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 844
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 847
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .end local v0    # "childleft":Landroid/view/View;
    .end local v1    # "childmiddle":Landroid/view/View;
    .end local v2    # "childright":Landroid/view/View;
    .end local v3    # "index":I
    .end local v5    # "parent":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 848
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 35
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    .line 156
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const/4 v14, 0x0

    .line 159
    .local v14, "localeLanguageCode":I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/diotek/ime/framework/util/Utils;->isKNOX(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_21

    .line 165
    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Lcom/diotek/ime/framework/repository/InputStatus;->setKNOXStatus(Z)V

    .line 170
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v8

    .line 174
    .local v8, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v8}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mEmergencyMode:Z

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v31, v0

    const-string v32, "com.sec.android.inputmethod_preferences"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 178
    .local v23, "sPrefs":Landroid/content/SharedPreferences;
    const-string v31, "da_mode"

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsDaMode:Z

    .line 179
    const-string v31, "support_hwr_mode"

    const/16 v32, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 181
    .local v27, "supportHwr":Z
    const/16 v29, 0x1

    .line 182
    .local v29, "useHwrMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v22

    .line 184
    .local v22, "repository":Lcom/diotek/ime/framework/repository/Repository;
    if-eqz v22, :cond_1

    .line 185
    const-string v31, "USE_HWR_MODE"

    const/16 v32, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v29

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    .line 187
    const-string v31, "TABLET_MODE"

    const/16 v32, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misUseSplitFloatingKeyboard:Z

    .line 190
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsEnablePredictiveTextGuide:Z

    .line 191
    const-string v31, "INPUT_LANGUAGE"

    const v32, 0x656e4742

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    .line 192
    .local v11, "language":I
    const/high16 v31, -0x10000

    and-int v31, v31, v11

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v13

    .line 194
    .local v13, "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v31

    const/high16 v32, -0x10000

    and-int v14, v31, v32

    .line 196
    .end local v11    # "language":I
    .end local v13    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsDaMode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_23

    .line 197
    if-eqz v27, :cond_2

    if-nez v29, :cond_22

    .line 198
    :cond_2
    const v31, 0x7f03006b

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 230
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->dismissAllDialog()V

    .line 233
    .end local v22    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    .end local v23    # "sPrefs":Landroid/content/SharedPreferences;
    .end local v27    # "supportHwr":Z
    .end local v29    # "useHwrMode":Z
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getHelpAppPackageVersion()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mHelpAppPackageVersion:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_29

    const/16 v31, 0x0

    :goto_2
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKeypadGuideInHelpApp:Z

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->registerHelpAppPrefIntent()V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    .line 240
    .local v3, "bar":Landroid/app/ActionBar;
    if-eqz v3, :cond_4

    .line 241
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 242
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 245
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v31

    const/16 v32, 0x400

    const/16 v33, 0x400

    invoke-virtual/range {v31 .. v33}, Landroid/view/Window;->setFlags(II)V

    .line 249
    :cond_5
    const/16 v26, 0x0

    .line 250
    .local v26, "sp":Landroid/preference/SwitchPreference;
    const/16 v18, 0x0

    .line 251
    .local v18, "pf":Landroid/preference/Preference;
    const-string v31, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 252
    if-eqz v18, :cond_6

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseXt9ChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 274
    :cond_6
    const-string v31, "SETTINGS_SHORTCUT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 275
    if-eqz v18, :cond_7

    .line 276
    const-string v31, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    .line 277
    .local v17, "pc":Landroid/preference/PreferenceCategory;
    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    .end local v17    # "pc":Landroid/preference/PreferenceCategory;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v31, v0

    const/high16 v32, 0x7a680000

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v31, v0

    const/high16 v32, 0x6a610000

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 282
    :cond_8
    const-string v31, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 283
    if-eqz v18, :cond_9

    .line 284
    const/16 v31, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 288
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->removedPreferenceOnTalkbackEnabled()V

    .line 290
    const-string v31, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 291
    if-eqz v18, :cond_b

    .line 292
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Sip_DisableAutoCorrection"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_2a

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 295
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v31, v0

    if-eqz v31, :cond_a

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onAutoReplacementChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 298
    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Sip_ApplyAutoCorrectionPatent"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 299
    const v31, 0x7f0d0209

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 309
    :cond_b
    :goto_3
    const-string v31, "SETTINGS_SHORTCUT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 310
    if-eqz v18, :cond_c

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onShortCutPhraseClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 323
    :cond_c
    const-string v31, "settings_keyboard_swipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 324
    if-eqz v18, :cond_d

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKeyboardSwipeClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 377
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v31, v0

    if-nez v31, :cond_e

    .line 378
    const-string v31, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 379
    if-eqz v18, :cond_e

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v31, v0

    if-eqz v31, :cond_e

    .line 380
    const-string v31, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    .end local v26    # "sp":Landroid/preference/SwitchPreference;
    check-cast v26, Landroid/preference/SwitchPreference;

    .line 381
    .restart local v26    # "sp":Landroid/preference/SwitchPreference;
    if-eqz v26, :cond_e

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseHwrClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 388
    :cond_e
    const-string v31, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 389
    if-eqz v18, :cond_f

    .line 390
    const-string v31, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    .line 391
    .local v19, "pfCateory":Landroid/preference/PreferenceCategory;
    if-eqz v19, :cond_f

    .line 392
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 402
    .end local v19    # "pfCateory":Landroid/preference/PreferenceCategory;
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Sip_DisableMenuKeyboardSwipe"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_10

    .line 404
    :cond_10
    const-string v31, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 405
    .local v5, "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_11

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 407
    .local v20, "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v20, :cond_11

    .line 408
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    .end local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKeypadGuideInHelpApp:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2b

    .line 423
    const-string v31, "tutorial"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 424
    if-eqz v18, :cond_13

    .line 425
    const-string v31, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    .line 426
    .restart local v19    # "pfCateory":Landroid/preference/PreferenceCategory;
    if-eqz v19, :cond_12

    .line 427
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    :cond_12
    const-string v31, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 431
    if-eqz v19, :cond_13

    .line 432
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    .end local v19    # "pfCateory":Landroid/preference/PreferenceCategory;
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2d

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isSupportSpaceLanguageChange()Z

    move-result v31

    if-eqz v31, :cond_2d

    .line 458
    const-string v31, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 459
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_14

    .line 460
    new-instance v31, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$5;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$5;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 501
    :cond_14
    :goto_5
    const-string v31, "SETTINGS_DEFAULT_PEN_DETECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 502
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_15

    .line 503
    const-string v31, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    .line 504
    .restart local v19    # "pfCateory":Landroid/preference/PreferenceCategory;
    if-eqz v19, :cond_15

    .line 505
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 541
    .end local v19    # "pfCateory":Landroid/preference/PreferenceCategory;
    :cond_15
    const-string v31, "SETTINGS_DEFAULT_ONE_HAND"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 542
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_16

    .line 543
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 544
    .restart local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v20, :cond_16

    .line 545
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 560
    .end local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v31, v0

    const/high16 v32, 0x6a610000

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_17

    .line 561
    const-string v31, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 562
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_17

    .line 563
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 564
    .restart local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v20, :cond_17

    .line 565
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 570
    .end local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v31, v0

    const/high16 v32, 0x74720000

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2e

    .line 571
    const-string v31, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    .line 572
    .local v15, "lp":Landroid/preference/ListPreference;
    if-eqz v15, :cond_18

    .line 573
    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onTurkishInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 586
    :cond_18
    :goto_6
    const-string v31, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .end local v15    # "lp":Landroid/preference/ListPreference;
    check-cast v15, Landroid/preference/ListPreference;

    .line 587
    .restart local v15    # "lp":Landroid/preference/ListPreference;
    if-eqz v15, :cond_19

    .line 588
    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 592
    :cond_19
    const-string v31, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .end local v15    # "lp":Landroid/preference/ListPreference;
    check-cast v15, Landroid/preference/ListPreference;

    .line 593
    .restart local v15    # "lp":Landroid/preference/ListPreference;
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v31

    if-eqz v31, :cond_2f

    .line 594
    if-eqz v15, :cond_1a

    .line 595
    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onNumberSymbolInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 607
    :cond_1a
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1c

    .line 608
    const-string v31, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .end local v15    # "lp":Landroid/preference/ListPreference;
    check-cast v15, Landroid/preference/ListPreference;

    .line 609
    .restart local v15    # "lp":Landroid/preference/ListPreference;
    if-eqz v15, :cond_1b

    .line 610
    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onKorInputMethodPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 614
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1c

    .line 615
    const-string v31, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 616
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_1c

    .line 617
    new-instance v31, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$8;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$8;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 638
    :cond_1c
    const-string v31, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 639
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_1d

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUsePointingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 643
    :cond_1d
    const-string v31, "SETTINGS_DEFAULT_TRACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 644
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_1e

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v31, v0

    const/high16 v32, 0x6a610000

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_30

    .line 646
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 647
    .restart local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v20, :cond_1e

    .line 648
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 655
    .end local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_1e
    :goto_8
    const-string v31, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 656
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_1f

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseSweepingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 660
    :cond_1f
    const-string v31, "settings_keyboard_swipe_cursor_control"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    .line 662
    .local v21, "rb":Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
    const-string v31, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .end local v21    # "rb":Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
    check-cast v21, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    .line 663
    .restart local v21    # "rb":Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
    if-eqz v21, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    if-eqz v31, :cond_34

    .line 664
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v31, v0

    if-eqz v31, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v28

    .line 665
    .local v28, "supported":[Lcom/diotek/ime/framework/common/Language;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v31, v0

    const-string v32, "com.sec.android.inputmethod_preferences"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 666
    .restart local v23    # "sPrefs":Landroid/content/SharedPreferences;
    const/4 v12, 0x0

    .line 667
    .local v12, "languageID":Ljava/lang/String;
    const/16 v16, -0x1

    .line 668
    .local v16, "order":I
    const/16 v24, -0x1

    .line 669
    .local v24, "selectedIndex":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    .line 670
    .local v7, "currentLanguageInSettings":I
    const/16 v25, -0x1

    .line 671
    .local v25, "selectedLanguageId":I
    const/4 v6, 0x0

    .line 672
    .local v6, "currentLanguageExist":Z
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v9, v31, -0x1

    .local v9, "i":I
    :goto_a
    if-ltz v9, :cond_32

    .line 673
    const-string v31, "0x%08x"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-object v34, v28, v9

    invoke-virtual/range {v34 .. v34}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 674
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-interface {v0, v12, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 675
    .local v10, "isSelected":Z
    if-eqz v10, :cond_20

    .line 676
    add-int/lit8 v16, v16, 0x1

    .line 677
    move/from16 v24, v9

    .line 678
    aget-object v31, v28, v9

    invoke-virtual/range {v31 .. v31}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v31

    const/high16 v32, -0x10000

    and-int v25, v31, v32

    .line 679
    if-nez v6, :cond_20

    move/from16 v0, v25

    if-ne v7, v0, :cond_20

    .line 680
    const/4 v6, 0x1

    .line 672
    :cond_20
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    .line 167
    .end local v3    # "bar":Landroid/app/ActionBar;
    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v6    # "currentLanguageExist":Z
    .end local v7    # "currentLanguageInSettings":I
    .end local v8    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v9    # "i":I
    .end local v10    # "isSelected":Z
    .end local v12    # "languageID":Ljava/lang/String;
    .end local v15    # "lp":Landroid/preference/ListPreference;
    .end local v16    # "order":I
    .end local v18    # "pf":Landroid/preference/Preference;
    .end local v21    # "rb":Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
    .end local v23    # "sPrefs":Landroid/content/SharedPreferences;
    .end local v24    # "selectedIndex":I
    .end local v25    # "selectedLanguageId":I
    .end local v26    # "sp":Landroid/preference/SwitchPreference;
    .end local v28    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_21
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Lcom/diotek/ime/framework/repository/InputStatus;->setKNOXStatus(Z)V

    goto/16 :goto_0

    .line 200
    .restart local v8    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v22    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    .restart local v23    # "sPrefs":Landroid/content/SharedPreferences;
    .restart local v27    # "supportHwr":Z
    .restart local v29    # "useHwrMode":Z
    :cond_22
    const v31, 0x7f03006a

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 202
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v31, v0

    if-eqz v31, :cond_25

    if-nez v29, :cond_25

    .line 204
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v31, v0

    if-eqz v31, :cond_24

    .line 206
    const v31, 0x7f030062

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 208
    :cond_24
    const v31, 0x7f030061

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 213
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v31, v0

    if-eqz v31, :cond_27

    .line 215
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v31, v0

    if-eqz v31, :cond_26

    .line 217
    const v31, 0x7f030062

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 219
    :cond_26
    const v31, 0x7f030061

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 224
    :cond_27
    const/high16 v31, 0x7a680000

    move/from16 v0, v31

    if-ne v14, v0, :cond_28

    .line 225
    const v31, 0x7f030060

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 227
    :cond_28
    const v31, 0x7f030060

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 234
    .end local v22    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    .end local v23    # "sPrefs":Landroid/content/SharedPreferences;
    .end local v27    # "supportHwr":Z
    .end local v29    # "useHwrMode":Z
    :cond_29
    const/16 v31, 0x1

    goto/16 :goto_2

    .line 302
    .restart local v3    # "bar":Landroid/app/ActionBar;
    .restart local v18    # "pf":Landroid/preference/Preference;
    .restart local v26    # "sp":Landroid/preference/SwitchPreference;
    :cond_2a
    const-string v31, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    .line 303
    .restart local v17    # "pc":Landroid/preference/PreferenceCategory;
    if-eqz v17, :cond_b

    .line 304
    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 437
    .end local v17    # "pc":Landroid/preference/PreferenceCategory;
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    :cond_2b
    const-string v31, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 438
    if-eqz v18, :cond_2c

    .line 439
    const-string v31, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    .line 440
    .restart local v19    # "pfCateory":Landroid/preference/PreferenceCategory;
    if-eqz v19, :cond_2c

    .line 441
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 444
    .end local v19    # "pfCateory":Landroid/preference/PreferenceCategory;
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v31, v0

    if-nez v31, :cond_13

    .line 447
    const-string v31, "tutorial"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 448
    if-eqz v18, :cond_13

    .line 449
    const-string v31, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    .line 450
    .restart local v19    # "pfCateory":Landroid/preference/PreferenceCategory;
    if-eqz v19, :cond_13

    .line 451
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 475
    .end local v19    # "pfCateory":Landroid/preference/PreferenceCategory;
    :cond_2d
    const-string v31, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 476
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_14

    .line 477
    const-string v31, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    .line 478
    .restart local v19    # "pfCateory":Landroid/preference/PreferenceCategory;
    if-eqz v19, :cond_14

    .line 479
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 577
    .end local v19    # "pfCateory":Landroid/preference/PreferenceCategory;
    :cond_2e
    const-string v31, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    .line 578
    .restart local v15    # "lp":Landroid/preference/ListPreference;
    if-eqz v15, :cond_18

    .line 579
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 580
    .restart local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v20, :cond_18

    .line 581
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 599
    .end local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_2f
    if-eqz v15, :cond_1a

    .line 600
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 601
    .restart local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v20, :cond_1a

    .line 602
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 651
    .end local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onUseTraceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_8

    .line 664
    .restart local v21    # "rb":Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v28

    goto/16 :goto_9

    .line 685
    .restart local v6    # "currentLanguageExist":Z
    .restart local v7    # "currentLanguageInSettings":I
    .restart local v9    # "i":I
    .restart local v12    # "languageID":Ljava/lang/String;
    .restart local v16    # "order":I
    .restart local v23    # "sPrefs":Landroid/content/SharedPreferences;
    .restart local v24    # "selectedIndex":I
    .restart local v25    # "selectedLanguageId":I
    .restart local v28    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_32
    const/16 v31, -0x1

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_37

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v13

    .line 687
    .restart local v13    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual {v13}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v31

    const/high16 v32, -0x10000

    and-int v7, v31, v32

    .line 691
    .end local v13    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_33
    :goto_b
    const/high16 v31, 0x6a610000

    move/from16 v0, v31

    if-ne v7, v0, :cond_39

    .line 692
    const/16 v31, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 701
    .end local v6    # "currentLanguageExist":Z
    .end local v7    # "currentLanguageInSettings":I
    .end local v9    # "i":I
    .end local v12    # "languageID":Ljava/lang/String;
    .end local v16    # "order":I
    .end local v23    # "sPrefs":Landroid/content/SharedPreferences;
    .end local v24    # "selectedIndex":I
    .end local v25    # "selectedLanguageId":I
    .end local v28    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_34
    :goto_c
    const-string v31, "SETTINGS_VIETNAMESE_INPUT_METHOD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/ListPreference;

    .line 702
    .local v30, "vietnameseInputModePrf":Landroid/preference/ListPreference;
    if-eqz v30, :cond_36

    .line 703
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    move/from16 v31, v0

    const/high16 v32, 0x76690000

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_35

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingVietnameseTelex()Z

    move-result v31

    if-nez v31, :cond_36

    .line 704
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 705
    .restart local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v20, :cond_36

    .line 706
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 711
    .end local v20    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_36
    new-instance v31, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v32, 0x7f0d0081

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d0083

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d0116

    new-instance v33, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$11;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$11;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v33}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d01d1

    new-instance v33, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$10;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$10;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v33}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$9;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$9;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->pointingDialog:Landroid/app/AlertDialog$Builder;

    .line 736
    new-instance v31, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v32, 0x7f0d007b

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d0080

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d0116

    new-instance v33, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$14;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$14;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v33}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d01d1

    new-instance v33, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$13;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$13;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v33}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$12;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$12;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog:Landroid/app/AlertDialog$Builder;

    .line 762
    new-instance v31, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v32, 0x7f0d007b

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d008d

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d0116

    new-instance v33, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$17;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$17;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v33}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d01d1

    new-instance v33, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$16;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$16;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v33}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$15;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$15;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->traceDialog2:Landroid/app/AlertDialog$Builder;

    .line 788
    new-instance v31, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v32, 0x7f0d0057

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d008c

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d0116

    new-instance v33, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$20;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v33}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0d01d1

    new-instance v33, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$19;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$19;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v33}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    new-instance v32, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$18;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$18;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->swipeDialog:Landroid/app/AlertDialog$Builder;

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 823
    .local v4, "context":Landroid/content/Context;
    const v31, 0x7f0d0056

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;

    .line 825
    return-void

    .line 688
    .end local v4    # "context":Landroid/content/Context;
    .end local v30    # "vietnameseInputModePrf":Landroid/preference/ListPreference;
    .restart local v6    # "currentLanguageExist":Z
    .restart local v7    # "currentLanguageInSettings":I
    .restart local v9    # "i":I
    .restart local v12    # "languageID":Ljava/lang/String;
    .restart local v16    # "order":I
    .restart local v23    # "sPrefs":Landroid/content/SharedPreferences;
    .restart local v24    # "selectedIndex":I
    .restart local v25    # "selectedLanguageId":I
    .restart local v28    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_37
    if-eqz v16, :cond_38

    if-nez v6, :cond_33

    .line 689
    :cond_38
    aget-object v31, v28, v24

    invoke-virtual/range {v31 .. v31}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v31

    const/high16 v32, -0x10000

    and-int v7, v31, v32

    goto/16 :goto_b

    .line 694
    :cond_39
    const/16 v31, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 695
    const/high16 v31, 0x7a680000

    move/from16 v0, v31

    if-ne v7, v0, :cond_34

    .line 696
    const/16 v31, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x0

    .line 2522
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2523
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2524
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2525
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 2526
    .local v1, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2527
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2528
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f0d006b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2531
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 856
    const v0, 0x7f030073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    .line 857
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mainView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 1770
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1779
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 1772
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1775
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->getHelpAppIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1776
    .local v0, "helpAppIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1770
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 906
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 907
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 2509
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2510
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2511
    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2512
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 2513
    .local v1, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2514
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2515
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f0d006b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2518
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 47

    .prologue
    .line 911
    invoke-super/range {p0 .. p0}, Landroid/app/Fragment;->onResume()V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v42, v0

    new-instance v43, Landroid/content/IntentFilter;

    const-string v44, "com.sec.android.inputmethod.language_downloaded"

    invoke-direct/range {v43 .. v44}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v41 .. v43}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 913
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    if-nez v41, :cond_0

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 917
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v41

    const-string v42, "INPUT_LANGUAGE"

    const v43, 0x656e4742

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v41

    invoke-static/range {v41 .. v41}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v41

    if-nez v41, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsODDcsc:Z

    move/from16 v41, v0

    if-eqz v41, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->IS_WVGA:Z

    move/from16 v41, v0

    if-nez v41, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->IS_FHD:Z

    move/from16 v41, v0

    if-eqz v41, :cond_4

    .line 925
    :cond_1
    const-string v41, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 926
    .local v13, "inputModePreferenceAlphabet":Landroid/preference/Preference;
    const-string v41, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 927
    .local v14, "inputModePreferenceNumber":Landroid/preference/Preference;
    const-string v41, "Portrait keyboard types"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceGroup;

    .line 928
    .local v12, "inputModeGroupPreference":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    .line 929
    .local v26, "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v26, :cond_4

    .line 930
    if-eqz v13, :cond_2

    .line 931
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 933
    :cond_2
    if-eqz v14, :cond_3

    .line 934
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 936
    :cond_3
    if-eqz v12, :cond_4

    .line 937
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 942
    .end local v12    # "inputModeGroupPreference":Landroid/preference/PreferenceGroup;
    .end local v13    # "inputModePreferenceAlphabet":Landroid/preference/Preference;
    .end local v14    # "inputModePreferenceNumber":Landroid/preference/Preference;
    .end local v26    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    if-eqz v41, :cond_2e

    .line 943
    const-string v41, "SETTINGS_DEFAULT_VOICE_INPUT"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 944
    .local v5, "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_5

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->isVoiceInputSelected()Z

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 948
    :cond_5
    const/16 v16, 0x0

    .line 949
    .local v16, "isEnable":Z
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->createLanguageListPreference()V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    const-string v42, "com.sec.android.inputmethod_preferences"

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 951
    .local v29, "sPrefs":Landroid/content/SharedPreferences;
    const/16 v39, 0x0

    .line 952
    .local v39, "supported":[Lcom/diotek/ime/framework/common/Language;
    const/16 v19, 0x0

    .line 953
    .local v19, "languageID":Ljava/lang/String;
    const/16 v22, -0x1

    .line 954
    .local v22, "order":I
    const/16 v30, -0x1

    .line 955
    .local v30, "selectedIndex":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mLangCode:I

    .line 956
    .local v7, "currentLanguageInSettings":I
    const/16 v32, -0x1

    .line 957
    .local v32, "selectedLanguageId":I
    const/4 v6, 0x0

    .line 959
    .local v6, "currentLanguageExist":Z
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 960
    .local v24, "pf":Landroid/preference/Preference;
    if-eqz v24, :cond_b

    .line 961
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v41, v0

    if-eqz v41, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v39

    .line 962
    :goto_0
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v41, v0

    add-int/lit8 v11, v41, -0x1

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_8

    .line 963
    const-string v41, "0x%08x"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget-object v44, v39, v11

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 964
    const/16 v41, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 965
    .local v18, "isSelected":Z
    if-eqz v18, :cond_6

    .line 966
    add-int/lit8 v22, v22, 0x1

    .line 967
    move/from16 v30, v11

    .line 968
    aget-object v41, v39, v11

    invoke-virtual/range {v41 .. v41}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v41

    const/high16 v42, -0x10000

    and-int v32, v41, v42

    .line 969
    if-nez v6, :cond_6

    move/from16 v0, v32

    if-ne v7, v0, :cond_6

    .line 970
    const/4 v6, 0x1

    .line 962
    :cond_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 961
    .end local v11    # "i":I
    .end local v18    # "isSelected":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v39

    goto :goto_0

    .line 975
    .restart local v11    # "i":I
    :cond_8
    const/16 v41, -0x1

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_17

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageSize()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_9

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v20

    .line 978
    .local v20, "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v41

    const/high16 v42, -0x10000

    and-int v7, v41, v42

    .line 984
    .end local v20    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_9
    :goto_2
    const/high16 v41, 0x7a680000

    move/from16 v0, v41

    if-eq v7, v0, :cond_a

    const/high16 v41, 0x6a610000

    move/from16 v0, v41

    if-ne v7, v0, :cond_1a

    .line 985
    :cond_a
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 986
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v42, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 987
    if-eqz v24, :cond_b

    .line 988
    const/16 v41, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 990
    if-eqz v16, :cond_19

    .line 991
    const v41, 0x7f0d0035

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1012
    .end local v11    # "i":I
    :cond_b
    :goto_3
    const-string v41, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 1013
    if-eqz v24, :cond_c

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v41, v0

    if-eqz v41, :cond_c

    move-object/from16 v37, v24

    .line 1014
    check-cast v37, Landroid/preference/SwitchPreference;

    .line 1015
    .local v37, "sp":Landroid/preference/SwitchPreference;
    const-string v41, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v42, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1016
    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1018
    .end local v37    # "sp":Landroid/preference/SwitchPreference;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v41, v0

    if-nez v41, :cond_d

    .line 1019
    if-eqz v24, :cond_d

    .line 1020
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v42, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1021
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1025
    :cond_d
    const-string v41, "SETTINGS_SHORTCUT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 1026
    const-string v41, "SETTINGS_SHORTCUT_PHRASE"

    const/16 v42, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1027
    if-eqz v24, :cond_e

    .line 1028
    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v41, v0

    if-eqz v41, :cond_1d

    move-object/from16 v37, v24

    .line 1029
    check-cast v37, Landroid/preference/SwitchPreference;

    .line 1030
    .restart local v37    # "sp":Landroid/preference/SwitchPreference;
    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1041
    .end local v37    # "sp":Landroid/preference/SwitchPreference;
    :cond_e
    :goto_4
    const-string v41, "SETTINGS_DEFAULT_AUTO_CAPS"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 1042
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_f

    .line 1043
    const-string v41, "SETTINGS_DEFAULT_AUTO_CAPS"

    const/16 v42, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1044
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1046
    :cond_f
    const-string v41, "SETTINGS_DEFAULT_AUTO_SPACING"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 1047
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_12

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v41

    const/high16 v42, 0x6b6f0000

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I

    move/from16 v41, v0

    const/16 v42, 0x2

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_1f

    .line 1049
    const-string v41, "SETTINGS_SMART_TYPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceCategory;

    .line 1050
    .local v23, "pc":Landroid/preference/PreferenceCategory;
    if-eqz v23, :cond_10

    .line 1051
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1057
    .end local v23    # "pc":Landroid/preference/PreferenceCategory;
    :cond_10
    :goto_5
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 1058
    if-eqz v24, :cond_11

    .line 1059
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 1061
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z

    move/from16 v41, v0

    if-nez v41, :cond_12

    .line 1062
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v42, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1063
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1066
    :cond_12
    const-string v41, "SETTINGS_DEFAULT_AUTO_PERIOD"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 1067
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_13

    .line 1068
    const-string v41, "SETTINGS_DEFAULT_AUTO_PERIOD"

    const/16 v42, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1069
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1092
    :cond_13
    const-string v41, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 1093
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_14

    .line 1094
    const-string v41, "SETTINGS_DEFAULT_USE_PREVIEW"

    const/16 v42, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1095
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1097
    :cond_14
    const-string v41, "SETTINGS_DEFAULT_PEN_DETECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 1098
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_15

    .line 1099
    const-string v41, "SETTINGS_DEFAULT_PEN_DETECTION"

    const/16 v42, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1100
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1102
    :cond_15
    const-string v41, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;

    .line 1103
    .local v27, "rb":Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
    if-eqz v27, :cond_23

    .line 1104
    if-nez v39, :cond_22

    .line 1105
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z

    move/from16 v41, v0

    if-eqz v41, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v39

    .line 1106
    :goto_6
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v41, v0

    add-int/lit8 v11, v41, -0x1

    .restart local v11    # "i":I
    :goto_7
    if-ltz v11, :cond_21

    .line 1107
    const-string v41, "0x%08x"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget-object v44, v39, v11

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 1108
    const/16 v41, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1109
    .restart local v18    # "isSelected":Z
    if-eqz v18, :cond_16

    .line 1110
    add-int/lit8 v22, v22, 0x1

    .line 1111
    move/from16 v30, v11

    .line 1112
    aget-object v41, v39, v11

    invoke-virtual/range {v41 .. v41}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v41

    const/high16 v42, -0x10000

    and-int v32, v41, v42

    .line 1113
    if-nez v6, :cond_16

    move/from16 v0, v32

    if-ne v7, v0, :cond_16

    .line 1114
    const/4 v6, 0x1

    .line 1106
    :cond_16
    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    .line 980
    .end local v18    # "isSelected":Z
    .end local v27    # "rb":Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
    :cond_17
    if-eqz v22, :cond_18

    if-nez v6, :cond_9

    .line 981
    :cond_18
    aget-object v41, v39, v30

    invoke-virtual/range {v41 .. v41}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v41

    const/high16 v42, -0x10000

    and-int v7, v41, v42

    goto/16 :goto_2

    .line 993
    :cond_19
    const v41, 0x7f0d0036

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 998
    :cond_1a
    const/16 v41, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 999
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v42, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1000
    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v41, v0

    if-eqz v41, :cond_1b

    move-object/from16 v37, v24

    .line 1001
    check-cast v37, Landroid/preference/SwitchPreference;

    .line 1002
    .restart local v37    # "sp":Landroid/preference/SwitchPreference;
    move-object/from16 v0, v37

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 1004
    .end local v37    # "sp":Landroid/preference/SwitchPreference;
    :cond_1b
    if-eqz v16, :cond_1c

    .line 1005
    const v41, 0x7f0d0035

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 1007
    :cond_1c
    const v41, 0x7f0d0036

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 1032
    .end local v11    # "i":I
    :cond_1d
    if-eqz v16, :cond_1e

    .line 1033
    const v41, 0x7f0d0035

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    .line 1035
    :cond_1e
    const v41, 0x7f0d0036

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    .line 1054
    :cond_1f
    const-string v41, "SETTINGS_DEFAULT_AUTO_SPACING"

    const/16 v42, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1055
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 1105
    .restart local v27    # "rb":Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v39

    goto/16 :goto_6

    .line 1119
    .restart local v11    # "i":I
    :cond_21
    const/16 v41, -0x1

    move/from16 v0, v22

    move/from16 v1, v41

    if-ne v0, v1, :cond_33

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v20

    .line 1121
    .restart local v20    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v41

    const/high16 v42, -0x10000

    and-int v7, v41, v42

    .line 1126
    .end local v11    # "i":I
    .end local v20    # "localeLanguage":Lcom/diotek/ime/framework/common/Language;
    :cond_22
    :goto_8
    const/high16 v41, 0x6a610000

    move/from16 v0, v41

    if-ne v7, v0, :cond_35

    .line 1127
    const/16 v41, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1144
    :cond_23
    :goto_9
    const-string v41, "SETTINGS_DEFAULT_HOLD_DELAY"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    .line 1145
    .local v10, "holdpref":Landroid/preference/ListPreference;
    if-eqz v10, :cond_26

    .line 1146
    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 1147
    .local v9, "delayText":[Ljava/lang/CharSequence;
    const/16 v41, 0x0

    aget-object v41, v9, v41

    if-eqz v41, :cond_24

    const/16 v41, 0x1

    aget-object v41, v9, v41

    if-eqz v41, :cond_24

    const/16 v41, 0x2

    aget-object v41, v9, v41

    if-eqz v41, :cond_24

    .line 1148
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v41

    const-string v42, "ar"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_38

    .line 1149
    sget-object v41, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    aget-object v44, v9, v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v44

    const-string v45, "%s"

    const-string v46, "\u0660.\u0662"

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    aput-object v44, v9, v43

    aput-object v44, v41, v42

    .line 1150
    sget-object v41, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v42, 0x1

    const/16 v43, 0x1

    const/16 v44, 0x1

    aget-object v44, v9, v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v44

    const-string v45, "%s"

    const-string v46, "\u0660.\u0663"

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    aput-object v44, v9, v43

    aput-object v44, v41, v42

    .line 1151
    sget-object v41, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v42, 0x2

    const/16 v43, 0x2

    const/16 v44, 0x2

    aget-object v44, v9, v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v44

    const-string v45, "%s"

    const-string v46, "\u0660.\u0665"

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    aput-object v44, v9, v43

    aput-object v44, v41, v42

    .line 1158
    :cond_24
    :goto_a
    invoke-virtual {v10, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1159
    const-string v38, ""

    .line 1160
    .local v38, "summary":Ljava/lang/String;
    const-string v41, "SETTINGS_DEFAULT_HOLD_DELAY"

    const-string v42, "settings_hold_delay_medium"

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1161
    .local v31, "selectedKey":Ljava/lang/String;
    const-string v41, "settings_hold_delay_short"

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_39

    .line 1163
    sget-object v41, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v42, 0x0

    aget-object v38, v41, v42

    .end local v38    # "summary":Ljava/lang/String;
    check-cast v38, Ljava/lang/String;

    .line 1164
    .restart local v38    # "summary":Ljava/lang/String;
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1178
    :cond_25
    :goto_b
    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1179
    new-instance v41, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$21;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$21;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1206
    .end local v9    # "delayText":[Ljava/lang/CharSequence;
    .end local v31    # "selectedKey":Ljava/lang/String;
    .end local v38    # "summary":Ljava/lang/String;
    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setSummaryForPredictiveText()V

    .line 1209
    const-string v41, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 1210
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_28

    .line 1211
    const/16 v33, 0x1

    .line 1212
    .local v33, "setEnable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/diotek/ime/framework/util/Utils;->isPowerSavingModeON(Landroid/content/Context;)Z

    move-result v41

    if-nez v41, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/diotek/ime/framework/util/Utils;->isEmergencyModeON(Landroid/content/Context;)Z

    move-result v41

    if-eqz v41, :cond_3c

    .line 1214
    :cond_27
    const/16 v16, 0x0

    .line 1215
    const/16 v33, 0x0

    .line 1223
    :goto_c
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1224
    move/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onVibChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1227
    .end local v33    # "setEnable":Z
    :cond_28
    const-string v41, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 1228
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_2a

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "sip_key_feedback_sound"

    const/16 v43, -0x1

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v41

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_3f

    .line 1231
    if-eqz v29, :cond_29

    .line 1232
    const-string v41, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    const/16 v42, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    if-eqz v41, :cond_3e

    .line 1233
    const/16 v16, 0x1

    .line 1243
    :cond_29
    :goto_d
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onSoundChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1259
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsEnablePredictiveTextGuide:Z

    move/from16 v41, v0

    if-eqz v41, :cond_2b

    .line 1261
    const-string v41, "first_predictive_text_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 1262
    .local v17, "isFirstPredictiveText":Z
    if-eqz v17, :cond_2b

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->showPredictiveTextGuideDialog()V

    .line 1267
    .end local v17    # "isFirstPredictiveText":Z
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/diotek/ime/framework/common/EasyMode;->isDeviceEasyModeOn(Landroid/content/Context;)Z

    move-result v21

    .line 1268
    .local v21, "mState":Z
    if-eqz v21, :cond_2c

    .line 1269
    const-string v41, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 1270
    if-eqz v24, :cond_2c

    .line 1271
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    .line 1272
    .restart local v26    # "pfScreen":Landroid/preference/PreferenceScreen;
    if-eqz v26, :cond_2c

    .line 1273
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1279
    .end local v26    # "pfScreen":Landroid/preference/PreferenceScreen;
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mEmergencyMode:Z

    move/from16 v41, v0

    if-eqz v41, :cond_2d

    .line 1280
    const-string v41, "settings_more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceCategory;

    .line 1281
    .local v25, "pfCateory":Landroid/preference/PreferenceCategory;
    const-string v41, "HELP_INTEGRATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 1282
    if-eqz v25, :cond_2d

    if-eqz v24, :cond_2d

    .line 1283
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1288
    .end local v25    # "pfCateory":Landroid/preference/PreferenceCategory;
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z

    move/from16 v41, v0

    if-eqz v41, :cond_2e

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v34

    .line 1290
    .local v34, "sharedPref":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v41, v0

    const-string v42, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    .line 1291
    .local v8, "defaultBoolean":Z
    const-string v41, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 1292
    .local v40, "useSweeping":Z
    const-string v41, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 1293
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_2e

    .line 1294
    move/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1314
    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v6    # "currentLanguageExist":Z
    .end local v7    # "currentLanguageInSettings":I
    .end local v8    # "defaultBoolean":Z
    .end local v10    # "holdpref":Landroid/preference/ListPreference;
    .end local v16    # "isEnable":Z
    .end local v19    # "languageID":Ljava/lang/String;
    .end local v21    # "mState":Z
    .end local v22    # "order":I
    .end local v24    # "pf":Landroid/preference/Preference;
    .end local v27    # "rb":Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
    .end local v29    # "sPrefs":Landroid/content/SharedPreferences;
    .end local v30    # "selectedIndex":I
    .end local v32    # "selectedLanguageId":I
    .end local v34    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v39    # "supported":[Lcom/diotek/ime/framework/common/Language;
    .end local v40    # "useSweeping":Z
    :cond_2e
    const-string v41, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1315
    .local v3, "autoCorrectionPF":Landroid/preference/Preference;
    if-eqz v3, :cond_2f

    instance-of v0, v3, Landroid/preference/SwitchPreference;

    move/from16 v41, v0

    if-eqz v41, :cond_2f

    move-object v4, v3

    .line 1316
    check-cast v4, Landroid/preference/SwitchPreference;

    .line 1317
    .local v4, "autoCorrectionSP":Landroid/preference/SwitchPreference;
    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v15

    .line 1318
    .local v15, "isChecked":Z
    if-eqz v15, :cond_2f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->areAllLanguagesDisable()Z

    move-result v41

    if-eqz v41, :cond_2f

    .line 1319
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1323
    .end local v4    # "autoCorrectionSP":Landroid/preference/SwitchPreference;
    .end local v15    # "isChecked":Z
    :cond_2f
    const-string v41, "SETTINGS_SHORTCUT_PHRASE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    .line 1324
    .local v35, "shortcutPhrasePF":Landroid/preference/Preference;
    if-eqz v35, :cond_30

    move-object/from16 v0, v35

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v41, v0

    if-eqz v41, :cond_30

    move-object/from16 v36, v35

    .line 1325
    check-cast v36, Landroid/preference/SwitchPreference;

    .line 1326
    .local v36, "shortcutPhraseSP":Landroid/preference/SwitchPreference;
    invoke-virtual/range {v36 .. v36}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v15

    .line 1327
    .restart local v15    # "isChecked":Z
    if-eqz v15, :cond_41

    .line 1328
    const/16 v41, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1332
    .end local v15    # "isChecked":Z
    .end local v36    # "shortcutPhraseSP":Landroid/preference/SwitchPreference;
    :cond_30
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->isEnableToRemovePredictionOption()Z

    move-result v41

    if-eqz v41, :cond_32

    .line 1333
    const/16 v28, 0x0

    .line 1334
    .local v28, "removedPf":Landroid/preference/Preference;
    const/16 v26, 0x0

    .line 1336
    .restart local v26    # "pfScreen":Landroid/preference/PreferenceScreen;
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    .line 1337
    if-eqz v28, :cond_31

    .line 1338
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    .line 1339
    if-eqz v26, :cond_31

    .line 1346
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1350
    :cond_31
    const-string v41, "SETTINGS_DEFAULT_TRACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    .line 1351
    if-eqz v28, :cond_32

    .line 1352
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    .line 1353
    if-eqz v26, :cond_32

    .line 1354
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1358
    .end local v26    # "pfScreen":Landroid/preference/PreferenceScreen;
    .end local v28    # "removedPf":Landroid/preference/Preference;
    :cond_32
    return-void

    .line 1122
    .end local v3    # "autoCorrectionPF":Landroid/preference/Preference;
    .end local v35    # "shortcutPhrasePF":Landroid/preference/Preference;
    .restart local v5    # "cp":Landroid/preference/CheckBoxPreference;
    .restart local v6    # "currentLanguageExist":Z
    .restart local v7    # "currentLanguageInSettings":I
    .restart local v11    # "i":I
    .restart local v16    # "isEnable":Z
    .restart local v19    # "languageID":Ljava/lang/String;
    .restart local v22    # "order":I
    .restart local v24    # "pf":Landroid/preference/Preference;
    .restart local v27    # "rb":Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
    .restart local v29    # "sPrefs":Landroid/content/SharedPreferences;
    .restart local v30    # "selectedIndex":I
    .restart local v32    # "selectedLanguageId":I
    .restart local v39    # "supported":[Lcom/diotek/ime/framework/common/Language;
    :cond_33
    if-eqz v22, :cond_34

    if-nez v6, :cond_22

    .line 1123
    :cond_34
    aget-object v41, v39, v30

    invoke-virtual/range {v41 .. v41}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v41

    const/high16 v42, -0x10000

    and-int v7, v41, v42

    goto/16 :goto_8

    .line 1128
    .end local v11    # "i":I
    :cond_35
    const/high16 v41, 0x7a680000

    move/from16 v0, v41

    if-ne v7, v0, :cond_37

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v41

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_36

    .line 1130
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v42, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1134
    :goto_f
    const-string v41, "settings_keyboard_swipe_none"

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1132
    :cond_36
    const/16 v41, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_f

    .line 1136
    :cond_37
    const/16 v41, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1137
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 1138
    if-eqz v24, :cond_23

    .line 1139
    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1153
    .restart local v9    # "delayText":[Ljava/lang/CharSequence;
    .restart local v10    # "holdpref":Landroid/preference/ListPreference;
    :cond_38
    sget-object v41, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    aget-object v44, v9, v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v44

    const-string v45, "%s"

    const-string v46, "0.2"

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    aput-object v44, v9, v43

    aput-object v44, v41, v42

    .line 1154
    sget-object v41, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v42, 0x1

    const/16 v43, 0x1

    const/16 v44, 0x1

    aget-object v44, v9, v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v44

    const-string v45, "%s"

    const-string v46, "0.3"

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    aput-object v44, v9, v43

    aput-object v44, v41, v42

    .line 1155
    sget-object v41, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v42, 0x2

    const/16 v43, 0x2

    const/16 v44, 0x2

    aget-object v44, v9, v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v44

    const-string v45, "%s"

    const-string v46, "0.5"

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    aput-object v44, v9, v43

    aput-object v44, v41, v42

    goto/16 :goto_a

    .line 1165
    .restart local v31    # "selectedKey":Ljava/lang/String;
    .restart local v38    # "summary":Ljava/lang/String;
    :cond_39
    const-string v41, "settings_hold_delay_medium"

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3a

    .line 1167
    sget-object v41, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v42, 0x1

    aget-object v38, v41, v42

    .end local v38    # "summary":Ljava/lang/String;
    check-cast v38, Ljava/lang/String;

    .line 1168
    .restart local v38    # "summary":Ljava/lang/String;
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_b

    .line 1169
    :cond_3a
    const-string v41, "settings_hold_delay_long"

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3b

    .line 1171
    sget-object v41, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->delayTextForSummary:[Ljava/lang/CharSequence;

    const/16 v42, 0x2

    aget-object v38, v41, v42

    .end local v38    # "summary":Ljava/lang/String;
    check-cast v38, Ljava/lang/String;

    .line 1172
    .restart local v38    # "summary":Ljava/lang/String;
    const/16 v41, 0x2

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_b

    .line 1173
    :cond_3b
    const-string v41, "settings_hold_delay_custom"

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_25

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f0d02f1

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1176
    const/16 v41, 0x3

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_b

    .line 1217
    .end local v9    # "delayText":[Ljava/lang/CharSequence;
    .end local v31    # "selectedKey":Ljava/lang/String;
    .end local v38    # "summary":Ljava/lang/String;
    .restart local v33    # "setEnable":Z
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "sip_key_feedback_vibration"

    const/16 v43, 0x1

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_3d

    .line 1218
    const/16 v16, 0x1

    goto/16 :goto_c

    .line 1220
    :cond_3d
    const/16 v16, 0x0

    goto/16 :goto_c

    .line 1235
    .end local v33    # "setEnable":Z
    :cond_3e
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 1238
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "sip_key_feedback_sound"

    const/16 v43, 0x1

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_40

    .line 1239
    const/16 v16, 0x1

    goto/16 :goto_d

    .line 1241
    :cond_40
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 1329
    .end local v5    # "cp":Landroid/preference/CheckBoxPreference;
    .end local v6    # "currentLanguageExist":Z
    .end local v7    # "currentLanguageInSettings":I
    .end local v10    # "holdpref":Landroid/preference/ListPreference;
    .end local v16    # "isEnable":Z
    .end local v19    # "languageID":Ljava/lang/String;
    .end local v22    # "order":I
    .end local v24    # "pf":Landroid/preference/Preference;
    .end local v27    # "rb":Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
    .end local v29    # "sPrefs":Landroid/content/SharedPreferences;
    .end local v30    # "selectedIndex":I
    .end local v32    # "selectedLanguageId":I
    .end local v39    # "supported":[Lcom/diotek/ime/framework/common/Language;
    .restart local v3    # "autoCorrectionPF":Landroid/preference/Preference;
    .restart local v15    # "isChecked":Z
    .restart local v35    # "shortcutPhrasePF":Landroid/preference/Preference;
    .restart local v36    # "shortcutPhraseSP":Landroid/preference/SwitchPreference;
    :cond_41
    const/16 v41, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 900
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 901
    return-void
.end method

.method public showPinchZoomGuideDialog()V
    .locals 15

    .prologue
    .line 1784
    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->isShowing()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1785
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v12, Landroid/view/ContextThemeWrapper;

    iget-object v13, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const/high16 v14, 0x7f0e0000

    invoke-direct {v12, v13, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1787
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1788
    const/4 v10, 0x0

    .line 1789
    .local v10, "pinchZoomGuideLayoutRscId":I
    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d00be

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1790
    .local v2, "gestureGuideDialogTitle":Ljava/lang/String;
    const v9, 0x7f080050

    .line 1791
    .local v9, "pinchZoomGuideAnimationDrawbleRscId":I
    const v8, 0x7f080051

    .line 1792
    .local v8, "movingGuideAnimationDrawbleRscId":I
    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isUsedSplitKeyboard()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1793
    const v10, 0x7f030040

    .line 1798
    :goto_0
    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isCheckDontShowPinchZoomGuide()Z

    move-result v12

    iput-boolean v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPinchZoomGuide:Z

    .line 1800
    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1801
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1802
    .local v3, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1803
    const v12, 0x1020016

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1804
    .local v11, "titleID":Landroid/view/View;
    if-nez v11, :cond_1

    .line 1805
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1808
    :cond_1
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1809
    .local v6, "imgPinchZoom":Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    .line 1811
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1812
    .local v5, "imgMoving":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    .line 1814
    const v12, 0x104000a

    new-instance v13, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$38;

    invoke-direct {v13, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$38;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1834
    const v12, 0x7f080052

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1835
    .local v1, "chkbox":Landroid/widget/CheckBox;
    if-eqz v1, :cond_2

    .line 1837
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1838
    new-instance v12, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$39;

    invoke-direct {v12, p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$39;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1847
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1848
    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    .line 1849
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1850
    .local v4, "handler":Landroid/os/Handler;
    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v13, 0x1f4

    invoke-virtual {v4, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1852
    .end local v0    # "Dialog":Landroid/app/AlertDialog$Builder;
    .end local v1    # "chkbox":Landroid/widget/CheckBox;
    .end local v2    # "gestureGuideDialogTitle":Ljava/lang/String;
    .end local v3    # "guideLayout":Landroid/view/View;
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v5    # "imgMoving":Landroid/widget/ImageView;
    .end local v6    # "imgPinchZoom":Landroid/widget/ImageView;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "movingGuideAnimationDrawbleRscId":I
    .end local v9    # "pinchZoomGuideAnimationDrawbleRscId":I
    .end local v10    # "pinchZoomGuideLayoutRscId":I
    .end local v11    # "titleID":Landroid/view/View;
    :cond_3
    return-void

    .line 1795
    .restart local v0    # "Dialog":Landroid/app/AlertDialog$Builder;
    .restart local v2    # "gestureGuideDialogTitle":Ljava/lang/String;
    .restart local v8    # "movingGuideAnimationDrawbleRscId":I
    .restart local v9    # "pinchZoomGuideAnimationDrawbleRscId":I
    .restart local v10    # "pinchZoomGuideLayoutRscId":I
    :cond_4
    const v10, 0x7f03003b

    goto :goto_0
.end method

.method public showPredictiveTextGuideDialog()V
    .locals 9

    .prologue
    .line 1855
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1856
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1857
    .local v0, "Dialog":Landroid/app/AlertDialog$Builder;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1859
    const v5, 0x7f030041

    .line 1860
    .local v5, "predictiveTextGuideLayoutRscId":I
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00c4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1862
    .local v4, "predictiveTextGuideDialogTitle":Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isCheckDontShowPredictiveTextGuide()Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    .line 1864
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1865
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1866
    .local v2, "guideLayout":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1867
    const v7, 0x1020016

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1868
    .local v6, "titleID":Landroid/view/View;
    if-nez v6, :cond_1

    .line 1869
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1872
    :cond_1
    const v7, 0x104000a

    new-instance v8, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;

    invoke-direct {v8, p0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$40;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1892
    const v7, 0x7f08005a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1893
    .local v1, "chkbox":Landroid/widget/CheckBox;
    if-eqz v1, :cond_2

    .line 1894
    iget-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsCheckDontShowPredictiveTextGuide:Z

    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1895
    new-instance v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$41;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$41;-><init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1904
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1905
    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 1907
    .end local v0    # "Dialog":Landroid/app/AlertDialog$Builder;
    .end local v1    # "chkbox":Landroid/widget/CheckBox;
    .end local v2    # "guideLayout":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "predictiveTextGuideDialogTitle":Ljava/lang/String;
    .end local v5    # "predictiveTextGuideLayoutRscId":I
    .end local v6    # "titleID":Landroid/view/View;
    :cond_3
    return-void
.end method
