.class public Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupSelectionActivity.java"


# static fields
.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final EXTRA_GROUP_CHECKED_LIST:Ljava/lang/String; = "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

.field public static final EXTRA_GROUP_CHECKED_STRING_LIST:Ljava/lang/String; = "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

.field public static final EXTRA_GROUP_IS_GOOGLE:Ljava/lang/String; = "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

.field public static final EXTRA_TARGET_CONTACT_ID:Ljava/lang/String; = "android.intent.extra.CONTACT_ID"

.field public static final EXTRA_TARGET_RAWCONTACT_ID:Ljava/lang/String; = "android.intent.extra.RAWCONTACT_ID"

.field public static final INVALID_VALUE:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "GroupSelectionActivity"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCheckedGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneButtonStatus:Z

.field private mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

.field private mIsMultiWindowSupported:Z

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mRawContactId:J

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method private buildActionBar()V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mDoneButtonStatus:Z

    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e0287

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateWindowLayout()V
    .locals 7

    .prologue
    .line 258
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 259
    .local v3, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c020a

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 260
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 261
    .local v0, "dimAmount":F
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    const v4, 0x7f090316

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 263
    .local v1, "mainView":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 280
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 282
    .end local v1    # "mainView":Landroid/view/View;
    :cond_0
    return-void

    .line 267
    .restart local v1    # "mainView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 269
    .local v2, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 270
    const/16 v4, 0x35

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 271
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f040089

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 110
    instance-of v0, p1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .line 113
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 178
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->updateWindowLayout()V

    .line 154
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->updateActionBar()V

    .line 155
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    .line 75
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.RAWCONTACT_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mRawContactId:J

    .line 80
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mCheckedGroupList:Ljava/util/ArrayList;

    .line 83
    const-string v2, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mTitles:Ljava/util/ArrayList;

    .line 86
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mIsMultiWindowSupported:Z

    .line 89
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_0

    .line 90
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 97
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 99
    const v2, 0x7f040154

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f090317

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->loadData(Landroid/os/Bundle;)V

    .line 105
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->buildActionBar()V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 183
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 184
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f0e025f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 119
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    if-nez v6, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "strTitle":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 126
    .local v4, "groupUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 128
    .local v2, "extras":Landroid/os/Bundle;
    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 130
    .local v3, "groupIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 132
    .local v0, "Titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mCheckedGroupList:Ljava/util/ArrayList;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mTitles:Ljava/util/ArrayList;

    .line 134
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->loadData(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 202
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 206
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 210
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.RAWCONTACT_ID"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    .line 212
    .local v1, "isEditMode":Z
    if-eqz v1, :cond_0

    .line 213
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getSelecedGroupId()Ljava/util/ArrayList;

    move-result-object v2

    .line 214
    .local v2, "selectedGroupIdArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getSelectedGroupTitle()Ljava/util/ArrayList;

    move-result-object v3

    .line 215
    .local v3, "selectedGroupTitleArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "rawContactId"

    iget-wide v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mRawContactId:J

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    const-string v5, "selectedGroupId"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 218
    const-string v5, "selectedGroupTitle"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 219
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 222
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "selectedGroupIdArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "selectedGroupTitleArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateGroup()V

    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 173
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mDoneButtonStatus:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 194
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 166
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->updateWindowLayout()V

    .line 167
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->updateActionBar()V

    .line 168
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 143
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 145
    const/4 v1, 0x0

    .line 147
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->updateWindowLayout()V

    .line 161
    :cond_0
    return-void
.end method

.method public setDoneButtonStatus(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mDoneButtonStatus:Z

    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 287
    return-void
.end method
