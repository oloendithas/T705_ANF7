.class public Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionEmergencyMessageDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$1;,
        Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$InteractionEmergencyMessageDeleteActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InteractionEmergencyMessageDeleteActivity"


# instance fields
.field private final GROUPS_PICKER_TAG:Ljava/lang/String;

.field private mDoneButtonClickable:Z

.field private mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

.field protected mInteractionLayout:Landroid/view/View;

.field private mIsMultiWindowSupported:Z

.field private mIsRecreatedInstance:Z

.field private mIsTablet:Z

.field protected mListener:Lcom/sec/android/app/contacts/list/OnActionBarClickListener;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 59
    const-string v0, "emergencyMessageDeleteTag"

    iput-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->GROUPS_PICKER_TAG:Ljava/lang/String;

    .line 290
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mDoneButtonClickable:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mDoneButtonClickable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->setDoneButtonClickable(Z)V

    return-void
.end method

.method private setDoneButtonClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 288
    :cond_0
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFragment()V
    .locals 4

    .prologue
    .line 269
    const-string v2, "InteractionEmergencyMessageDeleteActivity"

    const-string v3, "updateFragment"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 272
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 274
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    :cond_0
    const-string v2, "InteractionEmergencyMessageDeleteActivity"

    const-string v3, "mInteractionGroupMemberPickerFragment null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->configureListFragment()V

    .line 281
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public actionBarSetup()Landroid/app/ActionBar;
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 129
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 135
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    return-object v0
.end method

.method public configureListFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    const-string v0, "InteractionEmergencyMessageDeleteActivity"

    const-string v1, "configureListFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setDirectorySearchMode(I)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setMultiSelectEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    new-instance v1, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$InteractionEmergencyMessageDeleteActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$InteractionEmergencyMessageDeleteActionListener;-><init>(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->setEmergencyMessageDeleteActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V

    .line 175
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 258
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 265
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 260
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 261
    .local v0, "action":I
    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_0

    .line 82
    instance-of v0, p1, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    .line 85
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 146
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020633

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020632

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mIsMultiWindowSupported:Z

    .line 94
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_0

    .line 95
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 98
    :cond_0
    if-eqz p1, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mIsRecreatedInstance:Z

    .line 100
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mIsTablet:Z

    .line 102
    const v2, 0x7f04006f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->setContentView(I)V

    .line 104
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mIsTablet:Z

    if-eqz v2, :cond_1

    .line 105
    const v2, 0x7f0901a2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionLayout:Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->setLayoutAttribute(IZ)V

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->actionBarSetup()Landroid/app/ActionBar;

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 112
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 114
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const-string v2, "emergencyMessageDeleteTag"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    .line 116
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    if-nez v2, :cond_2

    .line 117
    new-instance v2, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    .line 118
    const v2, 0x7f090196

    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    const-string v4, "emergencyMessageDeleteTag"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 121
    :cond_2
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->configureListFragment()V

    .line 124
    return-void

    .line 98
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 182
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 184
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f0e02f4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 186
    const v1, 0x7f0904f6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 188
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 211
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 203
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->finish()V

    goto :goto_0

    .line 206
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionEmergencyMessageDeleteFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteFragment;->onPickerResult()V

    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_1
        0x7f0904f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 193
    const-string v0, "InteractionEmergencyMessageDeleteActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 251
    const-string v0, "InteractionEmergencyMessageDeleteActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 253
    invoke-direct {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->updateFragment()V

    .line 254
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 2
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->setLayoutAttribute(IZ)V

    .line 219
    :cond_0
    return-void
.end method

.method protected setLayoutAttribute(IZ)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "isCreated"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 222
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 225
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 226
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 246
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 247
    return-void

    .line 228
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x3f000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 231
    .local v0, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 233
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 234
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 235
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 244
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f040089

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 237
    .end local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 238
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 239
    .restart local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method
