.class public Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "AttentionForSelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final KEY_SHOW_CONTACT_TIPS_CHECK_STATE:Ljava/lang/String; = "checkedState"

.field private static final KEY_SHOW_CREATE_OTHER_ACCOUNT_CONTACT_ATTENTION:Ljava/lang/String; = "showCreateOtherAccountContactAttention"

.field private static final KEY_SHOW_CREATE_PHONE_ACCOUNT_CONTACT_ATTENTION:Ljava/lang/String; = "showCreatePhoneAccountContactAttention"

.field private static final TAG:Ljava/lang/String; = "AttentionForSelectAccountDialogFragment"


# instance fields
.field private mAccount:Lcom/android/contacts/model/AccountWithDataSet;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 62
    return-void
.end method

.method public static DismissDialog(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 204
    const-string v1, "AttentionForSelectAccountDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    .line 207
    .local v0, "fragment":Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 210
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method public static checkShowAttentionAgain(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    const/4 v3, 0x1

    .line 71
    iget-object v0, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    .line 72
    .local v0, "accountType":Ljava/lang/String;
    const-string v1, "com.osp.app.signin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->isSimAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    const/4 v1, 0x0

    .line 79
    :goto_0
    return v1

    .line 75
    :cond_1
    const-string v1, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-static {p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "showCreatePhoneAccountContactAttention"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "showCreateOtherAccountContactAttention"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static doNotShowAttentionAgain(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v0, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    .line 86
    .local v0, "accountType":Ljava/lang/String;
    const-string v1, "com.osp.app.signin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->isSimAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v1, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-static {p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showCreatePhoneAccountContactAttention"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showCreateOtherAccountContactAttention"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static getCheckedState(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-static {p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checkedState"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isShowing(Landroid/app/FragmentManager;)Z
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 230
    const-string v1, "AttentionForSelectAccountDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    .line 233
    .local v0, "fragment":Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 234
    :cond_0
    const/4 v1, 0x0

    .line 237
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;)V
    .locals 5
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p3, "listener"    # Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;

    .prologue
    .line 181
    const-string v3, "AttentionForSelectAccountDialogFragment"

    invoke-virtual {p0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 182
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    if-eqz v3, :cond_0

    .line 183
    check-cast v1, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    .end local v1    # "f":Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->dismissAllowingStateLoss()V

    .line 185
    :cond_0
    new-instance v2, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;-><init>()V

    .line 186
    .local v2, "fragment":Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;
    invoke-virtual {v2, p2}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->setAccount(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 187
    invoke-virtual {v2, p3}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->setListener(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;)V

    .line 191
    :try_start_0
    const-string v3, "AttentionForSelectAccountDialogFragment"

    invoke-virtual {p0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 192
    const-string v3, "AttentionForSelectAccountDialogFragment"

    const-string v4, "show AttentionForSelectAccountDialogFragment"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v3, "AttentionForSelectAccountDialogFragment"

    invoke-virtual {v2, p0, v3}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static showAttentionAgain(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    const/4 v3, 0x1

    .line 99
    iget-object v0, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    .line 100
    .local v0, "accountType":Ljava/lang/String;
    const-string v1, "com.osp.app.signin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->isSimAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v1, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-static {p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showCreatePhoneAccountContactAttention"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showCreateOtherAccountContactAttention"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static storeCheckedState(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkedState"    # Z

    .prologue
    .line 113
    invoke-static {p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checkedState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 243
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mContext:Landroid/content/Context;

    .line 244
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0401dd

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 127
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    if-eqz v5, :cond_0

    const-string v5, "vnd.sec.contact.phone"

    iget-object v6, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v6, v6, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    const v5, 0x7f0e042b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "messageText":Ljava/lang/String;
    :goto_0
    const v5, 0x7f090037

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 133
    .local v3, "messageView":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v5, 0x7f090101

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 136
    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getCheckedState(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 138
    const v5, 0x7f090438

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "doNotShowAgainContainer":Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 141
    new-instance v5, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0415

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 175
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0

    .line 130
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "doNotShowAgainContainer":Landroid/view/View;
    .end local v2    # "messageText":Ljava/lang/String;
    .end local v3    # "messageView":Landroid/widget/TextView;
    :cond_0
    const v5, 0x7f0e042c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "messageText":Ljava/lang/String;
    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mListener:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mListener:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;->onAttentionDialogDetached(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 227
    :cond_0
    return-void
.end method

.method public setAccount(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 214
    return-void
.end method

.method public setListener(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mListener:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$Listener;

    .line 218
    return-void
.end method
