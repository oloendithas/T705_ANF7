.class public Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;
.super Landroid/app/DialogFragment;
.source "KnoxSelectionDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxSelectionDialogFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 106
    new-instance v1, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;-><init>()V

    .line 109
    .local v1, "fragment":Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    const-string v2, "KnoxSelectionDialogFragment"

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "KnoxSelectionDialogFragment"

    const-string v3, "IllegalStateException occurs."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 43
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    const-string v10, "personaIds"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 48
    .local v8, "personaIds":[I
    const-string v10, "contact_ids"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 50
    .local v2, "contactIds":[J
    new-instance v5, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$1;-><init>(Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;)V

    .line 60
    .local v5, "keylistener":Landroid/content/DialogInterface$OnKeyListener;
    const v10, 0x7f040182

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 61
    .local v9, "view":Landroid/view/View;
    const v10, 0x7f090377

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 62
    .local v6, "knox1Container":Landroid/view/View;
    new-instance v10, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$2;

    invoke-direct {v10, p0, v8, v2, v1}, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$2;-><init>(Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;[I[JLandroid/app/AlertDialog$Builder;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v10, 0x7f090378

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 79
    .local v7, "knox2Container":Landroid/view/View;
    new-instance v10, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$3;

    invoke-direct {v10, p0, v8, v2, v1}, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$3;-><init>(Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;[I[JLandroid/app/AlertDialog$Builder;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v10, 0x7f0e0046

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 99
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 100
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    return-object v3
.end method
