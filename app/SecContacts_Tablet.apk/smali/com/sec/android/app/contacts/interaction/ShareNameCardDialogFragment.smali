.class public Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;
.super Landroid/app/DialogFragment;
.source "ShareNameCardDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ShareNameCardDialogFragment"

.field private static mListener:Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;

    .prologue
    .line 48
    new-instance v0, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;-><init>()V

    .line 49
    .local v0, "fragment":Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;
    sput-object p1, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;

    .line 50
    const-string v1, "ShareNameCardDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 57
    .local v4, "mContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 58
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 62
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0401e3

    invoke-direct {v1, p0, v6, v7, v3}, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 76
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    const v6, 0x7f0e0498

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 77
    const v6, 0x7f0e0497

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 79
    new-instance v2, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 100
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0e0229

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 115
    .local v0, "MergeDialog":Landroid/app/AlertDialog;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 117
    return-object v0
.end method
