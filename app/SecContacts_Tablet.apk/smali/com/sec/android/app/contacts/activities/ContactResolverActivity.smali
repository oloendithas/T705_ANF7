.class public Lcom/sec/android/app/contacts/activities/ContactResolverActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ContactResolverActivity.java"


# static fields
.field private static final DROPBOX_ACTIVITY_NAME:Ljava/lang/String; = "com.dropbox.android.activity.DropboxSendTo"

.field private static final TAG:Ljava/lang/String; = "ContactResolverActivity"


# instance fields
.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mEasyModeReceiver:Landroid/content/BroadcastReceiver;

.field protected mLookupUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 115
    new-instance v0, Lcom/sec/android/app/contacts/activities/ContactResolverActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/ContactResolverActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/ContactResolverActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactResolverActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private prepareData()V
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactResolverActivity;->mLookupUri:Landroid/net/Uri;

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactResolverActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ContactResolverActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactResolverActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 113
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 59
    .local v11, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    .local v15, "targetParcelable":Landroid/os/Parcelable;
    move-object v3, v15

    .line 60
    check-cast v3, Landroid/content/Intent;

    .line 62
    .local v3, "target":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TITLE"

    const v2, 0x1040685

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 64
    .local v16, "title_resId":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 66
    .local v4, "title":Ljava/lang/CharSequence;
    const v1, 0x7f0e0229

    move/from16 v0, v16

    if-ne v1, v0, :cond_1

    const/4 v12, 0x1

    .line 67
    .local v12, "isShareVia":Z
    :goto_0
    if-nez v12, :cond_2

    const/4 v7, 0x1

    .line 69
    .local v7, "needToShowOnceAlwaysButton":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 70
    .local v13, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v8, "exceptDropboxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 72
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_0

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    const-string v1, "com.dropbox.android.activity.DropboxSendTo"

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 66
    .end local v7    # "needToShowOnceAlwaysButton":Z
    .end local v8    # "exceptDropboxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "isShareVia":Z
    .end local v13    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 67
    .restart local v12    # "isShareVia":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 79
    .restart local v7    # "needToShowOnceAlwaysButton":Z
    .restart local v8    # "exceptDropboxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v13    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const-string v1, "useLookupUri"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 80
    .local v17, "useLookupUri":Z
    if-eqz v17, :cond_4

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/ContactResolverActivity;->prepareData()V

    .line 83
    :cond_4
    const/4 v5, 0x0

    if-eqz v12, :cond_6

    move-object v6, v8

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-super/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 85
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isEasyModeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactResolverActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sec/android/app/contacts/activities/ContactResolverActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/ContactResolverActivity;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/ContactResolverActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/ContactResolverActivity;->mEasyModeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    .end local v9    # "filter":Landroid/content/IntentFilter;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v5, 0x400

    invoke-virtual {v1, v2, v5}, Landroid/view/Window;->setFlags(II)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 103
    return-void

    :cond_6
    move-object v6, v13

    .line 83
    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 163
    const-string v0, "PHONE_WHITE"

    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const v0, 0x1030347

    invoke-super {p0, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isBlackTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const v0, 0x1030346

    invoke-super {p0, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto :goto_0
.end method
