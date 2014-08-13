.class public Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;
.super Landroid/app/DialogFragment;
.source "MergeDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MergeDialogFragment"


# instance fields
.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 62
    new-instance v0, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;-><init>()V

    .line 64
    .local v0, "fragment":Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;
    const-string v1, "MergeDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 58
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 72
    .local v4, "mContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 73
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 77
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0401e3

    invoke-direct {v1, p0, v7, v8, v3}, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 91
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    .line 93
    .local v5, "mIsUsingTwoPanes":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_DisableMergeWithGoogle"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 106
    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->isSamsungCloudDataSync(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 111
    const v7, 0x7f0e022f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 113
    :cond_3
    new-instance v2, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 166
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0e022d

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$3;

    invoke-direct {v8, p0}, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 181
    .local v0, "MergeDialog":Landroid/app/AlertDialog;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 183
    return-object v0

    .line 102
    .end local v0    # "MergeDialog":Landroid/app/AlertDialog;
    .end local v2    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_4
    const v7, 0x7f0e022e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 190
    return-void
.end method
