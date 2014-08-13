.class public Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupChangeOrderActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;,
        Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupChangeOrderActivity"


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

.field private mIsDoneButtonEnable:Z

.field private mIsMultiWindowSupported:Z

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->updateDoneButtonState(Z)V

    return-void
.end method

.method private adjustActionBar()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 112
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 113
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 114
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const v1, 0x7f0e025c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private adjustActionBarMenuText(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 181
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mOrientation:I

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 183
    return-void
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .locals 1
    .param p1, "createContentView"    # Z
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    const v0, 0x7f040142

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 107
    :cond_0
    return-void
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 151
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 152
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 153
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 154
    .local v0, "dimAmount":F
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x3f000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 160
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 161
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 162
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private setupActionListener()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->setActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V

    .line 187
    return-void
.end method

.method private updateDoneButtonState(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mIsDoneButtonEnable:Z

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 259
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v3, 0x1

    .line 69
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mIsMultiWindowSupported:Z

    .line 74
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mIsMultiWindowSupported:Z

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 83
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 85
    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090202

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->adjustActionBar()V

    .line 95
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 96
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 99
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setupActionListener()V

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 193
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 194
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 233
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 234
    .local v0, "filteredMetaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    packed-switch p1, :pswitch_data_0

    .line 246
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 237
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->onDoneClicked()V

    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public onModeChanged(Z)V
    .locals 1
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 265
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 229
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 208
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 215
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->onDoneClicked()V

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 223
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_1
        0x7f0904f6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 199
    const v0, 0x7f0904db

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->mIsDoneButtonEnable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 143
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 144
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 274
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 2
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 174
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 175
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 3
    .param p1, "zoneInfo"    # I

    .prologue
    .line 269
    const-string v0, "GroupChangeOrderActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method
