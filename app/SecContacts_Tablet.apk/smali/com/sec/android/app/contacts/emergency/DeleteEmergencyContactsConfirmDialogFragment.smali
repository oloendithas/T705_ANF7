.class public Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "DeleteEmergencyContactsConfirmDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final KEY_DELETE_IDS:Ljava/lang/String; = "deleteIds"

.field private static final KEY_IS_SELECT_ALL_CHECKED:Ljava/lang/String; = "isSelectAllChecked"

.field private static final TAG:Ljava/lang/String; = "DeleteEmergencyContactsConfirmDialogFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDeleteIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSelectAllChecked:Z

.field private mListener:Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mDeleteIds:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mListener:Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->removeEmergencyMessages()V

    return-void
.end method

.method private removeEmergencyMessages()V
    .locals 7

    .prologue
    .line 122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v5, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mDeleteIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    .local v3, "id":Ljava/lang/String;
    const-string v5, "content://com.android.contacts/emergency"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 126
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "id":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.android.contacts"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 139
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 135
    .local v1, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;Z)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "listener"    # Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;
    .param p3, "isSelectAllChecked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "deleteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    invoke-direct {v0, p1}, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;-><init>(Ljava/util/ArrayList;)V

    .line 145
    .local v0, "fragment":Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->setListener(Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;)V

    .line 146
    invoke-virtual {v0, p3}, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->setSelectAllChecked(Z)V

    .line 147
    const-string v1, "DeleteEmergencyContactsConfirmDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string v4, "deleteIds"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mDeleteIds:Ljava/util/ArrayList;

    .line 82
    const-string v4, "isSelectAllChecked"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mIsSelectAllChecked:Z

    .line 85
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mDeleteIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 88
    .local v0, "count":I
    if-le v0, v7, :cond_1

    .line 89
    const v4, 0x7f0e0425

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "title":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 96
    :goto_0
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mIsSelectAllChecked:Z

    if-eqz v4, :cond_2

    .line 97
    const v4, 0x7f0e0427

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "message":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mIsSelectAllChecked:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0e0426

    :goto_2
    new-instance v6, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 118
    .local v1, "deleteContactsConfirmDialog":Landroid/app/AlertDialog;
    return-object v1

    .line 92
    .end local v1    # "deleteContactsConfirmDialog":Landroid/app/AlertDialog;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0e0424

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_0

    .line 99
    :cond_2
    if-ne v0, v7, :cond_3

    const v4, 0x7f0e0428

    :goto_3
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_1

    .end local v2    # "message":Ljava/lang/String;
    :cond_3
    const v4, 0x7f0e0429

    goto :goto_3

    .line 103
    .restart local v2    # "message":Ljava/lang/String;
    :cond_4
    const v4, 0x7f0e02f4

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "deleteIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mDeleteIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 75
    const-string v0, "isSelectAllChecked"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mIsSelectAllChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public setListener(Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mListener:Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;

    .line 154
    return-void
.end method

.method public setSelectAllChecked(Z)V
    .locals 0
    .param p1, "isSelectAllChecked"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mIsSelectAllChecked:Z

    .line 158
    return-void
.end method
