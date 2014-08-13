.class public final Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;
.super Landroid/app/DialogFragment;
.source "RingtoneRecommendationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RingtoneRecommendationDialogFragment"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mListener:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;

.field private mOffset:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSelectedPosition:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mSelectedPosition:I

    .line 67
    return-void
.end method

.method public static DismissDialog(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 94
    const-string v1, "RingtoneRecommendationDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    .line 96
    .local v0, "fragment":Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 99
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->playRingtone(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mOffset:I

    return v0
.end method

.method public static isShowing(Landroid/app/FragmentManager;)Z
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 86
    const-string v1, "RingtoneRecommendationDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    .line 88
    .local v0, "fragment":Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    const/4 v1, 0x0

    .line 91
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method private playRingtone(Z)V
    .locals 3
    .param p1, "fromOffset"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    .line 268
    :cond_0
    if-eqz p1, :cond_2

    .line 269
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mOffset:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 277
    :cond_1
    return-void

    .line 271
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/net/Uri;ILcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "offset"    # I
    .param p3, "listener"    # Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;

    .prologue
    .line 110
    new-instance v0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;-><init>()V

    .line 111
    .local v0, "instance":Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->setUri(Landroid/net/Uri;)V

    .line 112
    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->setOffset(I)V

    .line 113
    invoke-virtual {v0, p3}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->setListener(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;)V

    .line 115
    const-string v1, "RingtoneRecommendationDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 116
    const-string v1, "RingtoneRecommendationDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;->onCanceled()V

    .line 106
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 138
    .local v2, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;Landroid/view/LayoutInflater;)V

    .line 200
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    new-instance v1, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;Landroid/widget/BaseAdapter;)V

    .line 227
    .local v1, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e0253

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$4;-><init>(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 252
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$5;-><init>(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 259
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mRingtone:Landroid/media/Ringtone;

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->DismissDialog(Landroid/app/FragmentManager;)V

    .line 83
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 84
    return-void
.end method

.method public setListener(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;

    .line 130
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mOffset:I

    .line 126
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mUri:Landroid/net/Uri;

    .line 122
    return-void
.end method
