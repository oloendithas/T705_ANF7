.class public Lcom/android/contacts/ContactListEmptyView;
.super Landroid/widget/ScrollView;
.source "ContactListEmptyView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactListEmptyView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private isSyncActive()Z
    .locals 9

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 107
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    .line 108
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v3

    .line 109
    .local v3, "contentService":Landroid/content/IContentService;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 111
    .local v0, "account":Landroid/accounts/Account;
    :try_start_0
    const-string v7, "com.android.contacts"

    invoke-interface {v3, v0, v7}, Landroid/content/IContentService;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 112
    const/4 v7, 0x1

    .line 119
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v3    # "contentService":Landroid/content/IContentService;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :goto_1
    return v7

    .line 114
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v2    # "arr$":[Landroid/accounts/Account;
    .restart local v3    # "contentService":Landroid/content/IContentService;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :catch_0
    move-exception v4

    .line 115
    .local v4, "e":Landroid/os/RemoteException;
    const-string v7, "ContactListEmptyView"

    const-string v8, "Could not get the sync status"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v3    # "contentService":Landroid/content/IContentService;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 50
    const v1, 0x7f09013a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "empty":Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    return-void
.end method

.method public show(ZZZZZZZ)V
    .locals 5
    .param p1, "searchMode"    # Z
    .param p2, "displayOnlyPhones"    # Z
    .param p3, "isFavoritesMode"    # Z
    .param p4, "isQueryMode"    # Z
    .param p5, "isShortcutAction"    # Z
    .param p6, "isMultipleSelectionEnabled"    # Z
    .param p7, "showSelectedOnly"    # Z

    .prologue
    const v4, 0x7f0e007b

    .line 57
    if-eqz p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 61
    :cond_0
    const v3, 0x7f09013a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, "empty":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "context":Landroid/content/Context;
    if-eqz p2, :cond_2

    .line 64
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_1
    :goto_1
    if-eqz p6, :cond_5

    .line 70
    if-eqz p7, :cond_4

    .line 71
    const v3, 0x7f0e01a2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_2
    if-eqz p3, :cond_3

    .line 66
    const v3, 0x7f0e00aa

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 67
    :cond_3
    if-eqz p4, :cond_1

    .line 68
    const v3, 0x7f0e007a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 76
    :cond_5
    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v2

    .line 77
    .local v2, "hasSim":Z
    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-nez v3, :cond_7

    .line 81
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/contacts/ContactListEmptyView;->isSyncActive()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 82
    if-eqz p5, :cond_8

    .line 84
    const v3, 0x7f0e00a4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 79
    :cond_7
    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    .line 86
    :cond_8
    if-eqz v2, :cond_9

    .line 87
    const v3, 0x7f0e00a7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 89
    :cond_9
    const v3, 0x7f0e00a9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 92
    :cond_a
    if-eqz p5, :cond_b

    .line 94
    const v3, 0x7f0e00a5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 95
    :cond_b
    if-eqz v2, :cond_c

    .line 96
    const v3, 0x7f0e00a6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 98
    :cond_c
    const v3, 0x7f0e00a8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
