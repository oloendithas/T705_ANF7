.class public Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;
.super Landroid/app/Activity;
.source "ContactHistoryViewByActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactHistoryViewByListActivity"


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field mOptionIsChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    return-void
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const v7, 0x7f09011d

    const/4 v6, 0x0

    .line 93
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 94
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 95
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 96
    .local v0, "dimAmount":F
    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020988

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 98
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 103
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 104
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 105
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f040089

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 118
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 119
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 121
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const v1, 0x7f0e02b9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public doRevertActionMenu()V
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 228
    return-void
.end method

.method public doSaveAction([Z)V
    .locals 2
    .param p1, "mSortOptions"    # [Z

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "options"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 221
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 223
    return-void
.end method

.method public onChangedOptionItems(Z)V
    .locals 1
    .param p1, "optionIsChanged"    # Z

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    if-ne v0, p1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 234
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v1, "ContactHistoryViewByListActivity"

    const-string v2, "onCreate!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz p1, :cond_0

    .line 65
    const-string v1, "optionsChanged"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    .line 67
    :cond_0
    const v1, 0x7f040066

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090191

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    .line 78
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 79
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setupActionBar()V

    .line 80
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setExtras(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 191
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 192
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 193
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 201
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 205
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->linkListItemToOption()V

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getSortOptions()[Z

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->doSaveAction([Z)V

    goto :goto_0

    .line 209
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->doRevertActionMenu()V

    goto :goto_0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_1
        0x7f0904f6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 167
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 169
    .local v1, "config":Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x258

    if-gt v3, v4, :cond_0

    .line 171
    const v3, 0x7f0904db

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 172
    .local v2, "doneMenuItem":Landroid/view/MenuItem;
    const v3, 0x7f0904f6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 174
    .local v0, "cancelMenuItem":Landroid/view/MenuItem;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_1

    .line 175
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 176
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 183
    .end local v0    # "cancelMenuItem":Landroid/view/MenuItem;
    .end local v2    # "doneMenuItem":Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return v5

    .line 177
    .restart local v0    # "cancelMenuItem":Landroid/view/MenuItem;
    .restart local v2    # "doneMenuItem":Landroid/view/MenuItem;
    :cond_1
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 178
    const v3, 0x7f020632

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 179
    const v3, 0x7f020633

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    const-string v1, "selectAll"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setSelectAllCheckBox(Z)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    const-string v1, "options"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setSortOptions([Z)V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    const-string v0, "options"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getSortOptions()[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 158
    const-string v0, "selectAll"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getSelectAllCheckBox()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    const-string v0, "optionsChanged"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    return-void
.end method
