.class public Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeAccountWarningDialogFragment"
.end annotation


# static fields
.field private static mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

.field private static mCurrentState:Lcom/android/contacts/model/EntityDelta;

.field private static mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2213
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1800()Lcom/android/contacts/model/EntityDelta;
    .locals 1

    .prologue
    .line 2213
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentState:Lcom/android/contacts/model/EntityDelta;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1

    .prologue
    .line 2213
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$2000()Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1

    .prologue
    .line 2213
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method public static show(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 3
    .param p0, "fragment"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "currentState"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "currentAccount"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p3, "newAccount"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 2219
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;-><init>()V

    .line 2220
    .local v0, "dialog":Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2222
    sput-object p1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentState:Lcom/android/contacts/model/EntityDelta;

    .line 2223
    sput-object p2, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 2224
    sput-object p3, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 2226
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ChangeAccountWarning"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2227
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2242
    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;

    if-nez v1, :cond_1

    .line 2243
    :cond_0
    const-string v1, "currentState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    sput-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentState:Lcom/android/contacts/model/EntityDelta;

    .line 2244
    const-string v1, "currentAccount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    sput-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 2245
    const-string v1, "newAccount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    sput-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 2248
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0292

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0293

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2267
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2232
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2234
    const-string v0, "currentState"

    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2235
    const-string v0, "currentAccount"

    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2236
    const-string v0, "newAccount"

    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2237
    return-void
.end method
