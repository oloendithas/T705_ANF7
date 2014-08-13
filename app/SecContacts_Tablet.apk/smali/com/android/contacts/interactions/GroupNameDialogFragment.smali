.class public abstract Lcom/android/contacts/interactions/GroupNameDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEdit:Landroid/widget/EditText;

.field private mView:Landroid/view/View;

.field private ok_button:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/GroupNameDialogFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/interactions/GroupNameDialogFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/GroupNameDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->checkEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/GroupNameDialogFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->ok_button:Landroid/widget/Button;

    return-object v0
.end method

.method private checkEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 189
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateOkButtonState(Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 210
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 201
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0, v0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->updateOkButtonState(Landroid/app/AlertDialog;)V

    .line 204
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 214
    return-void
.end method

.method protected abstract getTitleResourceId()I
.end method

.method protected abstract initializeGroupLabelEditText(Landroid/widget/EditText;)V
.end method

.method protected abstract isTitleDuplicated(Ljava/lang/String;)Z
.end method

.method protected abstract onCompleted(Ljava/lang/String;)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    iget-object v5, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 176
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0c00c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 178
    .local v1, "paddingLeft":I
    const v5, 0x7f0c00c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 180
    .local v3, "paddingTop":I
    const v5, 0x7f0c00c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 182
    .local v2, "paddingRight":I
    const v5, 0x7f0c00c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 184
    .local v0, "paddingBottom":I
    iget-object v5, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 186
    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingTop":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mActivity:Landroid/app/Activity;

    .line 69
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f040152

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mView:Landroid/view/View;

    .line 70
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mView:Landroid/view/View;

    const v4, 0x7f090315

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    .line 72
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 73
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->initializeGroupLabelEditText(Landroid/widget/EditText;)V

    .line 75
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    new-instance v4, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 89
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x101006e

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->getTitleResourceId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 96
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 98
    const v2, 0x104000a

    new-instance v4, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    const/high16 v2, 0x1040000

    new-instance v4, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 127
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 129
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 133
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->ok_button:Landroid/widget/Button;

    .line 134
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->ok_button:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->ok_button:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/android/contacts/interactions/GroupNameDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment$4;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 159
    return-object v1

    :cond_3
    move v2, v3

    .line 135
    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 163
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->updateOkButtonState(Landroid/app/AlertDialog;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 167
    .local v0, "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 169
    .end local v0    # "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 218
    return-void
.end method
