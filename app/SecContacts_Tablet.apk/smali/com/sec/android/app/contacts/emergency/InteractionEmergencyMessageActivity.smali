.class public Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "InteractionEmergencyMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$1;,
        Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InteractionEmergencyMessageActivity"


# instance fields
.field private final GROUPS_PICKER_TAG:Ljava/lang/String;

.field private mContactsCount:I

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

.field protected mInteractionLayout:Landroid/view/View;

.field private mIsMultiWindowSupported:Z

.field private mIsRecreatedInstance:Z

.field private mIsTablet:Z

.field protected mListener:Lcom/sec/android/app/contacts/list/OnActionBarClickListener;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMaxContactsNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 55
    const-string v0, "emergencyMessageTag"

    iput-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->GROUPS_PICKER_TAG:Ljava/lang/String;

    .line 260
    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mContactsCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    .prologue
    .line 51
    iget v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mMaxContactsNumber:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;)Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method private updateFragment()V
    .locals 4

    .prologue
    .line 246
    const-string v2, "InteractionEmergencyMessageActivity"

    const-string v3, "updateFragment"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 249
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 251
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    :cond_0
    const-string v2, "InteractionEmergencyMessageActivity"

    const-string v3, "mInteractionGroupMemberPickerFragment null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->configureListFragment()V

    .line 257
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public actionBarSetup()Landroid/app/ActionBar;
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 129
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 135
    const v1, 0x7f0e0423

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 136
    const v1, 0x7f040171

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 138
    :cond_0
    return-object v0
.end method

.method public configureListFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    const-string v0, "InteractionEmergencyMessageActivity"

    const-string v1, "configureListFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setDirectorySearchMode(I)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setMultiSelectEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    new-instance v1, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;-><init>(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setListener(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment$Listener;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    iget v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mMaxContactsNumber:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setMaxContactsNumber(I)V

    .line 152
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 235
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 242
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 237
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 238
    .local v0, "action":I
    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mIsRecreatedInstance:Z

    if-nez v0, :cond_0

    .line 80
    instance-of v0, p1, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    if-eqz v0, :cond_0

    .line 81
    check-cast p1, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    .line 83
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mIsMultiWindowSupported:Z

    .line 92
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_0

    .line 93
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 96
    :cond_0
    if-eqz p1, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mIsRecreatedInstance:Z

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "max_contacts_number"

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mMaxContactsNumber:I

    .line 100
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mIsTablet:Z

    .line 102
    const v2, 0x7f04006f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->setContentView(I)V

    .line 104
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mIsTablet:Z

    if-eqz v2, :cond_1

    .line 105
    const v2, 0x7f0901a2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionLayout:Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->setLayoutAttribute(IZ)V

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->actionBarSetup()Landroid/app/ActionBar;

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 112
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 114
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const-string v2, "emergencyMessageTag"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    iput-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    .line 116
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    if-nez v2, :cond_2

    .line 117
    new-instance v2, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    .line 118
    const v2, 0x7f090196

    iget-object v3, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    const-string v4, "emergencyMessageTag"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 121
    :cond_2
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->configureListFragment()V

    .line 124
    return-void

    .line 96
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 159
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 161
    const v1, 0x7f0904f5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 163
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 188
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 179
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->finish()V

    goto :goto_0

    .line 182
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.contacts.action.INTERACTION_EMERGENCY_MESSAGE_DELETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904f5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 168
    const-string v0, "InteractionEmergencyMessageActivity"

    const-string v2, "onPrepareOptionsMenu"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    iget v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mContactsCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 172
    return v1

    :cond_0
    move v0, v1

    .line 170
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "InteractionEmergencyMessageActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 230
    invoke-direct {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->updateFragment()V

    .line 231
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 2
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->setLayoutAttribute(IZ)V

    .line 196
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

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 203
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 224
    return-void

    .line 205
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x3f000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 208
    .local v0, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 211
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 212
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 221
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f040089

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 214
    .end local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 216
    .restart local v0    # "param":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 217
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 218
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 219
    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionLayout:Landroid/view/View;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method
