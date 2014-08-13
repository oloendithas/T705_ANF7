.class public Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "PrivateContactsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivateContactsActivity"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mDeco:Landroid/view/View;

.field private mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field private mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mIsMultiWindowSupported:Z

.field private mIsTablet:Z

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMainView:Landroid/view/View;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mSelectedCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mSelectedCount:I

    .line 102
    new-instance v0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->updateSaveButtonStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->updateActionBarTitle()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mDeco:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method private configFragmentAddPrivateMode()V
    .locals 5

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "remove"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setAddPrivateMode(ZZ)V

    .line 301
    return-void
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "createContentView"    # Z
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->setContentView(I)V

    .line 198
    :cond_0
    const v0, 0x7f090202

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setAccountFilterHeaderClickabled(Z)V

    .line 201
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->configFragmentAddPrivateMode()V

    .line 203
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->setTabletLayoutAttribute()V

    .line 206
    :cond_1
    return-void
.end method

.method private getActionBarTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "title":Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mSelectedCount:I

    if-lez v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03e3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mSelectedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_0
    return-object v0
.end method

.method private setupMultiWindow()V
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mDeco:Landroid/view/View;

    .line 134
    const v1, 0x7f09011d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMainView:Landroid/view/View;

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 137
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private setupTitle()V
    .locals 4

    .prologue
    const/16 v3, 0xe

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 191
    :cond_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remove"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e0226

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e0225

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private updateActionBarTitle()V
    .locals 3

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getActionBarTitle()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSaveButtonStatus()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMenuDone:Landroid/view/MenuItem;

    iget v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mSelectedCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 275
    :cond_0
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mIsTablet:Z

    .line 79
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mIsMultiWindowSupported:Z

    .line 80
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mIsMultiWindowSupported:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->setupMultiWindow()V

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->setupTitle()V

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setAddPrivateContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;)V

    .line 99
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 242
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 244
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 245
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->updateSaveButtonStatus()V

    .line 247
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 157
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 162
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 163
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 166
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 148
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 268
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 254
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->finish()V

    goto :goto_0

    .line 258
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->finish()V

    goto :goto_0

    .line 262
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->requestAddPrivateContacts()V

    goto :goto_0

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->setTabletLayoutAttribute()V

    .line 126
    :cond_0
    return-void
.end method

.method protected setTabletLayoutAttribute()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 209
    const v3, 0x7f090196

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, "mainView":Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->setDimAmount(F)V

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x106000b

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 235
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 236
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->setDimAmount(F)V

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 218
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 221
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 222
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 233
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f040089

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 224
    .end local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x3f000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 226
    .restart local v1    # "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 228
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 230
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 231
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method
