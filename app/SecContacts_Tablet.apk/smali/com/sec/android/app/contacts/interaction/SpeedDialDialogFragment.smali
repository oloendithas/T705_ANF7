.class public final Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;
.super Landroid/app/DialogFragment;
.source "SpeedDialDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final REQUEST_CREATE_SPEEDDIAL:I = 0x64

.field public static final TAG:Ljava/lang/String; = "SpeedDialDialogFragment"

.field private static mChangedPosition:I

.field private static mIsTutorialMode:Z

.field private static sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;


# instance fields
.field mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 214
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mChangedPosition:I

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mIsTutorialMode:Z

    return v0
.end method

.method static synthetic access$200()Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;

    return-object v0
.end method

.method public static dismissDialog(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 231
    const-string v1, "SpeedDialDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    .line 234
    .local v0, "fragment":Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 237
    :cond_0
    return-void
.end method

.method public static isShowing(Landroid/app/FragmentManager;)Z
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 220
    const-string v1, "SpeedDialDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    .line 223
    .local v0, "fragment":Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 227
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method public static setTutorialMode(Z)V
    .locals 3
    .param p0, "isTutorialMode"    # Z

    .prologue
    .line 83
    sput-boolean p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mIsTutorialMode:Z

    .line 85
    const-string v0, "SpeedDialDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTutorialMode   mIsTutorialMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mIsTutorialMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;IZ)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;
    .param p2, "index"    # I
    .param p3, "isTutorialMode"    # Z

    .prologue
    .line 72
    new-instance v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;-><init>()V

    .line 73
    .local v0, "fragment":Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;
    sput-object p1, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;

    .line 74
    sput p2, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mChangedPosition:I

    .line 75
    sput-boolean p3, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mIsTutorialMode:Z

    .line 77
    const-string v1, "SpeedDialDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private showSpeedDialTutorialPopup()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    .line 240
    new-instance v0, Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;->HELP_CREATE_SPEEDDIAL:Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;-><init>(Landroid/content/Context;Lcom/sec/android/app/contacts/widget/TutorialPopupView$LAYOUT_TYPE;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const v1, 0x7f0e0431

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setText(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextGravity(I)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTextViewGravity(I)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setTopPostion(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setIndicatorSoundEffects(Z)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$4;-><init>(Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setOnIndicatorTouchListener(Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$5;-><init>(Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setOnSecondIndicatorTouchListener(Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->show()V

    .line 293
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 188
    sget-object v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;->onItemSelectorCancelled()V

    .line 192
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mIsTutorialMode:Z

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mIsTutorialMode:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 94
    .local v2, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0401e3

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 108
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    const v4, 0x7f0e0321

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 109
    const v4, 0x7f0e0267

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 110
    new-instance v1, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 152
    .local v1, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e00b7

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 166
    .local v3, "result":Landroid/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 168
    return-object v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 205
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mIsTutorialMode:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mIsTutorialMode:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 179
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mIsTutorialMode:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->showSpeedDialTutorialPopup()V

    .line 182
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 175
    return-void
.end method
