.class public Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "DoubleTapTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$DoubleTapTutorialAdapter;
    }
.end annotation


# static fields
.field private static final AFTER_SUCCEED:I = 0x1e1

.field private static final ANIMATION_DEALY:I = 0x1f4

.field private static final CHANGE_ANIMATION:I = 0x66

.field private static final INITIAL_SCROLL_POSITION:I = 0x18

.field private static final LAST_ANIMATION_DEALY:I = 0x7d0

.field private static final LAST_ANIMATION_INDEX:I = 0x0

.field private static final MAX_ANIMATION_INDEX:I = 0x4

.field private static final RESULT_INFORMATION:I = 0x64

.field private static final TUTORIAL_SUCCEED:I = 0x1e0

.field private static final TUTORIAL_SUCCEED_DELAY:I = 0x1f4

.field private static final mAnimationDelay:[I

.field private static final mAnimationImage:[I


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCanDoubleTap:Z

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 80
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationImage:[I

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationDelay:[I

    return-void

    .line 80
    :array_0
    .array-data 4
        0x7f020788
        0x7f020789
        0x7f020788
        0x7f020789
    .end array-data

    .line 81
    :array_1
    .array-data 4
        0x1f4
        0x7d
        0x7d
        0x7d0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mCanDoubleTap:Z

    .line 75
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 77
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationIndex:I

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    .line 83
    new-instance v0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    .line 293
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;)Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->stopAnimation()V

    return-void
.end method

.method private setActionBar()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 146
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 147
    const v1, 0x7f0e03d0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 148
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 151
    :cond_0
    return-void
.end method

.method private setFastScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    const v3, 0x7f0901ac

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 180
    .local v2, "twIndexScrollView":Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "dummy"

    aput-object v4, v3, v5

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 181
    .local v0, "cursor":Landroid/database/MatrixCursor;
    new-array v3, v6, [Ljava/lang/String;

    const v4, 0x7f0e0022

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 184
    const-string v3, "KOR"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    const v3, 0x7f0e0008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v5, v3}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 193
    .local v1, "twCursorIndexer":Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setHandlePosition(I)V

    .line 198
    :goto_1
    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 199
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 200
    return-void

    .line 189
    .end local v1    # "twCursorIndexer":Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    :cond_0
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    const v3, 0x7f0e0283

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v5, v3}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .restart local v1    # "twCursorIndexer":Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setHandlePosition(I)V

    goto :goto_1
.end method

.method private setListView()V
    .locals 4

    .prologue
    .line 168
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    new-instance v1, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$DoubleTapTutorialAdapter;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$DoubleTapTutorialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    return-void
.end method

.method private setSearchView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 154
    const v3, 0x7f090314

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "createButton":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    const v3, 0x7f090100

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 157
    .local v1, "customSearchView":Landroid/widget/SearchView;
    const v3, 0x7f0901cd

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 158
    .local v2, "menuButton":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 160
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 161
    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 162
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 163
    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 164
    const v3, 0x7f0e01c2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method private startAnimation()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationIndex:I

    .line 283
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->updateAnimation()V

    .line 285
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationImage:[I

    iget v2, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->stopAnimation()V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    sget-object v2, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationDelay:[I

    iget v3, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationIndex:I

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationIndex:I

    .line 278
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 95
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 100
    const v0, 0x7f040123

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->setContentView(I)V

    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->setActionBar()V

    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->setSearchView()V

    .line 106
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->setListView()V

    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->setFastScroll()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mCanDoubleTap:Z

    .line 112
    if-eqz p1, :cond_0

    const-string v0, "isDialogShowing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->showGuideDialog()V

    .line 114
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 206
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 208
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 232
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 222
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->finish()V

    goto :goto_0

    .line 226
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->showGuideDialog()V

    goto :goto_0

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f09050a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->stopAnimation()V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->unregisterDoubleTapMotion()V

    .line 134
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->updateAnimation()V

    .line 122
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mCanDoubleTap:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->registerDoubleTapMotion()V

    .line 125
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "isDialogShowing"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public showGuideDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 237
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 239
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 240
    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    .line 243
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 244
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400ab

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 245
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f090037

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 246
    .local v3, "message":Landroid/widget/TextView;
    const v4, 0x7f090230

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mAnimationView:Landroid/widget/ImageView;

    .line 248
    const v4, 0x7f0e03ce

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 249
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 250
    const v4, 0x7f0e03cd

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 251
    const v4, 0x7f0e03cf

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    .line 253
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 254
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 262
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DoubleTapTutorialActivity;->startAnimation()V

    .line 263
    return-void
.end method
