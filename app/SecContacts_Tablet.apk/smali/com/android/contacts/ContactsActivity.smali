.class public abstract Lcom/android/contacts/ContactsActivity;
.super Landroid/app/Activity;
.source "ContactsActivity.java"

# interfaces
.implements Lcom/android/contacts/ContactSaveService$Listener;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V
    .locals 1
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 133
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 134
    :cond_0
    return-void
.end method

.method protected static showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V
    .locals 1
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    .line 45
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInjectedServices()Lcom/android/contacts/test/InjectedServices;

    move-result-object v0

    .line 46
    .local v0, "services":Lcom/android/contacts/test/InjectedServices;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/android/contacts/test/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    .line 50
    invoke-super {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    .end local v0    # "services":Lcom/android/contacts/test/InjectedServices;
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method public getFragment(I)Landroid/app/Fragment;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 107
    .local v0, "result":Landroid/app/Fragment;, "TT;"
    if-nez v0, :cond_0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fragment 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 58
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInjectedServices()Lcom/android/contacts/test/InjectedServices;

    move-result-object v1

    .line 59
    .local v1, "services":Lcom/android/contacts/test/InjectedServices;
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 66
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 76
    .end local v0    # "service":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "service":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(I)Landroid/view/View;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "result":Landroid/view/View;, "TT;"
    if-nez v0, :cond_0

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 81
    invoke-static {p0}, Lcom/android/contacts/ContactSaveService;->registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/contacts/ContactSaveService;->unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    return-void
.end method

.method public onServiceCompleted(Landroid/content/Intent;)V
    .locals 0
    .param p1, "callbackIntent"    # Landroid/content/Intent;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
