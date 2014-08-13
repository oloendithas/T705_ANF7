.class public Lcom/android/contacts/interactions/ContactDeletionInteraction;
.super Landroid/app/Fragment;
.source "ContactDeletionInteraction.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# static fields
.field public static final ARG_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final COLUMN_INDEX_ACCOUNT_TYPE:I = 0x1

.field private static final COLUMN_INDEX_CONTACT_ID:I = 0x3

.field private static final COLUMN_INDEX_DATA_SET:I = 0x2

.field private static final COLUMN_INDEX_LOOKUP_KEY:I = 0x4

.field private static final COLUMN_INDEX_RAW_CONTACT_ID:I = 0x0

.field private static final ENTITY_PROJECTION:[Ljava/lang/String;

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "deleteContact"

.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_FINISH_WHEN_DONE:Ljava/lang/String; = "finishWhenDone"

.field private static final KEY_WITH_POP_UP:Ljava/lang/String; = "withPopUp"

.field public static mActive:Z


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFinishActivityWhenDone:Z

.field mMessageId:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

.field private mWithPopUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->ENTITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private setFinishActivityWhenDone(Z)V
    .locals 0
    .param p1, "finishActivityWhenDone"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    .line 206
    return-void
.end method

.method private setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V
    .locals 0
    .param p1, "mockLoaderManager"    # Lcom/android/contacts/interactions/TestLoaderManager;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    .line 174
    return-void
.end method

.method private setWithPopUp(Z)V
    .locals 0
    .param p1, "withPopUp"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mWithPopUp:Z

    .line 211
    return-void
.end method

.method private showDialog(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "messageId"    # I
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 336
    new-instance v0, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;-><init>(Lcom/android/contacts/interactions/ContactDeletionInteraction;)V

    .line 345
    .local v0, "keylistener":Landroid/content/DialogInterface$OnKeyListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0223

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/interactions/ContactDeletionInteraction$2;

    invoke-direct {v3, p0, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction$2;-><init>(Lcom/android/contacts/interactions/ContactDeletionInteraction;Landroid/net/Uri;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 360
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 361
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 362
    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "finishActivityWhenDone"    # Z

    .prologue
    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;ZLcom/android/contacts/interactions/TestLoaderManager;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    move-result-object v0

    return-object v0
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;ZLcom/android/contacts/interactions/TestLoaderManager;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "finishActivityWhenDone"    # Z
    .param p3, "testLoaderManager"    # Lcom/android/contacts/interactions/TestLoaderManager;
    .param p4, "withPopUp"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 139
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string v2, "deleteContact"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 141
    .local v0, "fragment":Lcom/android/contacts/interactions/ContactDeletionInteraction;
    if-nez v0, :cond_1

    .line 142
    new-instance v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .end local v0    # "fragment":Lcom/android/contacts/interactions/ContactDeletionInteraction;
    invoke-direct {v0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;-><init>()V

    .line 143
    .restart local v0    # "fragment":Lcom/android/contacts/interactions/ContactDeletionInteraction;
    invoke-direct {v0, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V

    .line 144
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setContactUri(Landroid/net/Uri;)V

    .line 145
    invoke-direct {v0, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setFinishActivityWhenDone(Z)V

    .line 146
    invoke-direct {v0, p4}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setWithPopUp(Z)V

    .line 147
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "deleteContact"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {v0, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V

    .line 151
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setContactUri(Landroid/net/Uri;)V

    .line 152
    invoke-direct {v0, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setFinishActivityWhenDone(Z)V

    .line 153
    invoke-direct {v0, p4}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setWithPopUp(Z)V

    goto :goto_0
.end method

.method public static startWithoutPopUp(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "finishActivityWhenDone"    # Z

    .prologue
    .line 115
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;ZLcom/android/contacts/interactions/TestLoaderManager;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected doDeleteContact(Landroid/net/Uri;)V
    .locals 5
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 394
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->doBoost(Landroid/content/Context;)V

    .line 396
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/contacts/activities/ContactDetailActivity;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v0

    .line 398
    .local v0, "flag":Z
    iget-object v3, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    if-nez v0, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/contacts/preference/ContactsPreferences;->setDelete(Z)V

    .line 401
    .end local v0    # "flag":Z
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->setFakeQueryModeEnabled(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->finishActionModeAllFragments()V

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "deleteContactComplete"

    invoke-static {v2, p1, v3, v4}, Lcom/android/contacts/ContactSaveService;->createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 408
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    if-eqz v1, :cond_2

    .line 409
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 412
    :cond_2
    return-void

    .line 398
    .restart local v0    # "flag":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 162
    .local v0, "loaderManager":Landroid/app/LoaderManager;
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/TestLoaderManager;->setDelegate(Landroid/app/LoaderManager;)V

    .line 165
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    .line 167
    .end local v0    # "loaderManager":Landroid/app/LoaderManager;
    :cond_0
    return-object v0
.end method

.method isStarted()Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 385
    if-eqz p1, :cond_0

    .line 386
    const-string v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    .line 387
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    .line 388
    const-string v0, "finishWhenDone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    .line 389
    const-string v0, "withPopUp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mWithPopUp:Z

    .line 391
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 179
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    .line 180
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 181
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 238
    const-string v0, "contactUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 239
    .local v7, "contactUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    const-string v2, "entities"

    invoke-static {v7, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/interactions/ContactDeletionInteraction;->ENTITY_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 186
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 188
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 189
    iput-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 191
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 366
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 368
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->registerEamReceiver()V

    .line 371
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 25
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    sget-boolean v23, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    if-nez v23, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->dismiss()V

    .line 248
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 251
    :cond_0
    sget-boolean v23, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    if-eqz v23, :cond_1

    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v23

    if-nez v23, :cond_2

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    const-wide/16 v4, 0x0

    .line 256
    .local v4, "contactId":J
    const/4 v8, 0x0

    .line 259
    .local v8, "lookupKey":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v14

    .line 260
    .local v14, "readOnlyRawContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v22

    .line 261
    .local v22, "writableRawContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 262
    .local v10, "phoneAccountRawContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v16

    .line 263
    .local v16, "readOnlySimRawContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v18

    .line 265
    .local v18, "totalRawContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 266
    .local v3, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const/16 v23, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 267
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 268
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 269
    .local v11, "rawContactId":J
    const/16 v23, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "accountType":Ljava/lang/String;
    const/16 v23, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "dataSet":Ljava/lang/String;
    const/16 v23, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 272
    const/16 v23, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 273
    invoke-virtual {v3, v2, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v19

    .line 274
    .local v19, "type":Lcom/android/contacts/model/AccountType;
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v23

    if-eqz v23, :cond_6

    :cond_3
    const/16 v20, 0x1

    .line 275
    .local v20, "writable":Z
    :goto_2
    if-eqz v20, :cond_7

    .line 276
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    :goto_3
    invoke-static {v2}, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->isDeviceLocalAccount(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 283
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_4
    if-nez v20, :cond_5

    invoke-static {v2}, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->isSimAccount(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 288
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_5
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    .end local v20    # "writable":Z
    :cond_6
    const/16 v20, 0x0

    goto :goto_2

    .line 278
    .restart local v20    # "writable":Z
    :cond_7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 294
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v7    # "dataSet":Ljava/lang/String;
    .end local v11    # "rawContactId":J
    .end local v19    # "type":Lcom/android/contacts/model/AccountType;
    .end local v20    # "writable":Z
    :cond_8
    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v13

    .line 295
    .local v13, "readOnlyCount":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->size()I

    move-result v21

    .line 296
    .local v21, "writableCount":I
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v9

    .line 297
    .local v9, "phoneAccountCount":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v15

    .line 298
    .local v15, "readOnlySimContactCount":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->size()I

    move-result v17

    .line 299
    .local v17, "totalAccountCount":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v15, v0, :cond_a

    .line 300
    const v23, 0x7f0e005d

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    .line 317
    :goto_4
    invoke-static {v4, v5, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 319
    .local v6, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mWithPopUp:Z

    move/from16 v23, v0

    if-nez v23, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    move/from16 v23, v0

    const v24, 0x7f0e005e

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 320
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->showDialog(ILandroid/net/Uri;)V

    .line 327
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v23

    const v24, 0x7f090012

    invoke-virtual/range {v23 .. v24}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    .line 301
    .end local v6    # "contactUri":Landroid/net/Uri;
    :cond_a
    if-lez v13, :cond_b

    if-lez v21, :cond_b

    .line 302
    const v23, 0x7f0e0059

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_4

    .line 303
    :cond_b
    if-lez v13, :cond_c

    if-nez v21, :cond_c

    .line 304
    const v23, 0x7f0e0058

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_4

    .line 305
    :cond_c
    if-nez v13, :cond_e

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_e

    .line 306
    move/from16 v0, v17

    if-ne v9, v0, :cond_d

    .line 307
    const v23, 0x7f0e023d

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_4

    .line 309
    :cond_d
    const v23, 0x7f0e005c

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_4

    .line 311
    :cond_e
    if-nez v9, :cond_f

    if-nez v13, :cond_f

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 312
    const v23, 0x7f0e005b

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto/16 :goto_4

    .line 314
    :cond_f
    const v23, 0x7f0e005e

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto/16 :goto_4

    .line 322
    .restart local v6    # "contactUri":Landroid/net/Uri;
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->doDeleteContact(Landroid/net/Uri;)V

    goto :goto_5
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 376
    const-string v0, "active"

    sget-boolean v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 378
    const-string v0, "finishWhenDone"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    const-string v0, "withPopUp"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mWithPopUp:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 220
    sget-boolean v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    if-eqz v1, :cond_0

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 225
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 226
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 231
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 234
    :cond_0
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    .line 195
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 201
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
