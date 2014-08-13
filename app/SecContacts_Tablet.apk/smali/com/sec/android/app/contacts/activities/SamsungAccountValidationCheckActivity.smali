.class public Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SamsungAccountValidationCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.sec.android.contacts.action.samsungaccountvalidationcheck"


# instance fields
.field private final CLIENT_ID:Ljava/lang/String;

.field private final CLIENT_SECRET:Ljava/lang/String;

.field private final NONE_VALID_SAMSUNG_ACCOUNT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final VALIDATION_ACTION:Ljava/lang/String;

.field private mChangeDestinationAttentionDialog:Landroid/app/AlertDialog;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

.field private mSetContactSyncDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 52
    const-string v0, "SamsungAccountValidationCheckActivity"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->TAG:Ljava/lang/String;

    .line 56
    const-string v0, "50g862n7m1"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->CLIENT_ID:Ljava/lang/String;

    .line 57
    const-string v0, "7C02D4DC43694AC81B0B7737D74DA8AB"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->CLIENT_SECRET:Ljava/lang/String;

    .line 58
    const-string v0, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->VALIDATION_ACTION:Ljava/lang/String;

    .line 59
    const-string v0, "noneValidSamsungAccount"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->NONE_VALID_SAMSUNG_ACCOUNT:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->writeValidationSamsungAccountToPreference()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->checkContactsSyncable()V

    return-void
.end method

.method private checkContactsSyncable()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 150
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 151
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    const-string v8, "com.osp.app.signin"

    invoke-virtual {v1, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 152
    .local v2, "accounts":[Landroid/accounts/Account;
    aget-object v0, v2, v10

    .line 153
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 154
    const-string v8, "SamsungAccountValidationCheckActivity"

    const-string v9, "Samsung account doesn\'t exist"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, v10}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V

    .line 157
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v6

    .line 158
    .local v6, "syncAdapters":[Landroid/content/SyncAdapterType;
    move-object v3, v6

    .local v3, "arr$":[Landroid/content/SyncAdapterType;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v3, v4

    .line 159
    .local v7, "type":Landroid/content/SyncAdapterType;
    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const-string v9, "com.android.contacts"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "com.android.contacts"

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 163
    const-string v8, "com.android.contacts"

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 171
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V

    .line 182
    .end local v7    # "type":Landroid/content/SyncAdapterType;
    :goto_1
    return-void

    .line 173
    .restart local v7    # "type":Landroid/content/SyncAdapterType;
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->showSetContactSyncPopup(Landroid/accounts/Account;)V

    goto :goto_1

    .line 158
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .end local v7    # "type":Landroid/content/SyncAdapterType;
    :cond_3
    const-string v8, "SamsungAccountValidationCheckActivity"

    const-string v9, "Samsung account doesn\'t support contact sync"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0, v10}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V

    goto :goto_1
.end method

.method private clearValidationAccountInPreferernece()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keySamungAccountValidation"

    const-string v2, "noneValidSamsungAccount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    return-void
.end method

.method private finishActivityWithResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 274
    return-void
.end method

.method private isVaildAccount(Ljava/lang/String;)Z
    .locals 5
    .param p1, "savedAccount"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 305
    if-nez p1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v3

    .line 310
    :cond_1
    const-string v4, "noneValidSamsungAccount"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 316
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 317
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 318
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v4, v2

    if-gtz v4, :cond_2

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->clearValidationAccountInPreferernece()V

    goto :goto_0

    .line 325
    :cond_2
    aget-object v0, v2, v3

    .line 326
    .local v0, "account":Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 327
    const/4 v3, 0x1

    goto :goto_0

    .line 329
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->clearValidationAccountInPreferernece()V

    goto :goto_0
.end method

.method private showChangeDestinationAttentionPopup()V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0292

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e048e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$7;-><init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$6;-><init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$5;-><init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mChangeDestinationAttentionDialog:Landroid/app/AlertDialog;

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mChangeDestinationAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 252
    return-void
.end method

.method private showSetContactSyncPopup(Landroid/accounts/Account;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 186
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e048c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e048d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;Landroid/accounts/Account;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 222
    return-void
.end method

.method private writeValidationSamsungAccountToPreference()V
    .locals 5

    .prologue
    .line 283
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 284
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 285
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "keySamungAccountValidation"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 258
    const-string v0, "SamsungAccountValidationCheckActivity"

    const-string v1, "Get result of validation request"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 261
    const-string v0, "SamsungAccountValidationCheckActivity"

    const-string v1, "Validation request has succeed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->writeValidationSamsungAccountToPreference()V

    .line 263
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->checkContactsSyncable()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    if-nez p2, :cond_0

    .line 265
    const-string v0, "SamsungAccountValidationCheckActivity"

    const-string v1, "Validation request has failed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const v0, 0x7f0e048b

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 70
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 75
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 85
    const/4 v3, 0x0

    .line 88
    .local v3, "savedAccount":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "keySamungAccountValidation"

    const-string v6, "noneValidSamsungAccount"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 94
    :goto_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->isVaildAccount(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->checkContactsSyncable()V

    .line 122
    :goto_1
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    new-instance v4, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;-><init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mReceiver:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    .line 99
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mReceiver:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.msc.action.VALIDATION_CHECK_REQUEST"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "client_id"

    const-string v5, "50g862n7m1"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v4, "client_secret"

    const-string v5, "7C02D4DC43694AC81B0B7737D74DA8AB"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v4, "mypackage"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v4, "OSP_VER"

    const-string v5, "OSP_02"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v4, "MODE"

    const-string v5, "VALIDATION_CHECK"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    const-string v4, "SamsungAccountValidationCheckActivity"

    const-string v5, "Send Broadcast to check validation"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v4, 0x0

    const v5, 0x7f0e048a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 114
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 115
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mReceiver:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mReceiver:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mReceiver:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 134
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 139
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mSetContactSyncDialog:Landroid/app/AlertDialog;

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mChangeDestinationAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mChangeDestinationAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mChangeDestinationAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 144
    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->mChangeDestinationAttentionDialog:Landroid/app/AlertDialog;

    .line 146
    :cond_3
    return-void
.end method
