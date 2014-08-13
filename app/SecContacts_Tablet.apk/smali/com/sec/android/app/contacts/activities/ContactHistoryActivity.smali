.class public Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactHistoryActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
.implements Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;


# static fields
.field public static final KEY_DELETE_MODE:Ljava/lang/String; = "deleteMode"

.field public static final KEY_OPTIONS:Ljava/lang/String; = "options"

.field private static final REQUEST_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContactHistoryActivity"

.field public static mActive:Z


# instance fields
.field public mEveryBodyIsOff:Z

.field private mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

.field public mIsDeleteMode:Z

.field public mIsExistItems:Z

.field private mIsMultiWindowSupported:Z

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSortOptions:[Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    .line 80
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    return-void
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x0

    .line 129
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 130
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 131
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 132
    .local v0, "dimAmount":F
    const v3, 0x7f09011d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 133
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 138
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 139
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 140
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f040089

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method private updateDeleteMode(Z)V
    .locals 4
    .param p1, "isDeleteMode"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setMode(Z)V

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->setupActionBar()V

    .line 350
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void
.end method


# virtual methods
.method protected doDeleteAction()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->doDeleteAction()V

    .line 365
    return-void
.end method

.method protected doRevertActionMenu()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    .line 361
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 243
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 284
    :goto_0
    return-void

    .line 246
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 248
    :pswitch_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    .line 249
    .local v2, "isPhone":Z
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 250
    .local v1, "isMMS":Z
    const-string v3, "options"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    .line 251
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    if-eqz v3, :cond_1

    .line 254
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    if-eqz v2, :cond_2

    .line 257
    const-string v3, "view_by_call"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v3, "view_by_email"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 279
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateSharedPrefs()V

    goto :goto_0

    .line 260
    :cond_2
    const-string v3, "view_by_email"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 263
    :cond_3
    if-eqz v2, :cond_4

    .line 264
    const-string v3, "view_by_call"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    const-string v3, "view_by_message"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-string v3, "view_by_email"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v3, "view_by_im"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 268
    :cond_4
    if-eqz v1, :cond_5

    .line 269
    const-string v3, "view_by_message"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 270
    const-string v3, "view_by_email"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 271
    const-string v3, "view_by_im"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 273
    :cond_5
    const-string v3, "view_by_email"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 274
    const-string v3, "view_by_im"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 178
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v3, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sput-boolean v3, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mActive:Z

    .line 92
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsMultiWindowSupported:Z

    .line 94
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsMultiWindowSupported:Z

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 103
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 105
    const v1, 0x7f040061

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f09017b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setDeleteMode(Z)V

    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 111
    if-eqz p1, :cond_1

    .line 112
    const-string v1, "deleteMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->setupActionBar()V

    .line 115
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 117
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 120
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 292
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12001c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 298
    :goto_0
    return v2

    .line 294
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 295
    .restart local v0    # "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 296
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 191
    sput-boolean v1, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mActive:Z

    .line 192
    return-void
.end method

.method public onExistsDeletedItems(Z)V
    .locals 1
    .param p1, "everyBodyIsOff"    # Z

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    if-ne v0, p1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    .line 373
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onFinishedDeletion(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .prologue
    .line 378
    if-eqz p1, :cond_0

    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    .line 380
    :cond_0
    return-void
.end method

.method public onModeChanged(Z)V
    .locals 3
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 398
    const-string v0, "ContactHistoryActivity"

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

    .line 399
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 400
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 238
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 215
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 222
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->doRevertActionMenu()V

    goto :goto_0

    .line 225
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->doDeleteAction()V

    goto :goto_0

    .line 228
    :sswitch_3
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    goto :goto_0

    .line 231
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, "intentViewby":Landroid/content/Intent;
    const-string v1, "options"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getSortOptions()[Z

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f5 -> :sswitch_3
        0x7f0904f6 -> :sswitch_1
        0x7f090529 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 304
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 305
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getAdapter()Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    .line 306
    const v5, 0x7f0904f5

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 311
    :goto_1
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    .line 312
    .local v2, "isPhone":Z
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 314
    .local v1, "isMMS":Z
    const/4 v3, 0x0

    .line 316
    .local v3, "itemCount":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 318
    if-eqz v2, :cond_2

    .line 319
    const/4 v3, 0x2

    .line 333
    :goto_2
    if-gt v3, v6, :cond_6

    .line 334
    const v5, 0x7f090529

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    .end local v1    # "isMMS":Z
    .end local v2    # "isPhone":Z
    .end local v3    # "itemCount":I
    :goto_4
    return v4

    :cond_0
    move v5, v4

    .line 305
    goto :goto_0

    .line 308
    :cond_1
    const v5, 0x7f0904db

    :try_start_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v7, 0x7f0e003e

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_4

    .line 321
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "isMMS":Z
    .restart local v2    # "isPhone":Z
    .restart local v3    # "itemCount":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    .line 324
    :cond_3
    if-eqz v2, :cond_4

    .line 325
    const/4 v3, 0x3

    goto :goto_2

    .line 326
    :cond_4
    if-eqz v1, :cond_5

    .line 327
    const/4 v3, 0x2

    goto :goto_2

    .line 329
    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    .line 336
    :cond_6
    const v5, 0x7f090529

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public onQueryCompleted(Z)V
    .locals 1
    .param p1, "hasItems"    # Z

    .prologue
    .line 385
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    if-eq v0, p1, :cond_1

    .line 390
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    .line 391
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 393
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 126
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    const-string v0, "deleteMode"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 404
    const-string v0, "ContactHistoryActivity"

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

    .line 405
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 3
    .param p1, "zoneInfo"    # I

    .prologue
    .line 410
    const-string v0, "ContactHistoryActivity"

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

    .line 411
    return-void
.end method

.method setupActionBar()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 153
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 154
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    if-nez v1, :cond_1

    .line 155
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 157
    const v1, 0x7f0e0298

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 160
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :cond_2
    const v1, 0x7f0e02f4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
