.class public Lcom/sec/android/app/dialertab/calllog/SplitBarManager;
.super Ljava/lang/Object;
.source "SplitBarManager.java"


# static fields
.field private static final KEY_SAVED_SPLIT_X_LAND:Ljava/lang/String; = "savedSplitXLand"

.field private static final KEY_SAVED_SPLIT_X_PORT:Ljava/lang/String; = "savedSplitXPort"

.field private static final TAG:Ljava/lang/String; = "SplitBarManager"

.field public static isSupportMultiWindow:Z

.field private static prevX:I


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field mContainer:Landroid/widget/FrameLayout;

.field mLeftSplitBar:Landroid/widget/ImageButton;

.field mLogsListFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field mRightSplitBar:Landroid/widget/ImageButton;

.field mSavedX:I

.field mSavedXLand:I

.field mSavedXPort:I

.field mSplitBarColored:Landroid/widget/LinearLayout;

.field mSplitHover:Landroid/view/View;

.field mSplitMaxX:I

.field mSplitMinX:I

.field mSupportCheckBox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0xf0

    sput v0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->prevX:I

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->isSupportMultiWindow:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedXLand:I

    .line 58
    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedXPort:I

    .line 68
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/SplitBarManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/SplitBarManager;
    .param p1, "x1"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/SplitBarManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setSplitView(IZ)V

    return-void
.end method

.method private getSplitViewX()I
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 258
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v1
.end method

.method private setSplitView(IZ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "mMove"    # Z

    .prologue
    .line 223
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 225
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMinX:I

    if-ge p1, v1, :cond_3

    .line 226
    iget p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMinX:I

    .line 231
    :cond_0
    :goto_0
    if-nez p2, :cond_6

    .line 232
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    if-ne p1, v1, :cond_1

    .line 233
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMinX:I

    if-ne p1, v1, :cond_4

    .line 234
    add-int/lit8 p1, p1, 0x2

    .line 241
    :cond_1
    :goto_1
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    .line 242
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :cond_2
    :goto_2
    return-void

    .line 227
    :cond_3
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMaxX:I

    if-le p1, v1, :cond_0

    .line 228
    iget p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMaxX:I

    goto :goto_0

    .line 235
    :cond_4
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMaxX:I

    if-ne p1, v1, :cond_5

    .line 236
    add-int/lit8 p1, p1, -0x2

    goto :goto_1

    .line 238
    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 245
    :cond_6
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    sub-int/2addr v1, p1

    const/16 v2, 0x19

    if-ge v1, v2, :cond_7

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    sub-int/2addr v1, p1

    const/16 v2, -0x19

    if-gt v1, v2, :cond_2

    .line 248
    :cond_7
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    .line 249
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method private setUpHovering()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitHover:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$1;-><init>(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 157
    return-void
.end method

.method private setUpSplitBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager$2;-><init>(Lcom/sec/android/app/dialertab/calllog/SplitBarManager;)V

    .line 215
    .local v0, "listener":Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLeftSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLeftSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mRightSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mRightSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 220
    return-void
.end method


# virtual methods
.method public hasMultiWindwoFeature()Z
    .locals 4

    .prologue
    .line 263
    const/4 v2, 0x0

    .line 265
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 266
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 267
    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    .line 273
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSupportCheckBox:Z

    if-eqz v0, :cond_0

    .line 109
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMinX:I

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMaxX:I

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->hasMultiWindwoFeature()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->isSupportMultiWindow:Z

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLeftSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mRightSplitBar:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitHover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setUpSplitBar()V

    .line 122
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setUpHovering()V

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setDefaultlayout()V

    .line 124
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->setSplitView(IZ)V

    .line 125
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitMinX:I

    goto :goto_0
.end method

.method public setDefaultlayout()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0216

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSavedX:I

    goto :goto_0
.end method

.method public setValues(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/view/View;Landroid/widget/FrameLayout;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0
    .param p1, "splitBarColoredId"    # Landroid/widget/LinearLayout;
    .param p2, "leftSplitBarId"    # Landroid/widget/ImageButton;
    .param p3, "rightSplitBarId"    # Landroid/widget/ImageButton;
    .param p4, "splitHover"    # Landroid/view/View;
    .param p5, "containerId"    # Landroid/widget/FrameLayout;
    .param p6, "listFragment"    # Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    .param p7, "favouriteFragment"    # Lcom/android/contacts/list/ContactTileListFragment;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitBarColored:Landroid/widget/LinearLayout;

    .line 95
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLeftSplitBar:Landroid/widget/ImageButton;

    .line 96
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mRightSplitBar:Landroid/widget/ImageButton;

    .line 97
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSplitHover:Landroid/view/View;

    .line 98
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContainer:Landroid/widget/FrameLayout;

    .line 99
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mLogsListFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    .line 100
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 101
    return-void
.end method

.method public supportCheckBox(Z)V
    .locals 0
    .param p1, "support"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/SplitBarManager;->mSupportCheckBox:Z

    .line 105
    return-void
.end method
