.class public Lcom/android/contacts/activities/JoinContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "JoinContactActivity.java"


# static fields
.field public static final ACTION_JOIN_COMPLETED:Ljava/lang/String; = "joinCompleted"

.field public static final ACTION_SPLIT_COMPLETED:Ljava/lang/String; = "splitCompleted"

.field public static final DIALOG_DENY_JOIN:I = 0x1

.field public static final EXTRA_TARGET_CONTACT_ID:Ljava/lang/String; = "com.android.contacts.action.CONTACT_ID"

.field public static final INTENT_FROM:Ljava/lang/String; = "intentFrom"

.field public static final JOIN_CONTACT:Ljava/lang/String; = "com.android.contacts.action.JOIN_CONTACT"

.field public static final JOIN_FAIL:Ljava/lang/String; = "joinFail"

.field private static final KEY_TARGET_CONTACT_ID:Ljava/lang/String; = "targetContactId"

.field public static MAX_JOINED_CONTACT_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JoinContactActivity"


# instance fields
.field private isUsingTwoPanel:Z

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mIntentFrom:Ljava/lang/String;

.field private mIsMultiWindowSupported:Z

.field private mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mTargetContactId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
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
    sput v0, Lcom/android/contacts/activities/JoinContactActivity;->MAX_JOINED_CONTACT_COUNT:I

    return-void

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/JoinContactActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/JoinContactActivity;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/JoinContactActivity;->joinAggregate(J)V

    return-void
.end method

.method private joinAggregate(J)V
    .locals 9
    .param p1, "contactId"    # J

    .prologue
    const/4 v5, 0x1

    .line 273
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIntentFrom:Ljava/lang/String;

    const-string v1, "mainlist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    const-class v6, Lcom/android/contacts/activities/PeopleActivity;

    const-string v7, "joinCompleted"

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 276
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/JoinContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 289
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIntentFrom:Ljava/lang/String;

    const-string v1, "detailview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    const-class v6, Lcom/android/contacts/activities/ContactDetailActivity;

    const-string v7, "joinCompleted"

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 280
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/JoinContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 281
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIntentFrom:Ljava/lang/String;

    const-string v1, "joinedcontact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    const-class v6, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    const-string v7, "joinCompleted"

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 284
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/JoinContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 286
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v0, "JoinContactActivity"

    const-string v1, "do not join contact"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCustomActionBar()V
    .locals 2

    .prologue
    .line 167
    const v0, 0x7f09036b

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    const v0, 0x7f09036c

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/JoinContactActivity$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/JoinContactActivity$1;-><init>(Lcom/android/contacts/activities/JoinContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method

.method private setLayout()V
    .locals 6

    .prologue
    .line 217
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 218
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 219
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 220
    .local v0, "dimAmount":F
    iget-boolean v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->isUsingTwoPanel:Z

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 226
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 227
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 228
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 230
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f040089

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 253
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/JoinContactListFragment;->onPickerResult(Landroid/content/Intent;)V

    .line 257
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 104
    instance-of v0, p1, Lcom/android/contacts/list/JoinContactListFragment;

    if-eqz v0, :cond_0

    .line 105
    check-cast p1, Lcom/android/contacts/list/JoinContactListFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    .line 106
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setupActionListener()V

    .line 108
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const-wide/16 v5, -0x1

    .line 112
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v3, 0x7f04017b

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/JoinContactActivity;->setContentView(I)V

    .line 114
    const v3, 0x7f0e0050

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/JoinContactActivity;->setTitle(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 116
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_1

    .line 117
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 123
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "intentFrom"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIntentFrom:Ljava/lang/String;

    .line 124
    const-string v3, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    .line 125
    iget-wide v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 126
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "action":Ljava/lang/String;
    const-string v3, "JoinContactActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is missing required extra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/JoinContactActivity;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    .line 163
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 120
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setCustomActionBar()V

    goto :goto_0

    .line 134
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->isUsingTwoPanel:Z

    .line 136
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIsMultiWindowSupported:Z

    .line 139
    iget-boolean v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mIsMultiWindowSupported:Z

    if-eqz v3, :cond_3

    .line 140
    new-instance v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 145
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 147
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/JoinContactActivity;->setFinishOnTouchOutside(Z)V

    .line 149
    invoke-direct {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setLayout()V

    .line 153
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    if-nez v3, :cond_4

    .line 154
    new-instance v3, Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {v3}, Lcom/android/contacts/list/JoinContactListFragment;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    .line 156
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f090196

    iget-object v5, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 160
    :cond_4
    iget-wide v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    iget-wide v4, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactId(J)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 300
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 295
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    .line 296
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 248
    const-string v0, "targetContactId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    .line 249
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    const-string v0, "targetContactId"

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 243
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setLayout()V

    .line 211
    :cond_0
    return-void
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactId(J)V

    .line 178
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    new-instance v1, Lcom/android/contacts/activities/JoinContactActivity$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/JoinContactActivity$2;-><init>(Lcom/android/contacts/activities/JoinContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 205
    return-void
.end method

.method public showContactsUnavailableFragment()V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 261
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setNoContactType(I)V

    .line 262
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090196

    iget-object v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 265
    return-void
.end method
