.class public Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;
.super Landroid/app/Activity;
.source "DialerGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field private static final EASY_MODE_SWITCH_INTENT:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "DialerGuideActivity"

.field public static tempNumber:Ljava/lang/String;


# instance fields
.field private contactName:Ljava/lang/String;

.field private filter:Ljava/lang/String;

.field private hasDisplayed:Z

.field private isShowToast:Z

.field private isTutorialSuccessed:Z

.field private isUsingTwoPanel:Z

.field private mAddBtn:Landroid/widget/RelativeLayout;

.field private mAddBtn_land:Landroid/widget/RelativeLayout;

.field private mCallLogCustomTabView:Landroid/view/View;

.field private mCallLogCustomTabView_Text:Landroid/widget/TextView;

.field private mContactCustomTabView:Landroid/view/View;

.field private mContactCustomTabView_Text:Landroid/widget/TextView;

.field private mDialBtn:Landroid/widget/ImageButton;

.field private mDialBtn_land:Landroid/widget/ImageButton;

.field private mDialCustomTabView:Landroid/view/View;

.field private mDialCustomTabView_Text:Landroid/widget/TextView;

.field private mDialerLayout:Landroid/widget/LinearLayout;

.field private mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

.field private mEasyMode:Z

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mFavoCustomTabView:Landroid/view/View;

.field private mFavoCustomTabView_Text:Landroid/widget/TextView;

.field private mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

.field private mGuideDigits:Landroid/widget/TextView;

.field public mIsForegroundActivity:Z

.field private final mKeyActionListener:Landroid/view/View$OnKeyListener;

.field private final mTabListener:Landroid/app/ActionBar$TabListener;

.field private mWb:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

