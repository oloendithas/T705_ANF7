.class public Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "TiltToScrollListTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;
    }
.end annotation


# static fields
.field private static final AFTER_SUCCEED:I = 0x1e1

.field private static final ANIMATION_DEALY:I = 0x1f4

.field private static final CHANGE_ANIMATION:I = 0x66

.field private static final INITIAL_SCROLL_POSITION:I = 0x18

.field private static final LANDSCAPE_ROTATION_LEFT_TILT_MOTION:I = 0x3

.field private static final LANDSCAPE_ROTATION_RIGHT_TILT_MOTION:I = 0x2

.field private static final LAST_ANIMATION_DEALY:I = 0x7d0

.field private static final LAST_ANIMATION_INDEX:I = 0x0

.field private static final MAX_ANIMATION_INDEX:I = 0x5

.field private static final PORTRAIT_TILT_MOTION:I = 0x1

.field private static final RESULT_INFORMATION:I = 0x64

.field private static final TUTORIAL_SUCCEED:I = 0x1e0

.field private static final TUTORIAL_SUCCEED_DELAY:I = 0x1f4

.field private static final mAnimationImage:[I


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationImage:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020865
        0x7f020866
        0x7f020867
        0x7f020868
        0x7f020869
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 151
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    .line 157
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    .line 161
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    .line 167
    new-instance v0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    .line 547
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->stopAnimation()V

    return-void
.end method

.method private setActionBar()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 278
    .local v1, "actionBar":Landroid/app/ActionBar;
    const/16 v0, 0x1e

    .line 286
    .local v0, "MASK":I
    const/4 v3, 0x0

    .line 288
    .local v3, "newFlags":I
    or-int/lit8 v3, v3, 0x8

    .line 290
    or-int/lit8 v3, v3, 0x2

    .line 292
    or-int/lit8 v3, v3, 0x10

    .line 296
    const/16 v4, 0x1e

    invoke-virtual {v1, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 302
    const v4, 0x7f0e03d3

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 308
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040211

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 310
    .local v2, "infoView":Landroid/view/View;
    new-instance v4, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x13

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 337
    :goto_0
    return-void

    .line 330
    :cond_0
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

.method private setFastScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 383
    const v3, 0x7f0901ac

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 385
    .local v2, "twIndexScrollView":Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "dummy"

    aput-object v4, v3, v5

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 387
    .local v0, "cursor":Landroid/database/MatrixCursor;
    new-array v3, v6, [Ljava/lang/String;

    const v4, 0x7f0e0022

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 393
    const-string v3, "KOR"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    const v3, 0x7f0e0008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v5, v3}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 411
    .local v1, "twCursorIndexer":Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setHandlePosition(I)V

    .line 421
    :goto_1
    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 423
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 425
    return-void

    .line 403
    .end local v1    # "twCursorIndexer":Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    :cond_0
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    const v3, 0x7f0e0283

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v5, v3}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .restart local v1    # "twCursorIndexer":Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setHandlePosition(I)V

    goto :goto_1
.end method

.method private setListView()V
    .locals 2

    .prologue
    .line 371
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$DoubleTapTutorialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 377
    return-void
.end method

.method private setSearchView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 343
    const v3, 0x7f090314

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, "createButton":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 347
    const v3, 0x7f090100

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 349
    .local v1, "customSearchView":Landroid/widget/SearchView;
    const v3, 0x7f0901cd

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 351
    .local v2, "menuButton":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 355
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 357
    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 359
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 361
    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 363
    const v3, 0x7f0e01c2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 365
    return-void
.end method

.method private startAnimation()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    .line 527
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->updateAnimation()V

    .line 531
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationImage:[I

    iget v2, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 489
    iget v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    .line 495
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 501
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->stopAnimation()V

    .line 503
    iget v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 517
    :cond_1
    :goto_0
    return-void

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 191
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    const v0, 0x7f040123

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->setContentView(I)V

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 199
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->setActionBar()V

    .line 200
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->setSearchView()V

    .line 201
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->setListView()V

    .line 202
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->setFastScroll()V

    .line 204
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 260
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->stopAnimation()V

    .line 266
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 216
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->updateAnimation()V

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 222
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 226
    .local v0, "currentRotation":I
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 238
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method public showGuideDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 433
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 435
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 437
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 439
    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    .line 445
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 447
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400ab

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 449
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f090037

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 451
    .local v3, "message":Landroid/widget/TextView;
    const v4, 0x7f090230

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    .line 455
    const v4, 0x7f0e03d2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 457
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 459
    const v4, 0x7f0e03d1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 461
    const v4, 0x7f0e03cf

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    .line 465
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 467
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 477
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->startAnimation()V

    .line 479
    return-void
.end method
