.class public Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "FavoriteInterfaceActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;
    }
.end annotation


# static fields
.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_SELECTED_COUNT:Ljava/lang/String; = "mSelectedCount"

.field private static final TAG:Ljava/lang/String; = "FavoriteInterfaceActivity"

.field private static sIsTwoPaneMode:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionCode:I

.field private mDoneButtonClickable:Z

.field private mHandler:Landroid/os/Handler;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsMultiWindowSupported:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchViewLayout:Landroid/view/View;

.field private mSelectActionBarView:Landroid/view/View;

.field private mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

.field private mSelectButton:Landroid/widget/Button;

.field private mSelectedCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mItems:Ljava/util/ArrayList;

    .line 495
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->updateActionBarTitle()V

    return-void
.end method

.method private configureSearchView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    const v0, 0x7f0901a6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchViewLayout:Landroid/view/View;

    .line 175
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_2

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchViewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0e01c2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 184
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSearchView(Z)V

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v1, 0x15f

    if-ne v0, v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchViewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSearchView(Z)V

    goto :goto_0
.end method

.method private getActionBarTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 521
    .local v0, "title":Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    if-lez v1, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03e3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 526
    :cond_0
    return-object v0
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, -0x1

    .line 198
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 199
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 200
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 201
    .local v0, "dimAmount":F
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 203
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x3f000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 204
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 205
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 217
    :goto_0
    return-void

    .line 208
    .end local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 209
    .restart local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 210
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private setupDropdownActionBar()Landroid/app/ActionBar;
    .locals 5

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 305
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 306
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectActionBarView:Landroid/view/View;

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectActionBarView:Landroid/view/View;

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectButton:Landroid/widget/Button;

    .line 313
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0401b1

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mItems:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 317
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->updateActionBarTitle()V

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectButton:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 361
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectActionBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 362
    return-object v0
.end method

.method private updateActionBarTitle()V
    .locals 5

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectButton:Landroid/widget/Button;

    const v1, 0x7f0e03e3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 516
    :cond_0
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 272
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    .line 235
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    packed-switch v1, :pswitch_data_0

    .line 270
    :goto_1
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    .line 271
    .local v0, "fragment":Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090196

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 237
    .end local v0    # "fragment":Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    :pswitch_0
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    .line 238
    .restart local v0    # "fragment":Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 239
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 240
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 241
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    .line 245
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/16 v2, -0xd

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 248
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    goto :goto_1

    .line 253
    .end local v0    # "fragment":Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    :pswitch_1
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;-><init>()V

    .line 254
    .restart local v0    # "fragment":Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 255
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 258
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 263
    :goto_2
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/16 v2, -0xe

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 264
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    .line 265
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 261
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    goto :goto_2

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x15e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 106
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 107
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setupActionListener()V

    .line 110
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->invalidateOptionsMenu()V

    .line 283
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setButtonClickable(Z)V

    .line 284
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 288
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    .line 289
    .local v1, "mIsUsingTwoPanes":Z
    if-eqz v1, :cond_1

    .line 290
    const-string v2, "clipboardEx"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 291
    .local v0, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;Landroid/sec/clipboard/ClipboardExManager;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    .end local v0    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->sIsTwoPaneMode:Z

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string v1, "actionCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    .line 121
    const-string v1, "mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMode:I

    .line 122
    const-string v1, "mSelectedCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    .line 126
    :cond_0
    const v1, 0x7f110012

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setTheme(I)V

    .line 127
    new-instance v1, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 132
    const v1, 0x7f040139

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setContentView(I)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->configureListFragment()V

    .line 135
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setupDropdownActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    .line 136
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIsMultiWindowSupported:Z

    .line 138
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mIsMultiWindowSupported:Z

    if-eqz v1, :cond_1

    .line 139
    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 140
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 143
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->sIsTwoPaneMode:Z

    if-nez v1, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->configureSearchView()V

    .line 147
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 149
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 152
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setButtonClickable(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 156
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 158
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setFinishOnTouchOutside(Z)V

    .line 159
    return-void

    :cond_4
    move v1, v3

    .line 117
    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 392
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 393
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 394
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 395
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 397
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 430
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 431
    .local v0, "filteredMetaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    packed-switch p1, :pswitch_data_0

    .line 445
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 434
    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v2, 0x15e

    if-ne v1, v2, :cond_1

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v1, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->runAddFavoriteListThread()V

    goto :goto_0

    .line 436
    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v2, 0x15f

    if-ne v1, v2, :cond_0

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v1, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->runDeleteFavoriteListThread()V

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public onModeChanged(Z)V
    .locals 3
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 537
    const-string v0, "FavoriteInterfaceActivity"

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

    .line 538
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 541
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 408
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 425
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 410
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->finish()V

    move v0, v1

    .line 411
    goto :goto_0

    .line 413
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->finish()V

    move v0, v1

    .line 414
    goto :goto_0

    .line 416
    :sswitch_2
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v2, 0x15e

    if-ne v0, v2, :cond_1

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->runAddFavoriteListThread()V

    :cond_0
    :goto_1
    move v0, v1

    .line 421
    goto :goto_0

    .line 418
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    const/16 v2, 0x15f

    if-ne v0, v2, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->runDeleteFavoriteListThread()V

    goto :goto_1

    .line 408
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 450
    sget-boolean v0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->sIsTwoPaneMode:Z

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSearchMode(Z)V

    .line 455
    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 452
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 460
    sget-boolean v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->sIsTwoPaneMode:Z

    if-nez v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    .line 462
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 463
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 464
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 469
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 222
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v0, "mode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v0, "mSelectedCount"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 548
    const-string v0, "FavoriteInterfaceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 165
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->finish()V

    .line 170
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 533
    :cond_0
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 3
    .param p1, "zoneInfo"    # I

    .prologue
    .line 544
    const-string v0, "FavoriteInterfaceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoneChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void
.end method

.method protected setButtonClickable(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 473
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mDoneButtonClickable:Z

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    .line 475
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 476
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mDoneButtonClickable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 487
    :cond_0
    :goto_1
    return-void

    .line 476
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 480
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    const v1, 0x7f090119

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 482
    .local v0, "buttonView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 483
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mDoneButtonClickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setonFavoritesActionBarUpdateListener(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;)V

    .line 493
    :cond_0
    return-void
.end method
