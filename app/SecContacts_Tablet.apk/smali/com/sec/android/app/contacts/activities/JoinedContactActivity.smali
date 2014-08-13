.class public Lcom/sec/android/app/contacts/activities/JoinedContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "JoinedContactActivity.java"


# static fields
.field public static final JOINED_CONTACT:Ljava/lang/String; = "com.android.contacts.action.JOINED_CONTACT"

.field private static final TAG:Ljava/lang/String; = "JoinedContactActivity"


# instance fields
.field private isUsingTwoPanel:Z

.field private mIsMultiWindowSupported:Z

.field private mLinkedContactsCount:I

.field private mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

.field private mLookupUri:Landroid/net/Uri;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mUnlinkOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLinkedContactsCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->showJoinAggregateActivity()V

    return-void
.end method

.method private setCustomActionBar()V
    .locals 2

    .prologue
    .line 141
    const v0, 0x7f09036b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    const v0, 0x7f09036c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method private setLayout()V
    .locals 6

    .prologue
    .line 154
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 155
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 156
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 157
    .local v0, "dimAmount":F
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->isUsingTwoPanel:Z

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 163
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 164
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 165
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 167
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f040089

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method private showJoinAggregateActivity()V
    .locals 4

    .prologue
    .line 248
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.CONTACT_ID"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 253
    const-string v1, "intentFrom"

    const-string v2, "joinedcontact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 70
    instance-of v0, p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    .line 73
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 259
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getSelectedContactUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 265
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    .line 77
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v3, 0x7f040181

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 80
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "UNLINK_ONLY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mUnlinkOnly:Z

    .line 81
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->isUsingTwoPanel:Z

    .line 83
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mIsMultiWindowSupported:Z

    .line 86
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mIsMultiWindowSupported:Z

    if-eqz v3, :cond_0

    .line 87
    new-instance v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 94
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 96
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mUnlinkOnly:Z

    if-eqz v3, :cond_3

    .line 97
    const v3, 0x7f0e004e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 102
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 103
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 104
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 111
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 112
    const v3, 0x7f090376

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 113
    .local v1, "button":Landroid/widget/Button;
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mUnlinkOnly:Z

    if-eqz v3, :cond_1

    .line 114
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_1
    new-instance v3, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setLayout()V

    .line 130
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    if-nez v3, :cond_2

    .line 131
    new-instance v3, Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f090196

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 137
    :cond_2
    return-void

    .line 99
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "button":Landroid/widget/Button;
    :cond_3
    const v3, 0x7f0e027c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 108
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setCustomActionBar()V

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 231
    :goto_0
    return-object v0

    .line 224
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e027c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e027e

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/android/contacts/activities/JoinContactActivity;->MAX_JOINED_CONTACT_COUNT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "action":Ljava/lang/String;
    const-string v1, "splitCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->onSplitCompleted(Landroid/net/Uri;)V

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 208
    :cond_2
    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "joinFail"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->onJoinCompleted(Landroid/net/Uri;)V

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 280
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 275
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->onBackPressed()V

    .line 276
    const/4 v0, 0x1

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 186
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getSelectedContactUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 191
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setLayout()V

    .line 181
    :cond_0
    return-void
.end method

.method public setExplainText()V
    .locals 3

    .prologue
    .line 239
    const v1, 0x7f090375

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, "explainView":Landroid/view/View;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLinkedContactsCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mUnlinkOnly:Z

    if-nez v1, :cond_0

    .line 241
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLinkedContactsCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLinkedContactsCount:I

    .line 236
    return-void
.end method
