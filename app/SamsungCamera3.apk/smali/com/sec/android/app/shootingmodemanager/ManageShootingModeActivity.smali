.class public Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;
.super Landroid/app/Activity;
.source "ManageShootingModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_SHOOTING_MODES_CHANGED:Ljava/lang/String; = "com.samsung.android.action.SHOOTING_MODES_CHANGED"

.field private static final CONTENT_LOADER_FRAGMENT_TAG:Ljava/lang/String; = "LoaderFragment"

.field private static final REQUEST_SAMSUNG_APPS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ManageShootingModeActivity"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

.field private mPackageChangeReceiver:Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    return-object v0
.end method

.method private static booleanToInt(Z)I
    .locals 1
    .param p0, "val"    # Z

    .prologue
    .line 301
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initLayout(Lcom/sec/android/app/shootingmodemanager/ItemsLoader;)V
    .locals 2
    .param p1, "loaderFragment"    # Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    .prologue
    .line 210
    const v1, 0x7f0e0002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    iput-object v1, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    .line 212
    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Lcom/sec/android/app/shootingmodemanager/ItemsLoader;)V

    .line 213
    .local v0, "adapter":Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;
    invoke-virtual {p1, v0}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->setOwner(Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;)V

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    return-void
.end method

.method private saveOrder()V
    .locals 12

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 274
    .local v3, "fm":Landroid/app/FragmentManager;
    const-string v9, "LoaderFragment"

    invoke-virtual {v3, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    .line 276
    .local v6, "loaderFragment":Lcom/sec/android/app/shootingmodemanager/ItemsLoader;
    iget-object v9, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-virtual {v9}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->getItemsAdapter()Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    move-result-object v0

    .line 277
    .local v0, "adapter":Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->getCount()I

    move-result v8

    .line 278
    .local v8, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v1, "batch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_1

    .line 281
    invoke-virtual {v0, v4}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->getItemInfo(I)Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    move-result-object v5

    .line 282
    .local v5, "infoItem":Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;
    invoke-virtual {v6}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->getBaseUri()Landroid/net/Uri;

    move-result-object v9

    iget v10, v5, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mId:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 285
    .local v7, "operationBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "sm_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "deleted"

    invoke-virtual {v5}, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->isVisible()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_1
    invoke-static {v9}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->booleanToInt(Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 288
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 292
    .end local v5    # "infoItem":Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;
    .end local v7    # "operationBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.samsung.android.provider.shootingmodeprovider"

    invoke-virtual {v9, v10, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    :goto_2
    return-void

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Landroid/os/RemoteException;
    const-string v9, "ManageShootingModeActivity"

    const-string v10, "Failed to save order"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 295
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 296
    .local v2, "e":Landroid/content/OperationApplicationException;
    const-string v9, "ManageShootingModeActivity"

    const-string v10, "Failed to save order"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 219
    packed-switch p1, :pswitch_data_0

    .line 225
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    return-void

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 245
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string v3, "LoaderFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    .line 247
    .local v2, "loaderFragment":Lcom/sec/android/app/shootingmodemanager/ItemsLoader;
    const/high16 v3, 0x7f030000

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 248
    if-eqz v2, :cond_0

    .line 249
    const v3, 0x7f0e0002

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    iput-object v3, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    .line 250
    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-direct {v0, p0, v3, v2}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Lcom/sec/android/app/shootingmodemanager/ItemsLoader;)V

    .line 252
    .local v0, "adapter":Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;
    invoke-virtual {v2, v0}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->setOwner(Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;)V

    .line 253
    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    .end local v0    # "adapter":Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 267
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 68
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string v2, "LoaderFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    .line 72
    .local v1, "loaderFragment":Lcom/sec/android/app/shootingmodemanager/ItemsLoader;
    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    .end local v1    # "loaderFragment":Lcom/sec/android/app/shootingmodemanager/ItemsLoader;
    invoke-direct {v1}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;-><init>()V

    .line 74
    .restart local v1    # "loaderFragment":Lcom/sec/android/app/shootingmodemanager/ItemsLoader;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "LoaderFragment"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 78
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 79
    const v2, 0x7f0c0005

    invoke-virtual {p0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 82
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mActionBar:Landroid/app/ActionBar;

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->show()V

    .line 104
    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->initLayout(Lcom/sec/android/app/shootingmodemanager/ItemsLoader;)V

    .line 105
    new-instance v2, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;

    invoke-direct {v2, p0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;-><init>(Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mPackageChangeReceiver:Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 138
    const/4 v0, 0x1

    .line 139
    .local v0, "type":I
    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 145
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0b0313

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 148
    return v3

    .line 141
    :cond_1
    if-ne v0, v3, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0d0000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->onDestroy()V

    .line 113
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 186
    :goto_0
    return v4

    .line 164
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "samsungapps://CategoryList/0000003818"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 166
    const v2, 0x4000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ManageShootingModeActivity"

    const-string v3, "Please make sure that SamsungApps is the lastest version"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 175
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->saveOrder()V

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x7f0e0034
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mPackageChangeReceiver:Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mPackageChangeReceiver:Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.action.SHOOTING_MODES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->refreshView()V

    .line 125
    return-void
.end method

.method public setEnableItems()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method
