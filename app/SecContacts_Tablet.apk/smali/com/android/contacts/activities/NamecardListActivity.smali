.class public Lcom/android/contacts/activities/NamecardListActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "NamecardListActivity.java"

# interfaces
.implements Lcom/android/contacts/list/NamecardListFragment$OnLoadFinishedListener;
.implements Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$OnGridViewLoadFinishedListener;


# static fields
.field public static final ACTION_JOIN_COMPLETED:Ljava/lang/String; = "joinCompleted"

.field public static final ACTION_SPLIT_COMPLETED:Ljava/lang/String; = "splitCompleted"

.field public static final DELETE_NAMECARD_LIST:Ljava/lang/String; = "com.android.contacts.action.DELTE_NAMECARD_LIST"

.field public static final DIALOG_DENY_JOIN:I = 0x1

.field public static final EXTRA_TARGET_CONTACT_ID:Ljava/lang/String; = "com.android.contacts.action.CONTACT_ID"

.field public static final INTENT_FROM:Ljava/lang/String; = "intentFrom"

.field public static final JOIN_FAIL:Ljava/lang/String; = "joinFail"

.field public static final KEY_IS_NAMECARD:Ljava/lang/String; = "is_namecard_contact"

.field public static MAX_JOINED_CONTACT_COUNT:I = 0x0

.field private static final REQUEST_CAPTURE_NAMECARD:I = 0x4d2

.field public static final SHOW_NAMECARD_LIST:Ljava/lang/String; = "com.android.contacts.action.SHOW_NAMECARD_LIST"

.field public static final SHOW_NAMECARD_VIEWER:Ljava/lang/String; = "com.android.contacts.action.SHOW_NAMECARD_VIEWER"

.field private static final TAG:Ljava/lang/String; = "NamecardListActivity"

.field public static isNamecardDemoMode:Z

.field private static mMenuDelete:Landroid/view/MenuItem;

.field private static mMenuNamecard:Landroid/view/MenuItem;

.field private static mMenuOrderby:Landroid/view/MenuItem;

.field private static mMenuSearch:Landroid/view/MenuItem;


# instance fields
.field private isUsingTwoPanel:Z

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mCurrentNamecardCount:I

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mIsMultiWindowSupported:Z

.field private mListFragment:Landroid/app/Fragment;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field mPreference:Lcom/android/contacts/preference/ContactsPreferences;

