.class public Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "DeleteContactsActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteContactsActivity"

.field private static mSelectedCount:I


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

.field private moveToKnox:Z

.field private removeFromKnox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->moveToKnox:Z

    .line 77
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->removeFromKnox:Z

    .line 123
    new-instance v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 51
    sput p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->updateSaveButtonStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->updateActionBarTitle()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mDeco:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method private configFragmentDeleteMode()V
    .locals 4

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->isDeleteContactsInGroup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 354
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "GroupInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 355
    .local v0, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->EnableDeleteContactInGroupMode(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 359
    .end local v0    # "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteMode(Z)V

    goto :goto_0
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "createContentView"    # Z
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setContentView(I)V

    .line 219
    :cond_0
    const v0, 0x7f090202

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setAccountFilterHeaderClickabled(Z)V

    .line 221
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->configFragmentDeleteMode()V

    .line 223
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setTabletLayoutAttribute()V

    .line 226
    :cond_1
    return-void
.end method

.method private getActionBarTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "title":Ljava/lang/String;
    sget v1, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    if-lez v1, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03e3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_0
    :goto_0
    return-object v0

    .line 344
    :cond_1
    sget v1, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    if-nez v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSelected()I
    .locals 1

    .prologue
    .line 335
    sget v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    return v0
.end method

.method private setupMultiWindow()V
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mDeco:Landroid/view/View;

    .line 155
    const v1, 0x7f09011d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMainView:Landroid/view/View;

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 158
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private setupTitle()V
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0xe

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 212
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e003e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private updateActionBarTitle()V
    .locals 2

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getActionBarTitle()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    return-void
.end method

.method private updateSaveButtonStatus()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMenuDone:Landroid/view/MenuItem;

    sget v0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 326
    :cond_0
    return-void

    .line 324
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isDeleteContactsInGroup()Z
    .locals 3

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 363
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.sec.android.app.contacts.action.CONTACTS_DELETE_IN_GROUP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 382
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 384
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setTabletLayoutAttribute()V

    .line 388
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 87
    const-string v1, "MOVE_TO_KNOX"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->moveToKnox:Z

    .line 88
    const-string v1, "REMOVE_FROM_KNOX"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->removeFromKnox:Z

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsTablet:Z

    .line 92
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsMultiWindowSupported:Z

    .line 93
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsMultiWindowSupported:Z

    if-eqz v1, :cond_1

    .line 94
    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setupMultiWindow()V

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setupTitle()V

    .line 100
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v2, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 119
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setFinishOnTouchOutside(Z)V

    .line 120
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 278
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 279
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 281
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 282
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->updateSaveButtonStatus()V

    .line 284
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 184
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 188
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->moveToKnox:Z

    .line 189
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->removeFromKnox:Z

    .line 190
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 191
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 194
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onModeChanged(Z)V
    .locals 0
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setTabletLayoutAttribute()V

    .line 372
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 168
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 169
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 319
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 297
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->finish()V

    goto :goto_0

    .line 301
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->finish()V

    goto :goto_0

    .line 305
    :sswitch_2
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->moveToKnox:Z

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->requestMoveToKnoxContacts()V

    .line 307
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->finish()V

    goto :goto_0

    .line 308
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->removeFromKnox:Z

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->requestRemoveFromKnoxContacts()V

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->finish()V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->requestDeleteContacts()V

    goto :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->invalidateOptionsMenu()V

    .line 175
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 379
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->setTabletLayoutAttribute()V

    .line 147
    :cond_0
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "zoneInfo"    # I

    .prologue
    .line 375
    return-void
.end method

.method protected setTabletLayoutAttribute()V
    .locals 12

    .prologue
    const v11, 0x7f040089

    const/16 v10, 0x35

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 229
    const v5, 0x7f090196

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 230
    .local v1, "mainView":Landroid/view/View;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 231
    .local v4, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c020a

    invoke-virtual {v5, v6, v4, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 232
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 233
    .local v0, "dimAmount":F
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x3f000000

    invoke-virtual {v5, v6}, Landroid/view/Window;->setDimAmount(F)V

    .line 235
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsTablet:Z

    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isBlackTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 272
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 273
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 246
    .local v2, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 247
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 253
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 255
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 256
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 257
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 259
    .end local v2    # "param":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 262
    .restart local v2    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 266
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 268
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 269
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0
.end method
