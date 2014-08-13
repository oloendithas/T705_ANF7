.class public Lcom/android/contacts/activities/NamecardDeleteActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "NamecardDeleteActivity.java"

# interfaces
.implements Lcom/android/contacts/list/NamecardListFragment$OnLoadFinishedListener;


# static fields
.field public static final DIALOG_DENY_JOIN:I = 0x1

.field public static isNamecardDemoMode:Z

.field private static mSelectedCount:I


# instance fields
.field private isUsingTwoPanel:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mDeco:Landroid/view/View;

.field private mFragment:Lcom/android/contacts/list/NamecardListFragment;

.field private mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mIsMultiWindowSupported:Z

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMainView:Landroid/view/View;

.field private mMenuDone:Landroid/view/MenuItem;

.field mPreference:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/activities/NamecardDeleteActivity;->isNamecardDemoMode:Z

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mSelectedCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mPreference:Lcom/android/contacts/preference/ContactsPreferences;

    .line 81
    new-instance v0, Lcom/android/contacts/activities/NamecardDeleteActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/NamecardDeleteActivity$2;-><init>(Lcom/android/contacts/activities/NamecardDeleteActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 27
    sput p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mSelectedCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/NamecardDeleteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/NamecardDeleteActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->updateSaveButtonStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/NamecardDeleteActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/NamecardDeleteActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/NamecardDeleteActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/NamecardDeleteActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mDeco:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/NamecardDeleteActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/NamecardDeleteActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "createContentView"    # Z
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    const v0, 0x7f04019c

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->setContentView(I)V

    .line 172
    :cond_0
    const v0, 0x7f0903a5

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/NamecardListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mFragment:Lcom/android/contacts/list/NamecardListFragment;

    .line 173
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mFragment:Lcom/android/contacts/list/NamecardListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/NamecardListFragment;->setAccountFilterHeaderClickabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mFragment:Lcom/android/contacts/list/NamecardListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/NamecardListFragment;->setDeleteMode(Z)V

    .line 175
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v0, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mPreference:Lcom/android/contacts/preference/ContactsPreferences;

    .line 176
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mFragment:Lcom/android/contacts/list/NamecardListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mPreference:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getNamecardSortOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/NamecardListFragment;->setNamecardSortOrder(I)V

    .line 177
    return-void
.end method

.method public static getSelected()I
    .locals 1

    .prologue
    .line 264
    sget v0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mSelectedCount:I

    return v0
.end method

.method private setupTitle()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    .line 153
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 165
    :cond_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e003e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private updateSaveButtonStatus()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    sget v0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mSelectedCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 261
    :cond_0
    return-void

    .line 259
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->invalidateOptionsMenu()V

    .line 233
    return-void
.end method

.method public onCountChanged(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 289
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 55
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->setupTitle()V

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/activities/NamecardDeleteActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 69
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 71
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mFragment:Lcom/android/contacts/list/NamecardListFragment;

    new-instance v1, Lcom/android/contacts/activities/NamecardDeleteActivity$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/NamecardDeleteActivity$1;-><init>(Lcom/android/contacts/activities/NamecardDeleteActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/NamecardListFragment;->setDeleteContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;)V

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 211
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 212
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 214
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 215
    invoke-direct {p0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->updateSaveButtonStatus()V

    .line 217
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mFragment:Lcom/android/contacts/list/NamecardListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/NamecardListFragment;->setDeleteContactsListener(Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;)V

    .line 134
    iget-object v1, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 136
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 141
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 142
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/NamecardDeleteActivity;->setIntent(Landroid/content/Intent;)V

    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/activities/NamecardDeleteActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 254
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 240
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->finish()V

    goto :goto_0

    .line 244
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->finish()V

    goto :goto_0

    .line 248
    :sswitch_2
    iget-object v1, p0, Lcom/android/contacts/activities/NamecardDeleteActivity;->mFragment:Lcom/android/contacts/list/NamecardListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/NamecardListFragment;->requestDeleteContacts()V

    goto :goto_0

    .line 238
    nop

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
    .line 222
    const v0, 0x7f0904db

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0e003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 223
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
