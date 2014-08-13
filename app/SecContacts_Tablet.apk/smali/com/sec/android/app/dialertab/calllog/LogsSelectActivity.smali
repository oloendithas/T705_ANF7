.class public Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;
.super Landroid/app/ListActivity;
.source "LogsSelectActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LogsSelectActivity"

.field private static bDBChanged:Z

.field public static isSupportMultiWindow:Z

.field private static mLogCnt:I


# instance fields
.field co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

.field private customActionBarView:Landroid/view/View;

.field private empty_layout:Landroid/widget/LinearLayout;

.field private isUsingTwoPanel:Z

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field mCallHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mItemCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mNoLogs:Landroid/widget/TextView;

.field protected revertMenuItem:Landroid/view/View;

.field protected revertMenuItemText:Landroid/view/View;

.field protected saveMenuItem:Landroid/view/View;

.field private selection:Ljava/lang/String;

.field private sortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->bDBChanged:Z

    .line 103
    sput v0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mLogCnt:I

    .line 121
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isSupportMultiWindow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 117
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->selection:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->sortOrder:Ljava/lang/String;

    .line 419
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCallHandler:Landroid/os/Handler;

    .line 428
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 88
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->bDBChanged:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->selection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    const/4 v2, 0x1

    .line 340
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 341
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 342
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v1, :cond_1

    .line 343
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 344
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 350
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 351
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 399
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 400
    return-void
.end method

.method private setObserver()V
    .locals 4

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    .line 425
    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    return-void
.end method

.method private updateWindowLayout()V
    .locals 7

    .prologue
    const v6, 0x3ecccccd

    const/4 v5, -0x1

    .line 477
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 479
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 480
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 481
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 482
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 508
    :goto_0
    return-void

    .line 485
    .end local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 486
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setDimAmount(F)V

    .line 487
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 488
    .restart local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 489
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 490
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 491
    const/16 v3, 0x51

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 492
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 493
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 494
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 497
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setDimAmount(F)V

    .line 498
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 499
    .restart local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 501
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 502
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 504
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public hasMultiWindwoFeature()Z
    .locals 4

    .prologue
    .line 511
    const/4 v2, 0x0

    .line 513
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 514
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 515
    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v3, v2

    .line 521
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v4, 0x7f090091

    const v3, 0x7f09008d

    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 272
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    :cond_0
    const v0, 0x7f110036

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 278
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 280
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_4

    .line 281
    :cond_2
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->empty_layout:Landroid/widget/LinearLayout;

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->empty_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_3

    .line 292
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->updateWindowLayout()V

    .line 294
    :cond_3
    return-void

    .line 285
    :cond_4
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->empty_layout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x400

    const/4 v9, 0x1

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-static {p0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 141
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    .line 143
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v7, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 148
    :cond_0
    sget-boolean v7, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isSupportMultiWindow:Z

    if-eqz v7, :cond_1

    .line 149
    new-instance v7, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v7, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 150
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v7, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 153
    :cond_1
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v7

    if-nez v7, :cond_3

    .line 154
    :cond_2
    const v7, 0x7f110036

    invoke-virtual {p0, v7}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 157
    :cond_3
    iput-object p0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mContext:Landroid/content/Context;

    .line 159
    const v7, 0x7f04018e

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 160
    const v7, 0x7f0e02f2

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 162
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->configureActionBar()V

    .line 164
    const v7, 0x102000a

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mListView:Landroid/widget/ListView;

    .line 165
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 169
    .local v5, "i":Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v6, "selectionBuffer":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->selection:Ljava/lang/String;

    .line 172
    const-string v3, "-1"

    .line 173
    .local v3, "UNKNOWN_NUMBER":Ljava/lang/String;
    const-string v2, "-2"

    .line 174
    .local v2, "PRIVATE_NUMBER":Ljava/lang/String;
    const-string v1, "-3"

    .line 175
    .local v1, "PAYPHONE_NUMBER":Ljava/lang/String;
    const-string v4, "-4"

    .line 176
    .local v4, "UNKNOWN_PHONE":Ljava/lang/String;
    const-string v0, "P"

    .line 178
    .local v0, "NW_RESTRICTED":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-eq v7, v9, :cond_4

    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v7, :cond_8

    .line 179
    :cond_4
    const v7, 0x7f09008d

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->empty_layout:Landroid/widget/LinearLayout;

    .line 187
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->empty_layout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 189
    const-string v7, "number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v7, "!=-1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v7, " AND number!=-2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v7, " AND number!=-3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v7, " AND number!=-4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v7, " AND number!=\'P\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v7, "ctc_vip_mode"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 196
    const-string v7, " AND (reject_flag!=1 OR reject_flag ISNULL)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->selection:Ljava/lang/String;

    .line 200
    const-string v7, "feature_kor"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "feature_chn"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 201
    :cond_6
    const-string v7, ""

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->sortOrder:Ljava/lang/String;

    .line 204
    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 205
    const-string v7, "date DESC, _id DESC"

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->sortOrder:Ljava/lang/String;

    .line 213
    :cond_7
    :goto_1
    return-void

    .line 182
    :cond_8
    const v7, 0x7f090091

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->empty_layout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 206
    :cond_9
    const-string v7, "feature_skt"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "feature_kt"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 208
    :cond_a
    const-string v7, "_id DESC"

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->sortOrder:Ljava/lang/String;

    goto :goto_1

    .line 210
    :cond_b
    const-string v7, "date DESC"

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->sortOrder:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 359
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 361
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 362
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 364
    const v1, 0x7f0904f6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 257
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 264
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    .line 267
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->bDBChanged:Z

    .line 268
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 404
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 405
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, p3}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    .line 408
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    const-string v4, "number"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "strNumber":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "NUMBER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 416
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "strNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 417
    return-void
.end method

.method public onModeChanged(Z)V
    .locals 3
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 460
    const-string v0, "LogsSelectActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->updateWindowLayout()V

    .line 464
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 381
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 384
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904f6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    .line 132
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 217
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->setObserver()V

    .line 218
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "currentCountryIso":Ljava/lang/String;
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "voiceMailNumber":Ljava/lang/String;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_0
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->selection:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->sortOrder:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 243
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_3

    .line 246
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->updateWindowLayout()V

    .line 248
    :cond_3
    return-void

    .line 236
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v0

    move-object v9, v8

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 473
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "zoneInfo"    # I

    .prologue
    .line 469
    return-void
.end method

.method public setCustomMenuText()V
    .locals 7

    .prologue
    const v6, 0x7f090117

    const v5, 0x7f09011a

    const v4, 0x7f090116

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 297
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 299
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 312
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x258

    if-gt v0, v1, :cond_2

    .line 313
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 325
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->customActionBarView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
