.class public Lcom/sec/android/app/contacts/list/ContactSplitRatioController;
.super Ljava/lang/Object;
.source "ContactSplitRatioController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;
    }
.end annotation


# static fields
.field public static final KEY_LEFT_PANE_WIDTH_2014:Ljava/lang/String; = "leftPaneWidth2014"

.field public static final OLD_SCREEN_WIDTH:Ljava/lang/String; = "oldScreenWidth"

.field private static final TAG:Ljava/lang/String;

.field private static mOldScreenWidth:I

.field private static mSavedLeftPaneWidth:I

.field private static sIsTwoPaneMode:Z


# instance fields
.field private DeltaX:I

.field private mActivity:Landroid/app/Activity;

.field private mFocusedSplitBar:Landroid/view/View;

.field private mIsMultiWindowSupported:Z

.field private mIsPenWindow:Z

.field private mLeftPaneContainer:Landroid/view/View;

.field private mLeftPaneMaxWidth:I

.field private mLeftPaneMinWidth:I

.field private mLeftThreshold:I

.field private mLeftTransparentSplitBar:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mRightTransparentSplitBar:Landroid/view/View;

.field private mSavedXOFfset:I

.field private mScreenWidth:I

.field private mSplitBar:Landroid/view/View;

.field private mSplitHover:Landroid/view/View;

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const-class v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->TAG:Ljava/lang/String;

    .line 80
    sput v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    .line 82
    sput v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mOldScreenWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "splitBar"    # Landroid/view/View;
    .param p3, "leftTransparentSplitBar"    # Landroid/view/View;
    .param p4, "rightTransparentSplitBar"    # Landroid/view/View;
    .param p5, "focusedSplitBar"    # Landroid/view/View;
    .param p6, "leftPaneContainer"    # Landroid/view/View;
    .param p7, "splitHover"    # Landroid/view/View;
    .param p8, "listener"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I

    .line 77
    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    .line 78
    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedXOFfset:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitHover:Landroid/view/View;

    .line 110
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    .line 112
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->sIsTwoPaneMode:Z

    .line 114
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitBar:Landroid/view/View;

    .line 115
    iput-object p3, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    .line 116
    iput-object p4, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    .line 117
    iput-object p5, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    .line 118
    iput-object p6, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    .line 119
    iput-object p7, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitHover:Landroid/view/View;

    .line 120
    iput-object p8, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mListener:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mIsMultiWindowSupported:Z

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isPenMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mIsPenWindow:Z

    .line 125
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 131
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mIsPenWindow:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setLeftPaneWidth(II)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMinWidth:I

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMaxWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mFocusedSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mListener:Lcom/sec/android/app/contacts/list/ContactSplitRatioController$ContactSplitRatioListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/ContactSplitRatioController;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->DeltaX:I

    return p1
.end method

.method private configureSplitBarListener()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    new-instance v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$1;-><init>(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)V

    .line 234
    .local v0, "SplitBarListener":Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitHover:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController$2;-><init>(Lcom/sec/android/app/contacts/list/ContactSplitRatioController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 261
    return-void
.end method

.method private getCurrentLeftPaneWidth()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method private getCurrentOrientation()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getSavedLeftPaneWidth()I
    .locals 1

    .prologue
    .line 320
    sget v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    return v0
.end method

.method private getSavedX_OFFSET()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedXOFfset:I

    return v0
.end method

.method private setLeftPaneWidth(II)V
    .locals 5
    .param p1, "leftPaneWidth"    # I
    .param p2, "X_OFFSET"    # I

    .prologue
    .line 265
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 267
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mIsPenWindow:Z

    if-nez v2, :cond_0

    .line 271
    sub-int/2addr p1, p2

    .line 275
    :cond_0
    iget v2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftThreshold:I

    if-ge p1, v2, :cond_3

    .line 276
    iget p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMinWidth:I

    .line 281
    :cond_1
    :goto_0
    sget v2, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    if-eq p1, v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 283
    .local v1, "mPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "oldScreenWidth"

    iget v4, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 284
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "leftPaneWidth2014"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 285
    iget v2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    sput v2, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mOldScreenWidth:I

    .line 286
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    .end local v1    # "mPrefs":Landroid/content/SharedPreferences;
    :cond_2
    sget-object v2, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Split ratio changed. Left pane width is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 292
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setSavedLeftPaneWidth(I)V

    .line 298
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setSavedX_OFFSET(I)V

    .line 300
    return-void

    .line 277
    :cond_3
    iget v2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMaxWidth:I

    if-le p1, v2, :cond_1

    .line 278
    iget p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMaxWidth:I

    goto :goto_0
.end method

.method private setSavedLeftPaneWidth(I)V
    .locals 0
    .param p1, "currentLeftPaneWidth"    # I

    .prologue
    .line 316
    sput p1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    .line 317
    return-void
.end method

.method private setSavedX_OFFSET(I)V
    .locals 0
    .param p1, "xOffset"    # I

    .prologue
    .line 305
    iput p1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedXOFfset:I

    .line 306
    return-void
.end method


# virtual methods
.method public hideSplitBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitHover:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 346
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    return-void
.end method

.method public initialize()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mIsPenWindow:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    :goto_0
    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    const-string v1, "leftPaneWidth2014"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    .line 139
    const-string v1, "oldScreenWidth"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mOldScreenWidth:I

    .line 141
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    int-to-double v1, v1

    const-wide v3, 0x3f747ae147ae147bL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMinWidth:I

    .line 142
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    int-to-double v1, v1

    const-wide v3, 0x3fe51eb851eb851fL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftPaneMaxWidth:I

    .line 143
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    int-to-double v1, v1

    const-wide v3, 0x3fb47ae147ae147bL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftThreshold:I

    .line 145
    sget v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    if-nez v1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->getCurrentOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 148
    const-string v1, "grande"

    const-string v2, "ro.build.scafe.size"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    int-to-double v1, v1

    const-wide v3, 0x3fd3333333333333L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sput v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    .line 159
    :cond_0
    :goto_1
    sget v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    if-eqz v1, :cond_1

    sget v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mOldScreenWidth:I

    if-eqz v1, :cond_1

    .line 160
    sget v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    iget v2, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    mul-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mOldScreenWidth:I

    div-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mLeftTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mRightTransparentSplitBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitHover:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 167
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->configureSplitBarListener()V

    .line 169
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->getSavedLeftPaneWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->getSavedX_OFFSET()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setLeftPaneWidth(II)V

    .line 170
    return-void

    .line 135
    .end local v0    # "mPrefs":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    goto/16 :goto_0

    .line 151
    .restart local v0    # "mPrefs":Landroid/content/SharedPreferences;
    :cond_3
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    int-to-double v1, v1

    const-wide v3, 0x3fd51eb851eb851fL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sput v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    goto :goto_1

    .line 153
    :cond_4
    const-string v1, "grande"

    const-string v2, "ro.build.scafe.size"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 154
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    int-to-double v1, v1

    const-wide v3, 0x3fd999999999999aL

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sput v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    goto :goto_1

    .line 156
    :cond_5
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->screenWidth:I

    int-to-double v1, v1

    const-wide v3, 0x3fdb851eb851eb85L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sput v1, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSavedLeftPaneWidth:I

    goto :goto_1
.end method

.method public setLeftPaneWidthDefaultForTutorialMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    sget-boolean v0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c020d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setLeftPaneWidth(II)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0218

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->setLeftPaneWidth(II)V

    goto :goto_0
.end method

.method public showSplitBar()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->mSplitBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/ContactSplitRatioController;->initialize()V

    .line 354
    return-void
.end method
