.class public Lcom/sec/android/app/contacts/activities/SendContactOption;
.super Landroid/app/Activity;
.source "SendContactOption.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[SendContactOption]"


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x4

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 48
    :cond_0
    const v1, 0x7f0e0270

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 49
    const v1, 0x7f0401e7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 54
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SendContactOption;->mFragment:Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;

    if-nez v1, :cond_1

    .line 55
    new-instance v1, Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SendContactOption;->mFragment:Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f09011d

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SendContactOption;->mFragment:Lcom/sec/android/app/contacts/preference/SendContactOptionFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 61
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 67
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
