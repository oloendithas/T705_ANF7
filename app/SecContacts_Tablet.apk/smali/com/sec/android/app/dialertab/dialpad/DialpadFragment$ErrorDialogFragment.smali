.class public Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# static fields
.field private static final ARG_MESSAGE_RES_ID:Ljava/lang/String; = "argMessageResId"

.field private static final ARG_TITLE_RES_ID:Ljava/lang/String; = "argTitleResId"


# instance fields
.field private mMessageResId:Ljava/lang/Integer;

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11248
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 1
    .param p0, "titleResId"    # I

    .prologue
    .line 11256
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->newInstanceInter(ILjava/lang/Integer;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(II)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 1
    .param p0, "titleResId"    # I
    .param p1, "messageResId"    # I

    .prologue
    .line 11260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->newInstanceInter(ILjava/lang/Integer;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method private static newInstanceInter(ILjava/lang/Integer;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 4
    .param p0, "titleResId"    # I
    .param p1, "messageResId"    # Ljava/lang/Integer;

    .prologue
    .line 11265
    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-direct {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;-><init>()V

    .line 11266
    .local v1, "fragment":Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11267
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 11268
    const-string v2, "argTitleResId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11270
    :cond_0
    if-eqz p1, :cond_1

    .line 11271
    const-string v2, "argMessageResId"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11273
    :cond_1
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11274
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11279
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 11280
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argTitleResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11281
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argTitleResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    .line 11283
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMessageResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11284
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMessageResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    .line 11286
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 11290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11291
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    if-eqz v3, :cond_0

    .line 11292
    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 11295
    :cond_0
    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11302
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsAirplaneModeOn:Z
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8102(Z)Z

    .line 11305
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsAirplaneModeOn:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8100()Z

    move-result v2

    if-nez v2, :cond_2

    .line 11306
    const v2, 0x7f0e02e5

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11345
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 11346
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 11349
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 11351
    .local v1, "mDialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$3;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 11364
    return-object v1
.end method
