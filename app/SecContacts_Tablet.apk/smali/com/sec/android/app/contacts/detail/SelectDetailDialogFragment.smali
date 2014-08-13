.class public final Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectDetailDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_ITEMS:Ljava/lang/String; = "items"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final TAG:Ljava/lang/String; = "SelectDetailDialogFragment"

.field private static mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000()Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->onItemSelected(IILjava/lang/String;)V

    return-void
.end method

.method public static isShowing(Landroid/app/FragmentManager;)Z
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v1, 0x0

    .line 136
    if-nez p0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    const-string v2, "SelectDetailDialogFragment"

    invoke-virtual {p0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

    .line 143
    .local v0, "fragment":Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method public static notifyDataChange(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 122
    sget-object v1, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 124
    sget-object v1, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-eqz p0, :cond_0

    .line 128
    const-string v1, "SelectDetailDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

    .line 129
    .local v0, "fragment":Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method private onItemSelected(IILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "which"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 161
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 162
    check-cast v0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    .line 163
    .local v0, "target":Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;->onItemChosen(IILjava/lang/String;)V

    .line 165
    .end local v0    # "target":Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "type"    # I
    .param p3, "title"    # I
    .param p5, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "targetFragment":Landroid/app/Fragment;, "TF;"
    .local p4, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "type"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v3, "title"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string v3, "items"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 64
    const-string v3, "data"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v2, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;-><init>()V

    .line 71
    .local v2, "instance":Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 73
    const-string v3, "SelectDetailDialogFragment"

    invoke-virtual {v2, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 153
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 154
    check-cast v0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    .line 155
    .local v0, "target":Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
    invoke-interface {v0}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;->onItemSelectorCancelled()V

    .line 157
    .end local v0    # "target":Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "type"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 84
    .local v8, "type":I
    const-string v9, "title"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 85
    .local v7, "title":I
    const-string v9, "data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "data":Ljava/lang/String;
    const-string v9, "items"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 88
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0401e3

    invoke-direct {v9, v10, v11, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    sput-object v9, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 90
    new-instance v2, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;

    invoke-direct {v2, p0, v3, v8}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;Ljava/lang/String;I)V

    .line 101
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 102
    sget-object v9, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 104
    .local v6, "result":Landroid/app/AlertDialog;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 107
    const-string v9, "call_message"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "feature_kt"

    invoke-static {v9}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 108
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 109
    .local v5, "lv":Landroid/widget/ListView;
    new-instance v9, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$2;

    invoke-direct {v9, p0, v3, v1}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;Ljava/lang/String;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v5, v9}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 118
    .end local v5    # "lv":Landroid/widget/ListView;
    :cond_0
    return-object v6
.end method
