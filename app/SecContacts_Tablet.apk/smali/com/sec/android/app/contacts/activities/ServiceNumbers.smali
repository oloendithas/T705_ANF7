.class public Lcom/sec/android/app/contacts/activities/ServiceNumbers;
.super Lcom/android/contacts/ContactsActivity;
.source "ServiceNumbers.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[ServiceNumber]"


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public displayProgress(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v3, 0x5

    .line 80
    const-string v0, "[ServiceNumber]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureInt(II)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 74
    instance-of v0, p1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .line 77
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x4

    .line 50
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 56
    :cond_0
    const v1, 0x7f0e026f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 57
    const v1, 0x7f0401e9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 63
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    if-nez v1, :cond_1

    .line 64
    new-instance v1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090196

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 70
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public showContactsUnavailableFragment()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    .line 90
    .local v0, "contactsUnavailableFragment":Lcom/android/contacts/list/ContactsUnavailableFragment;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setNoContactType(I)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090196

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 94
    return-void
.end method
