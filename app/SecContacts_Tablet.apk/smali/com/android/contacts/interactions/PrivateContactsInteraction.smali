.class public Lcom/android/contacts/interactions/PrivateContactsInteraction;
.super Landroid/app/Fragment;
.source "PrivateContactsInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;
    }
.end annotation


# static fields
.field public static final ARG_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "addPrivateContacts"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_FINISH_WHEN_DONE:Ljava/lang/String; = "finishWhenDone"

.field private static final OPERATION_MAX_COUNT:I = 0x32

.field private static mActive:Z

.field private static mCanceled:Z

.field private static mCanceledDialog:Landroid/app/ProgressDialog;

.field private static mIsRemove:Z

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

.field private static mUpdateTask:Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private mFinishActivityWhenDone:Z

.field mMessageId:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private maddPrivateUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-boolean v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceled:Z

    .line 79
    sput-boolean v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsStoppedDeleting:Z

    .line 81
    sput-boolean v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsRemove:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 231
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsRemove:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceled:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceled:Z

    return p0
.end method

.method static synthetic access$300()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 57
    sput-object p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 57
    sput-object p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsTaskRunning:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mActive:Z

    return p0
.end method

.method public static isFromRemove(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 229
    sput-boolean p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsRemove:Z

    .line 230
    return-void
.end method

.method public static isStoppedDeleting(Z)Z
    .locals 1
    .param p0, "bReset"    # Z

    .prologue
    .line 223
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 224
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsStoppedDeleting:Z

    .line 226
    :cond_0
    sget-boolean v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsStoppedDeleting:Z

    return v0
.end method

.method public static start(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/PrivateContactsInteraction;
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
            "Lcom/android/contacts/interactions/PrivateContactsInteraction;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "addPrivateUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {p0, p1}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/PrivateContactsInteraction;

    move-result-object v0

    return-object v0
.end method

.method private startPrivateContacts()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    sget-boolean v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mActive:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsTaskRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->maddPrivateUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 197
    sput-boolean v3, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceled:Z

    .line 198
    sput-boolean v2, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsTaskRunning:Z

    .line 199
    new-instance v0, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;

    .line 200
    sget-object v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;

    new-array v1, v2, [Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->maddPrivateUris:Ljava/util/ArrayList;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    :cond_0
    return-void
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Ljava/util/ArrayList;)Lcom/android/contacts/interactions/PrivateContactsInteraction;
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
            ">;)",
            "Lcom/android/contacts/interactions/PrivateContactsInteraction;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "addPrivateUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 94
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string v2, "addPrivateContacts"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;

    .line 96
    .local v0, "fragment":Lcom/android/contacts/interactions/PrivateContactsInteraction;
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;

    .end local v0    # "fragment":Lcom/android/contacts/interactions/PrivateContactsInteraction;
    invoke-direct {v0}, Lcom/android/contacts/interactions/PrivateContactsInteraction;-><init>()V

    .line 98
    .restart local v0    # "fragment":Lcom/android/contacts/interactions/PrivateContactsInteraction;
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->setAddPrivateUris(Ljava/util/ArrayList;)V

    .line 99
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "addPrivateContacts"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 104
    :goto_0
    return-object v0

    .line 102
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->setAddPrivateUris(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method isStarted()Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public isTaskRunning()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsTaskRunning:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    if-eqz p1, :cond_0

    .line 190
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mContactUri:Landroid/net/Uri;

    .line 191
    const-string v0, "finishWhenDone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mFinishActivityWhenDone:Z

    .line 193
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 131
    sget-object v1, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/util/WeakAsyncTask;->setTarget(Ljava/lang/Object;)V

    .line 134
    :cond_0
    sget-boolean v1, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceled:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "progress":I
    sget-object v1, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    .line 138
    sget-object v1, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;->updateActivity(Landroid/app/Activity;)V

    .line 140
    sget-object v1, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 141
    sget-object v1, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 144
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 182
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 183
    const-string v0, "finishWhenDone"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mFinishActivityWhenDone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 125
    invoke-direct {p0}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->startPrivateContacts()V

    .line 126
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 148
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    sput-boolean v2, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceled:Z

    .line 153
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    .line 158
    :cond_0
    sget-object v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;

    if-eqz v0, :cond_2

    .line 159
    sget-object v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 161
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

    .line 163
    sput-boolean v2, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mIsStoppedDeleting:Z

    .line 166
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    sput-object v3, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mUpdateTask:Lcom/android/contacts/interactions/PrivateContactsInteraction$UpdateTask;

    .line 171
    :cond_2
    sget-object v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    sget-object v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 173
    sput-object v3, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;

    .line 176
    :cond_3
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 177
    return-void
.end method

.method public setAddPrivateUris(Ljava/util/ArrayList;)V
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
    .line 205
    .local p1, "addPrivateUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->mActive:Z

    .line 210
    iput-object p1, p0, Lcom/android/contacts/interactions/PrivateContactsInteraction;->maddPrivateUris:Ljava/util/ArrayList;

    .line 212
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/android/contacts/interactions/PrivateContactsInteraction;->startPrivateContacts()V

    goto :goto_0
.end method
