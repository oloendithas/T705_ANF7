.class public Lcom/sec/android/app/contacts/preference/ImportExportActivity;
.super Landroid/app/Activity;
.source "ImportExportActivity.java"


# static fields
.field private static mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static setFragmentManager(Landroid/app/FragmentManager;)V
    .locals 0
    .param p0, "mFragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 56
    sput-object p0, Lcom/sec/android/app/contacts/preference/ImportExportActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 57
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 44
    sget-object v1, Lcom/sec/android/app/contacts/preference/ImportExportActivity;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "contactscount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, "contactsCount":I
    sget-object v1, Lcom/sec/android/app/contacts/preference/ImportExportActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v1, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;I)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