.field private mSearchBarVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_SetLinkCountMaxAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_SetLinkCountMaxAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sput v0, Lcom/android/contacts/activities/NamecardListActivity;->MAX_JOINED_CONTACT_COUNT:I

    .line 118
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/activities/NamecardListActivity;->isNamecardDemoMode:Z

    return-void

    .line 101
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mPreference:Lcom/android/contacts/preference/ContactsPreferences;

    .line 127
    iput v1, p0, Lcom/android/contacts/activities/NamecardListActivity;->mCurrentNamecardCount:I

    .line 128
    iput-boolean v1, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/NamecardListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/NamecardListActivity;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/NamecardListActivity;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/NamecardListActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method private buildDialog(I)V
    .locals 6
    .param p1, "sortOrder"    # I

    .prologue
    const/4 v5, 0x1

    .line 425
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    .line 426
    .local v1, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    const v3, 0x7f0e04d9

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/NamecardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 427
    const v2, 0x7f0e04da

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/NamecardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 428
    const/4 v2, 0x2

    const v3, 0x7f0e02a1

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/NamecardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 429
    const/4 v2, 0x3

    const v3, 0x7f0e0066

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/NamecardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 431
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/contacts/activities/NamecardListActivity$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/NamecardListActivity$3;-><init>(Lcom/android/contacts/activities/NamecardListActivity;)V

    invoke-virtual {v2, v1, p1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 450
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 451
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 452
    return-void
.end method

.method private hideInputMethod()V
    .locals 5

    .prologue
    .line 322
    iget-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    if-nez v2, :cond_0

    .line 323
    const/16 v0, 0x1e

    .line 325
    .local v0, "MASK":I
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0xc

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 327
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/NamecardListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 328
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 332
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 336
    .end local v0    # "MASK":I
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private setCustomActionBar()V
    .locals 2

    .prologue
    .line 214
    const v0, 0x7f09036b

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/NamecardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    const v0, 0x7f09036c

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/NamecardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/NamecardListActivity$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/NamecardListActivity$2;-><init>(Lcom/android/contacts/activities/NamecardListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method

.method private setLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 262
    iget-boolean v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 298
    if-ne p1, v4, :cond_1

    if-ne p2, v3, :cond_1

    .line 300
    iget-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z

    if-nez v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/contacts/list/NamecardListFragment;

    invoke-virtual {v2, p3}, Lcom/android/contacts/list/NamecardListFragment;->onPickerResult(Landroid/content/Intent;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const/16 v2, 0x4d2

    if-ne p1, v2, :cond_0

    if-ne p2, v3, :cond_0

    .line 304
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 305
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 306
    .local v1, "createIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 307
    const-string v2, "is_namecard_contact"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    const-string v2, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/NamecardListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    instance-of v0, p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    if-eqz v0, :cond_0

    .line 135
    check-cast p1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    instance-of v0, p1, Lcom/android/contacts/list/NamecardListFragment;

    if-eqz v0, :cond_0

    .line 139
    check-cast p1, Lcom/android/contacts/list/NamecardListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z

    if-eqz v0, :cond_0

    .line 395
    iget-boolean v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    if-eqz v0, :cond_1

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    .line 397
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    iget-boolean v1, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->setCustomActionBar(Z)V

    .line 404
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/contacts/list/NamecardListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/NamecardListFragment;->clearSearchViewFocus()V

    .line 403
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCountChanged(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 408
    iput p1, p0, Lcom/android/contacts/activities/NamecardListActivity;->mCurrentNamecardCount:I

    .line 409
    sget-object v0, Lcom/android/contacts/activities/NamecardListActivity;->mMenuDelete:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 410
    sget-object v3, Lcom/android/contacts/activities/NamecardListActivity;->mMenuDelete:Landroid/view/MenuItem;

    if-lez p1, :cond_3

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 412
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/NamecardListActivity;->mMenuOrderby:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 413
    sget-object v3, Lcom/android/contacts/activities/NamecardListActivity;->mMenuOrderby:Landroid/view/MenuItem;

    if-lez p1, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 415
    :cond_1
    sget-object v0, Lcom/android/contacts/activities/NamecardListActivity;->mMenuSearch:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 416
    sget-object v0, Lcom/android/contacts/activities/NamecardListActivity;->mMenuSearch:Landroid/view/MenuItem;

    if-lez p1, :cond_5

    iget-boolean v3, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    if-nez v3, :cond_5

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 410
    goto :goto_0

    :cond_4
    move v0, v2

    .line 413
    goto :goto_1

    :cond_5
    move v1, v2

    .line 416
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x4

    .line 146
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mPreference:Lcom/android/contacts/preference/ContactsPreferences;

    .line 149
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z

    .line 151
    iget-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_3

    .line 152
    const v2, 0x7f04019a

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/NamecardListActivity;->setContentView(I)V

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e04d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/NamecardListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 159
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 160
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 165
    :goto_1
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mIsMultiWindowSupported:Z

    .line 168
    iget-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_0

    .line 169
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 176
    invoke-direct {p0}, Lcom/android/contacts/activities/NamecardListActivity;->setLayout()V

    .line 178
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    if-nez v2, :cond_1

    .line 179
    iget-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_5

    .line 180
    new-instance v2, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    .line 185
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0903a5

    iget-object v4, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 189
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_6

    .line 190
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/NamecardListActivity;->mPreference:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getNamecardSortOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->setNamecardSortOrder(I)V

    .line 197
    :goto_3
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isEasyModeSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    new-instance v2, Lcom/android/contacts/activities/NamecardListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/NamecardListActivity$1;-><init>(Lcom/android/contacts/activities/NamecardListActivity;)V

    iput-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/activities/NamecardListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_2
    return-void

    .line 154
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_3
    const v2, 0x7f04019c

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/NamecardListActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 162
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/NamecardListActivity;->setCustomActionBar()V

    goto :goto_1

    .line 182
    :cond_5
    new-instance v2, Lcom/android/contacts/list/NamecardListFragment;

    invoke-direct {v2}, Lcom/android/contacts/list/NamecardListFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    goto :goto_2

    .line 193
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/contacts/list/NamecardListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/NamecardListActivity;->mPreference:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getNamecardSortOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/NamecardListFragment;->setNamecardSortOrder(I)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 227
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 228
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 229
    const v1, 0x7f0904f5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/activities/NamecardListActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 230
    const v1, 0x7f09052c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/activities/NamecardListActivity;->mMenuOrderby:Landroid/view/MenuItem;

    .line 231
    const v1, 0x7f0904a2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/activities/NamecardListActivity;->mMenuSearch:Landroid/view/MenuItem;

    .line 234
    const v1, 0x7f09052b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/activities/NamecardListActivity;->mMenuNamecard:Landroid/view/MenuItem;

    .line 235
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    sget-object v1, Lcom/android/contacts/activities/NamecardListActivity;->mMenuNamecard:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 239
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 284
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/contacts/activities/NamecardListActivity;->hideInputMethod()V

    .line 341
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 346
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 389
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_1
    return v2

    .line 348
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_1

    .line 349
    iget-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    if-eqz v2, :cond_2

    .line 350
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    .line 351
    invoke-direct {p0}, Lcom/android/contacts/activities/NamecardListActivity;->hideInputMethod()V

    .line 352
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    iget-boolean v4, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->setCustomActionBar(Z)V

    move v2, v3

    .line 353
    goto :goto_1

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/contacts/list/NamecardListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/NamecardListFragment;->clearSearchViewFocus()V

    .line 358
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->finish()V

    move v2, v3

    .line 359
    goto :goto_1

    .line 361
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/activities/NamecardListActivity;->hideInputMethod()V

    .line 362
    iget-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_3

    .line 363
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->startActionMode(Z)V

    goto :goto_0

    .line 365
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.DELTE_NAMECARD_LIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "delIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/NamecardListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 370
    .end local v0    # "delIntent":Landroid/content/Intent;
    :sswitch_2
    invoke-direct {p0}, Lcom/android/contacts/activities/NamecardListActivity;->hideInputMethod()V

    .line 371
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.bcocr"

    const-string v4, "com.sec.android.app.bcocr.OCR"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v2, "OCR_NAMECARD_CAPTURE_TYPE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const/16 v2, 0x4d2

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/activities/NamecardListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 377
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_3
    invoke-direct {p0}, Lcom/android/contacts/activities/NamecardListActivity;->hideInputMethod()V

    .line 378
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mPreference:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getNamecardSortOrder()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/NamecardListActivity;->buildDialog(I)V

    goto :goto_0

    .line 381
    :sswitch_4
    iget-boolean v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_0

    .line 382
    iput-boolean v3, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    .line 383
    iget-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    iget-boolean v3, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->setCustomActionBar(Z)V

    goto :goto_0

    .line 346
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904a2 -> :sswitch_4
        0x7f0904f5 -> :sswitch_1
        0x7f09052b -> :sswitch_2
        0x7f09052c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 244
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 245
    sget-object v0, Lcom/android/contacts/activities/NamecardListActivity;->mMenuDelete:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 246
    sget-object v3, Lcom/android/contacts/activities/NamecardListActivity;->mMenuDelete:Landroid/view/MenuItem;

    iget v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mCurrentNamecardCount:I

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 248
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/NamecardListActivity;->mMenuOrderby:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 249
    sget-object v3, Lcom/android/contacts/activities/NamecardListActivity;->mMenuOrderby:Landroid/view/MenuItem;

    iget v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mCurrentNamecardCount:I

    if-lez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 251
    :cond_1
    sget-object v0, Lcom/android/contacts/activities/NamecardListActivity;->mMenuSearch:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 252
    sget-object v0, Lcom/android/contacts/activities/NamecardListActivity;->mMenuSearch:Landroid/view/MenuItem;

    iget v3, p0, Lcom/android/contacts/activities/NamecardListActivity;->mCurrentNamecardCount:I

    if-lez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    :cond_3
    return v1

    :cond_4
    move v0, v2

    .line 246
    goto :goto_0

    :cond_5
    move v0, v2

    .line 249
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 294
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    return-void
.end method

.method public setSearchBarVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/android/contacts/activities/NamecardListActivity;->mSearchBarVisible:Z

    .line 422
    return-void
.end method

.method public showContactsUnavailableFragment()V
    .locals 3

    .prologue
    .line 314
    new-instance v0, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 315
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setNoContactType(I)V

    .line 316
    invoke-virtual {p0}, Lcom/android/contacts/activities/NamecardListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090196

    iget-object v2, p0, Lcom/android/contacts/activities/NamecardListActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 319
    return-void
.end method
