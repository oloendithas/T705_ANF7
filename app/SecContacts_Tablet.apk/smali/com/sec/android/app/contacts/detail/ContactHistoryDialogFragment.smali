.class public Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactHistoryDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final KEY_SHOW_DIALOG:Ljava/lang/String; = "showDialog"

.field public static final TAG:Ljava/lang/String; = "ContactHistoryDialogFragment"

.field private static alertDialog:Landroid/app/AlertDialog;


# instance fields
.field private mChecked:Z

.field private mDialogCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mShowNeverAgain:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mShowNeverAgain:Z

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mChecked:Z

    return p1
.end method

.method public static getDoNotShowAgainDialog(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showDialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setDoNotShowAgainDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showDialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 6
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "targetFragment":Landroid/app/Fragment;, "TF;"
    new-instance v3, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;-><init>()V

    .line 85
    .local v3, "instance":Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "ContactHistoryDialogFragment"

    const-string v5, "show"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 94
    const-string v4, "ContactHistoryDialogFragment"

    invoke-virtual {p0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 95
    .local v2, "f":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 97
    check-cast v2, Landroid/app/DialogFragment;

    .end local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 98
    const-string v4, "ContactHistoryDialogFragment"

    const-string v5, "ContactHistoryDialogFragment is already added"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    const-string v4, "ContactHistoryDialogFragment"

    invoke-virtual {v3, p0, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 110
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mChecked:Z

    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 115
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040088

    invoke-virtual {v2, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 117
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0901f4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 119
    .local v4, "setDoNotShowAgainView":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    const v7, 0x7f0901f5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 122
    .local v1, "checkBox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v7, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v7, 0x7f0901f3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 135
    .local v5, "textView":Landroid/widget/TextView;
    const v7, 0x7f0e02b2

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 137
    const v7, 0x7f0e02b3

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;

    invoke-direct {v9, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    new-instance v9, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$2;

    invoke-direct {v9, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 158
    .local v3, "result":Landroid/app/AlertDialog;
    return-object v3
.end method
