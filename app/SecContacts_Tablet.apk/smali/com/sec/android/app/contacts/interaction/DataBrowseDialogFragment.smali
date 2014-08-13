.class public Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;
.super Landroid/app/DialogFragment;
.source "DataBrowseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final KEY_CHECKED:Ljava/lang/String; = "ischecked"

.field private static final KEY_CONTACT_DATAS:Ljava/lang/String; = "contactDatas"

.field private static final KEY_HIDE_SET_PRIMARY:Ljava/lang/String; = "hidesetprimary"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_URI:Ljava/lang/String; = "uri"

.field public static final TAG:Ljava/lang/String; = "DataBrowseDialogContactsFragment"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

.field private mChecked:Z

.field private mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

.field private mHideSetPrimary:Z

.field private mName:Ljava/lang/String;

.field private mPartition:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mdataInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mPartition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 6
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "contactdatas"    # Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "bHideSetPrimary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;",
            "Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "targetFragment":Landroid/app/Fragment;, "TF;"
    const-string v4, "DataBrowseDialogContactsFragment"

    const-string v5, "show"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "contactDatas"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    const-string v4, "name"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v4, "uri"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    const-string v4, "hidesetprimary"

    invoke-virtual {v0, v4, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    new-instance v3, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;-><init>()V

    .line 85
    .local v3, "instance":Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 88
    const-string v4, "DataBrowseDialogContactsFragment"

    invoke-virtual {p0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 89
    .local v2, "f":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 91
    check-cast v2, Landroid/app/DialogFragment;

    .end local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 92
    const-string v4, "DataBrowseDialogContactsFragment"

    const-string v5, "DataBrowseDialogContactsFragment is already added"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    const-string v4, "DataBrowseDialogContactsFragment"

    invoke-virtual {v3, p0, v4}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    const-string v8, "DataBrowseDialogContactsFragment"

    const-string v9, "onCreateDialog"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, "args":Landroid/os/Bundle;
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    .line 108
    const-string v8, "contactDatas"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    .line 109
    const-string v8, "name"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    .line 110
    const-string v8, "uri"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    .line 111
    const-string v8, "hidesetprimary"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mHideSetPrimary:Z

    .line 113
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget-object v8, v8, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mdataInfo:Ljava/util/ArrayList;

    .line 114
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget-object v8, v8, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    .line 115
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget-object v8, v8, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mPartition:Ljava/lang/String;

    .line 117
    new-instance v8, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0401e3

    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mdataInfo:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

    .line 120
    new-instance v2, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)V

    .line 137
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 138
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04008a

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 140
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f0901f6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 141
    .local v6, "setPrimaryView":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    const v8, 0x7f0901f7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 144
    .local v5, "setAsDefaultCheckBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v8, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;

    invoke-direct {v8, p0, v5}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 161
    const-string v8, "com.android.exchange"

    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mPartition:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 162
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mHideSetPrimary:Z

    .line 165
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    iget-object v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    iget-boolean v8, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mHideSetPrimary:Z

    if-nez v8, :cond_1

    .line 168
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 170
    :cond_1
    const/high16 v8, 0x1040000

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 172
    .local v4, "result":Landroid/app/AlertDialog;
    return-object v4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;

    .line 178
    .local v0, "target":Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;
    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;->onCancelChosen()V

    .line 179
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 180
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    const-string v0, "DataBrowseDialogContactsFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    const-string v0, "contactDatas"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    const-string v0, "name"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "ischecked"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    const-string v0, "uri"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    const-string v0, "hidesetprimary"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mHideSetPrimary:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    return-void
.end method
