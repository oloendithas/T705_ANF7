.class public Lcom/android/contacts/vcard/SelectAccountActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SelectAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final DATA_SET:Ljava/lang/String; = "data_set"

.field private static final LOG_TAG:Ljava/lang/String; = "SelectAccountActivity"


# instance fields
.field private mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0e00d3

    const/16 v7, 0x400

    .line 56
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 66
    const v5, 0x7f0e00d3

    .line 67
    .local v5, "resId":I
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 69
    .local v2, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v2}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v1

    .line 70
    .local v1, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 71
    const-string v6, "SelectAccountActivity"

    const-string v7, "Account does not exist"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 75
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 76
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "account_name"

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v6, "account_type"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v6, "data_set"

    iget-object v7, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 85
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v6, "SelectAccountActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number of available accounts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v6, Lcom/android/contacts/vcard/SelectAccountActivity$1;

    invoke-direct {v6, p0, p0, v1, v9}, Lcom/android/contacts/vcard/SelectAccountActivity$1;-><init>(Lcom/android/contacts/vcard/SelectAccountActivity;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v6, p0, Lcom/android/contacts/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 106
    const v6, 0x7f0e00d3

    :try_start_0
    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v3

    .line 108
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 116
    packed-switch p1, :pswitch_data_0

    .line 127
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mAccountSelectionListener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    new-instance v1, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/SelectAccountActivity;Lcom/android/contacts/vcard/SelectAccountActivity$1;)V

    invoke-static {p0, p1, v0, v1}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00d3
        :pswitch_0
    .end packed-switch
.end method