.field private mWbReceivedText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "0123456789"

    sput-object v0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->tempNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->filter:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->contactName:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isTutorialSuccessed:Z

    .line 66
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mIsForegroundActivity:Z

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isShowToast:Z

    .line 70
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->hasDisplayed:Z

    .line 267
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$2;-><init>(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mKeyActionListener:Landroid/view/View$OnKeyListener;

    .line 594
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$4;-><init>(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setGuideContentView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isShowToast:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isShowToast:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupDialer()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupCallLog()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupFavorites()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupContacts()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setEmbeddedTabs()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWbReceivedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setTabPosition()V

    return-void
.end method

.method private checkIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 228
    .local v0, "bun":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 232
    :cond_1
    const-string v1, "DialerGuideMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->filter:Ljava/lang/String;

    .line 233
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isTutorialSuccessed:Z

    if-nez v1, :cond_2

    .line 234
    const-string v1, "isTutorialSuccessed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isTutorialSuccessed:Z

    .line 235
    const-string v1, "displayName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->contactName:Ljava/lang/String;

    .line 238
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->init()V

    goto :goto_0
.end method

.method private cleanupWritingBuddy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWb:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWb:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-virtual {v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish()V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWb:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 450
    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWb:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .line 452
    :cond_0
    return-void
.end method

.method private reArrangeDigitContainer()V
    .locals 4

    .prologue
    .line 549
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 550
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 552
    const v2, 0x7f090322

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDigits:Landroid/widget/TextView;

    .line 553
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDigits:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    .line 556
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDigits:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 558
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    if-nez v2, :cond_0

    .line 561
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 565
    const-string v2, "feature_wvga"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 566
    const/16 v2, 0x4b

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 580
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDigits:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 567
    :cond_3
    const-string v2, "feature_hvga"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 568
    const/16 v2, 0x38

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 569
    :cond_4
    const-string v2, "feature_qvga"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 570
    const/16 v2, 0x55

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 571
    :cond_5
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_6

    .line 572
    const/16 v2, 0xc0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 573
    :cond_6
    const-string v2, "feature_is_fonblet"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 574
    const/16 v2, 0x78

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 575
    :cond_7
    const-string v2, "feature_qhd"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 576
    const/16 v2, 0x61

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method private runGuideMode(I)V
    .locals 8
    .param p1, "step"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 506
    const/4 v7, 0x1

    .line 508
    .local v7, "isRst":Z
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isTutorialSuccessed:Z

    if-eqz v0, :cond_2

    .line 509
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;-><init>(Landroid/app/Activity;ZIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->contactName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setContactName(Ljava/lang/String;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    move-result v7

    .line 543
    :goto_0
    if-nez v7, :cond_1

    .line 544
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 545
    :cond_1
    return-void

    .line 515
    :cond_2
    const-string v0, "MAKE_CALLS_TUTORIAL"

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    new-instance v1, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;-><init>(Landroid/app/Activity;ZIIZ)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    move-result v7

    goto :goto_0

    .line 520
    :cond_3
    const-string v0, "SAVE_CONTACTS_KEYPAD_TUTORIAL"

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 521
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;-><init>(Landroid/app/Activity;ZIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    move-result v7

    goto :goto_0

    .line 525
    :cond_4
    const-string v0, "SPEED_DIAL_TIP_TUTORIAL"

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 526
    const-string v0, "hover_use_only_portrait_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 527
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 529
    :cond_5
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    const/4 v3, 0x2

    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;-><init>(Landroid/app/Activity;ZIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    move-result v7

    goto :goto_0

    .line 533
    :cond_6
    const-string v0, "WRITING_BUDDY_TUTORIAL"

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 534
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    const/4 v3, 0x3

    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;-><init>(Landroid/app/Activity;ZIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    .line 535
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 537
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setEditTextView()V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    move-result v7

    goto/16 :goto_0

    .line 541
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private setEditTextView()V
    .locals 5

    .prologue
    .line 383
    const v3, 0x7f090251

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 384
    .local v2, "lyDgitsContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 385
    .local v1, "lpc":Landroid/view/ViewGroup$LayoutParams;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 386
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v3, "feature_enable_writingbuddy"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->cleanupWritingBuddy()V

    .line 388
    new-instance v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {v3, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWb:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .line 389
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWb:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    const-string v4, "HELP_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setPrivateCommnad(Ljava/lang/String;)V

    .line 390
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWb:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 391
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWb:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setEditorType(I)V

    .line 392
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWb:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    new-instance v4, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$3;-><init>(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    .line 437
    :cond_0
    return-void
.end method

.method private setEmbeddedTabs()V
    .locals 7

    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .line 762
    .local v0, "actionBarImpl":Lcom/android/internal/app/ActionBarImpl;
    const/4 v1, 0x0

    .line 764
    .local v1, "setHasEmbeddedTabs":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setHasEmbeddedTabs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 765
    if-eqz v1, :cond_0

    .line 766
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 767
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v2

    goto :goto_0

    .line 771
    :catch_1
    move-exception v2

    goto :goto_0

    .line 770
    :catch_2
    move-exception v2

    goto :goto_0

    .line 769
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private setGuideContentView()V
    .locals 4

    .prologue
    const v3, 0x7f090259

    const v2, 0x7f09020f

    .line 293
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    if-eqz v0, :cond_5

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    :cond_0
    const v0, 0x7f040160

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 319
    :goto_0
    const-string v0, "feature_folder_type"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 321
    const v0, 0x7f09024f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialerLayout:Landroid/widget/LinearLayout;

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090295

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mAddBtn:Landroid/widget/RelativeLayout;

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0902ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mAddBtn_land:Landroid/widget/RelativeLayout;

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialBtn:Landroid/widget/ImageButton;

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialBtn_land:Landroid/widget/ImageButton;

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialerLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mAddBtn:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mKeyActionListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mAddBtn_land:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mKeyActionListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mKeyActionListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialBtn_land:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mKeyActionListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 334
    :cond_1
    return-void

    .line 296
    :cond_2
    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    const v0, 0x7f04015f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 298
    :cond_3
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    const v0, 0x7f040161

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 301
    :cond_4
    const v0, 0x7f04015e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 303
    :cond_5
    const-string v0, "feature_volte_support_videocall"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    const v0, 0x7f040166

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 305
    :cond_6
    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 306
    const v0, 0x7f04015a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 307
    :cond_7
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 308
    const v0, 0x7f040164

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 309
    :cond_8
    const-string v0, "feature_spr"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 310
    const v0, 0x7f040162

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 311
    :cond_9
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 312
    const v0, 0x7f040165

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 313
    :cond_a
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_b

    .line 315
    const v0, 0x7f04015c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    .line 317
    :cond_b
    const v0, 0x7f040163

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method private setTabPosition()V
    .locals 6

    .prologue
    const-wide/16 v2, 0xa

    .line 780
    new-instance v0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$5;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$5;-><init>(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;JJ)V

    .line 793
    .local v0, "timerForAni":Landroid/os/CountDownTimer;
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 794
    return-void
.end method

.method private setTabTextWidth()V
    .locals 3

    .prologue
    const v2, 0x7f090023

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mCallLogCustomTabView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mFavoCustomTabView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mContactCustomTabView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 213
    :cond_3
    return-void
.end method

.method private setupCallLog()V
    .locals 8

    .prologue
    const v7, 0x7f0e018a

    const v6, 0x7f040002

    const v5, 0x7f0206dd

    const v4, 0x7f0e02f2

    const v3, 0x7f090023

    .line 654
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 655
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    const v1, 0x7f0e0090

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 656
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 657
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_5

    .line 658
    const-string v1, "alwasy_tab_mode_tablet"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 660
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    .line 661
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 662
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 687
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 688
    return-void

    .line 664
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    if-nez v1, :cond_2

    const-string v1, "feature_cdma_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_gsm_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 665
    :cond_2
    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 666
    invoke-virtual {v0, v7}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 668
    :cond_3
    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 671
    :cond_4
    invoke-virtual {v0, v5}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 674
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mCallLogCustomTabView:Landroid/view/View;

    .line 675
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mCallLogCustomTabView:Landroid/view/View;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 677
    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 678
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 681
    :goto_1
    const-string v1, "feature_wvga"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 682
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 683
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mCallLogCustomTabView_Text:Landroid/widget/TextView;

    .line 684
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto/16 :goto_0

    .line 680
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private setupContacts()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v2, 0x7f040002

    const v4, 0x7f0e0210

    const v3, 0x7f090023

    .line 727
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 728
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 729
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 731
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_2

    .line 732
    const-string v1, "alwasy_tab_mode_tablet"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    .line 735
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 736
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 751
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 754
    return-void

    .line 738
    :cond_1
    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mContactCustomTabView:Landroid/view/View;

    .line 743
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mContactCustomTabView:Landroid/view/View;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0206d9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 744
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 745
    const-string v1, "feature_wvga"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 746
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 747
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mContactCustomTabView_Text:Landroid/widget/TextView;

    .line 748
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mContactCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method private setupDialer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v2, 0x7f040002

    const v5, 0x7f0206da

    const v4, 0x7f0e02f1

    const v3, 0x7f090023

    .line 619
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 620
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    const v1, 0x7f0e008f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 621
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 623
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_4

    .line 624
    const-string v1, "alwasy_tab_mode_tablet"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 626
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    .line 627
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 628
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 649
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 650
    return-void

    .line 630
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    if-nez v1, :cond_2

    const-string v1, "feature_cdma_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_gsm_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 631
    :cond_2
    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 633
    :cond_3
    invoke-virtual {v0, v5}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 636
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 639
    const-string v1, "feature_wvga"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 640
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 642
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView_Text:Landroid/widget/TextView;

    .line 643
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method private setupFavorites()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v2, 0x7f040002

    const v5, 0x7f0206de

    const v4, 0x7f0e02f3

    const v3, 0x7f090023

    .line 693
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 694
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    const v1, 0x7f0e008e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 695
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 697
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_4

    .line 698
    const-string v1, "alwasy_tab_mode_tablet"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_tablet_only_phone"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alwasy_tab_mode_except_multiwindow_landscape"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    .line 701
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 702
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 721
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 722
    return-void

    .line 704
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    if-nez v1, :cond_2

    const-string v1, "feature_cdma_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_gsm_layout"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 705
    :cond_2
    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 708
    :cond_3
    invoke-virtual {v0, v5}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0

    .line 712
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mFavoCustomTabView:Landroid/view/View;

    .line 713
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mFavoCustomTabView:Landroid/view/View;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 714
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 715
    const-string v1, "feature_wvga"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 716
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 717
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mFavoCustomTabView_Text:Landroid/widget/TextView;

    .line 718
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method


# virtual methods
.method public clearDigits()V
    .locals 1

    .prologue
    .line 441
    const-string v0, "feature_enable_writingbuddy"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mWbReceivedText:Ljava/lang/String;

    .line 444
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 245
    const v0, 0x7f090323

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 248
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->reArrangeDigitContainer()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setEasyMode(Z)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->resetGuide()V

    .line 256
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isTutorialSuccessed:Z

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setStep(I)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->setContactName(Ljava/lang/String;)V

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->runGuideMode(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 484
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->hasDisplayed:Z

    if-nez v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->cancelTimer()V

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 502
    :goto_0
    return-void

    .line 491
    :cond_1
    const/16 v1, 0x34

    if-ne p1, v1, :cond_3

    .line 492
    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    .line 493
    const-string v1, "step"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 495
    .local v0, "step":I
    const-string v1, "MAKE_CALLS_TUTORIAL"

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->filter:Ljava/lang/String;

    .line 496
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 497
    const/16 v0, 0xa

    .line 498
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->runGuideMode(I)V

    .line 501
    .end local v0    # "step":I
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->moveBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 342
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setEmbeddedTabs()V

    .line 197
    const-string v0, "feature_wvga"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setTabTextWidth()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->checkOnConfigrationChangeRun()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->init()V

    .line 203
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isShowToast:Z

    .line 107
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->hasDisplayed:Z

    .line 109
    invoke-static {p0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 110
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    .line 112
    const-string v3, "feature_easy_mode"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    .line 115
    new-instance v1, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;-><init>(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 145
    :cond_1
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setGuideContentView()V

    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupDialer()V

    .line 154
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupCallLog()V

    .line 155
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z

    if-nez v1, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupFavorites()V

    .line 157
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupContacts()V

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 162
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setEmbeddedTabs()V

    .line 163
    return-void

    :cond_3
    move v1, v2

    .line 113
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 456
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 457
    const-string v0, "DialerGuideActivity"

    const-string v1, "<<<<<<<<<<<<<<<<<<<onDestroy>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v0, "feature_enable_writingbuddy"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->cleanupWritingBuddy()V

    .line 461
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 356
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 360
    :cond_0
    const/4 v0, 0x0

    .line 377
    :goto_0
    return v0

    .line 361
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->moveBack()Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 368
    :cond_2
    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    if-eqz v0, :cond_5

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->moveToNextStep()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    move-result v0

    if-nez v0, :cond_3

    .line 371
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 377
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 365
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 372
    :cond_5
    const/16 v0, 0x43

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->moveBack()Z

    move-result v0

    if-nez v0, :cond_3

    .line 374
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 346
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x1

    .line 351
    :goto_0
    return v0

    .line 349
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 351
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->checkIntent(Landroid/content/Intent;)V

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mIsForegroundActivity:Z

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->disable()V

    .line 190
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->hasDisplayed:Z

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->enableMsgVisiable()V

    .line 179
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mIsForegroundActivity:Z

    .line 180
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->checkIntent(Landroid/content/Intent;)V

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 169
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f09031e

    .line 464
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 465
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 466
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 468
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 469
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v2

    .line 470
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v2, p2, v0, v1}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->TouchEvent(Landroid/view/MotionEvent;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 478
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_1
    return v4
.end method
