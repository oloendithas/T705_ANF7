.class public Lcom/android/contacts/interactions/DeleteContactsInteraction;
.super Landroid/app/Fragment;
.source "DeleteContactsInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;,
        Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;
    }
.end annotation


# static fields
.field public static final ARG_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "deleteContacts"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_FINISH_WHEN_DONE:Ljava/lang/String; = "finishWhenDone"

.field private static final OPERATION_MAX_COUNT:I = 0x32

.field private static mActive:Z

.field private static mCanceled:Z

.field private static mCanceledDialog:Landroid/app/ProgressDialog;

.field private static mIsStoppedDeleting:Z

.field private static mIsTaskRunning:Z

.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

.field private static mUpdateTaskIds:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;


# instance fields
.field private mContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContactUri:Landroid/net/Uri;

.field private mDeleteUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishActivityWhenDone:Z

.field mMessageId:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    .line 78
    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsStoppedDeleting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 476
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 54
    sput-boolean p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    return p0
.end method

.method static synthetic access$200()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 54
    sput-object p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 54
    sput-object p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 54
    sput-boolean p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    return p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 54
    sput-boolean p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    return p0
.end method

.method public static isContactsDeleting(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 112
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string v2, "deleteContacts"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .line 114
    .local v0, "fragment":Lcom/android/contacts/interactions/DeleteContactsInteraction;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isTaskRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x1

    .line 117
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isStoppedDeleting(Z)Z
    .locals 1
    .param p0, "bReset"    # Z

    .prologue
    .line 274
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 275
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsStoppedDeleting:Z

    .line 277
    :cond_0
    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsStoppedDeleting:Z

    return v0
.end method

.method public static start(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/android/contacts/interactions/DeleteContactsInteraction;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "deleteUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;

    move-result-object v0

    return-object v0
.end method

.method private startDeleteContacts()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 225
    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mDeleteUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 226
    sput-boolean v3, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    .line 227
    sput-boolean v2, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    .line 228
    new-instance v0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    .line 229
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    new-array v1, v2, [Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mDeleteUris:Ljava/util/ArrayList;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    sput-object v4, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTaskIds:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mContactIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 232
    sput-boolean v3, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    .line 233
    sput-boolean v2, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    .line 234
    new-instance v0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTaskIds:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    .line 235
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTaskIds:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    new-array v1, v2, [Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mContactIds:Ljava/util/ArrayList;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 236
    sput-object v4, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    goto :goto_0
.end method

.method public static startWithIds(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/contacts/interactions/DeleteContactsInteraction;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;

    move-result-object v0

    return-object v0
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/DeleteContactsInteraction;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/contacts/interactions/DeleteContactsInteraction;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "deleteUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p2, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 95
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string v2, "deleteContacts"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .line 97
    .local v0, "fragment":Lcom/android/contacts/interactions/DeleteContactsInteraction;
    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;

    .end local v0    # "fragment":Lcom/android/contacts/interactions/DeleteContactsInteraction;
    invoke-direct {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;-><init>()V

    .line 99
    .restart local v0    # "fragment":Lcom/android/contacts/interactions/DeleteContactsInteraction;
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->setDeleteUris(Ljava/util/ArrayList;)V

    .line 100
    invoke-virtual {v0, p2}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->setContactIds(Ljava/util/ArrayList;)V

    .line 101
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "deleteContacts"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 107
    :goto_0
    return-object v0

    .line 104
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->setDeleteUris(Ljava/util/ArrayList;)V

    .line 105
    invoke-virtual {v0, p2}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->setContactIds(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method isStarted()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public isTaskRunning()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsTaskRunning:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 218
    if-eqz p1, :cond_0

    .line 219
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mContactUri:Landroid/net/Uri;

    .line 220
    const-string v0, "finishWhenDone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mFinishActivityWhenDone:Z

    .line 222
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 127
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 144
    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    if-eqz v1, :cond_3

    .line 145
    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/util/WeakAsyncTask;->setTarget(Ljava/lang/Object;)V

    .line 149
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "progress":I
    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    .line 153
    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    if-eqz v1, :cond_4

    .line 154
    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->updateActivity(Landroid/app/Activity;)V

    .line 158
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 159
    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 162
    .end local v0    # "progress":I
    :cond_2
    return-void

    .line 146
    :cond_3
    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTaskIds:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    if-eqz v1, :cond_0

    .line 147
    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTaskIds:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/util/WeakAsyncTask;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    .restart local v0    # "progress":I
    :cond_4
    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTaskIds:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    if-eqz v1, :cond_1

    .line 156
    sget-object v1, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTaskIds:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;->updateActivity(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 211
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 212
    const-string v0, "finishWhenDone"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mFinishActivityWhenDone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 138
    invoke-direct {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startDeleteContacts()V

    .line 139
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 166
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    sput-boolean v2, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z

    .line 171
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    .line 176
    :cond_0
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    if-eqz v0, :cond_4

    .line 177
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 179
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableToastPopup4StopDeletingOperationByCall"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    sput-boolean v2, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsStoppedDeleting:Z

    .line 184
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    sput-object v3, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    .line 200
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 202
    sput-object v3, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    .line 205
    :cond_3
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 206
    return-void

    .line 187
    :cond_4
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTaskIds:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    if-eqz v0, :cond_2

    .line 188
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 189
    sget-object v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 190
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableToastPopup4StopDeletingOperationByCall"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    sput-boolean v2, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mIsStoppedDeleting:Z

    .line 195
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    sput-object v3, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mUpdateTaskIds:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTaskIds;

    goto :goto_0
.end method

.method public setContactIds(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez p1, :cond_1

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mContactIds:Ljava/util/ArrayList;

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    .line 261
    iput-object p1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mContactIds:Ljava/util/ArrayList;

    .line 263
    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startDeleteContacts()V

    goto :goto_0
.end method

.method public setDeleteUris(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "deleteUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p1, :cond_1

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mDeleteUris:Ljava/util/ArrayList;

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mActive:Z

    .line 247
    iput-object p1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction;->mDeleteUris:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->startDeleteContacts()V

    goto :goto_0
.end method
