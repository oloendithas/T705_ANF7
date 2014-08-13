.class public Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "DeleteContactsConfirmDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final KEY_DELETE_URIS:Ljava/lang/String; = "deleteUris"

.field private static final TAG:Ljava/lang/String; = "DeleteContactsConfirmDialogFragment"


# instance fields
.field private Count:I

.field private mActivity:Landroid/app/Activity;

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

.field private mListener:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->Count:I

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
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
    .line 101
    .local p1, "deleteUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->Count:I

    .line 103
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mDeleteUris:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mDeleteUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "listener"    # Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "deleteUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;

    invoke-direct {v0, p1}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;-><init>(Ljava/util/ArrayList;)V

    .line 184
    .local v0, "fragment":Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->setListener(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;)V

    .line 186
    const-string v1, "DeleteContactsConfirmDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 112
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    .line 114
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, "title":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 130
    const-string v3, "deleteUris"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mDeleteUris:Ljava/util/ArrayList;

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/android/contacts/activities/NamecardDeleteActivity;

    if-eqz v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->Count:I

    .line 139
    :goto_0
    iget v3, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->Count:I

    if-le v3, v5, :cond_2

    .line 140
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0224

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->Count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 144
    :goto_1
    const v3, 0x7f0e023d

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 171
    .local v0, "deleteContactsConfirmDialog":Landroid/app/AlertDialog;
    return-object v0

    .line 136
    .end local v0    # "deleteContactsConfirmDialog":Landroid/app/AlertDialog;
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->getSelected()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->Count:I

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0223

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "deleteUris"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 123
    return-void
.end method

.method public setListener(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;

    .line 200
    return-void
.end method
