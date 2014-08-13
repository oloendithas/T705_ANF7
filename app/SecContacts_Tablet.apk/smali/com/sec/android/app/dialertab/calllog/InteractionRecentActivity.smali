.class public Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;
.super Landroid/app/Activity;
.source "InteractionRecentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;
    }
.end annotation


# static fields
.field private static final EASY_MODE_SWITCH_INTENT:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "InteractionRecentActivity"


# instance fields
.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field private mFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 148
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 153
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 132
    const-string v0, "InteractionRecentActivity"

    const-string v1, "onAttachFragment"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setOnRecentListListener(Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setContactsRequest(I)V

    .line 136
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "InteractionRecentActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->configureActionBar()V

    .line 88
    const v0, 0x7f0e02f2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 89
    const v0, 0x7f040172

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 109
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 162
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 165
    const v1, 0x7f0904f6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f0e0061

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v2, 0x7f0e0062

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkUpdateAllCheckState()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 169
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "InteractionRecentActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 176
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 179
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 182
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->sendNum()V

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
    .end sparse-switch
.end method
