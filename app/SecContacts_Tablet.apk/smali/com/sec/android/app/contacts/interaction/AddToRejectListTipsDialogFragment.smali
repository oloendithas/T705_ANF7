.class public Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;
.super Landroid/app/DialogFragment;
.source "AddToRejectListTipsDialogFragment.java"


# static fields
.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_IS_CHECK_BOX_CHECKED:Ljava/lang/String; = "isCheckBoxChecked"

.field private static final KEY_SHOW_ADD_TO_REJECT_LIST_TIPS:Ljava/lang/String; = "showAddToRejectListTips"

.field private static final TAG:Ljava/lang/String; = "AddToRejectListTipsDialogFragment"


# instance fields
.field mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field public mContactUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
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

.method public static neverShowAddToRejectListTipsAgain(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showAddToRejectListTips"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    return-void
.end method

.method public static shouldShowAddToRejectListTips(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showAddToRejectListTips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Activity;Landroid/net/Uri;Z)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contactUri"    # Landroid/net/Uri;
    .param p3, "isAdd"    # Z

    .prologue
    .line 135
    new-instance v0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;-><init>()V

    .line 136
    .local v0, "fragment":Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;
    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->setContactUri(Landroid/net/Uri;)V

    .line 138
    if-eqz p3, :cond_1

    .line 140
    const-string v1, "AddToRejectListTipsDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    const-string v1, "AddToRejectListTipsDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->addToRejectList(Landroid/app/Activity;Z)V

    goto :goto_0
.end method


# virtual methods
.method public addToRejectList(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isAdd"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    invoke-static {p1, v0, p2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    .line 131
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040008

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 72
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 74
    if-eqz p1, :cond_1

    .line 75
    const-string v4, "isCheckBoxChecked"

    invoke-virtual {p1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 81
    :goto_0
    const-string v4, "contactUri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    .line 86
    :goto_1
    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "doNotShowAgainContainer":Landroid/view/View;
    new-instance v2, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;)V

    .line 98
    .local v2, "keylistener":Landroid/content/DialogInterface$OnKeyListener;
    new-instance v4, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e02fe

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 122
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0

    .line 78
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "doNotShowAgainContainer":Landroid/view/View;
    .end local v2    # "keylistener":Landroid/content/DialogInterface$OnKeyListener;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "isCheckBoxChecked"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mContactUri:Landroid/net/Uri;

    .line 127
    return-void
.end method
