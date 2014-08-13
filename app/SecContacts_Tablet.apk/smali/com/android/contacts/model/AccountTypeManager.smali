.class public abstract Lcom/android/contacts/model/AccountTypeManager;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/AccountTypeManager$Listener;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_AUID:Ljava/lang/String; = "com.kddi.ast.auoneid"

.field public static final ACCOUNT_TYPE_DOCOMO:Ljava/lang/String; = "com.android.nttdocomo"

.field public static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field public static final ACCOUNT_TYPE_SERVICE:Ljava/lang/String; = "contactAccountTypes"

.field protected static final MESSAGE_LOAD_FINISHED:I = 0x0

.field public static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field public static final SMLDS_ACCOUNT_TYPE:Ljava/lang/String; = "com.smlds.accountType"

.field static final TAG:Ljava/lang/String; = "AccountTypeManager"


# instance fields
.field public final SIM_ONE:I

.field public final SIM_ZERO:I

.field protected mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/model/AccountTypeManager$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/model/AccountTypeManager;->SIM_ZERO:I

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/model/AccountTypeManager;->SIM_ONE:I

    .line 131
    new-instance v0, Lcom/android/contacts/model/AccountTypeManager$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/model/AccountTypeManager$1;-><init>(Lcom/android/contacts/model/AccountTypeManager;)V

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/AccountTypeManager$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/AccountTypeManager;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManager;->mListener:Lcom/android/contacts/model/AccountTypeManager$Listener;

    return-object v0
.end method

.method public static declared-synchronized createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const-class v1, Lcom/android/contacts/model/AccountTypeManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 146
    const-string v1, "contactAccountTypes"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountTypeManager;

    .line 148
    .local v0, "service":Lcom/android/contacts/model/AccountTypeManager;
    if-nez v0, :cond_0

    .line 149
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 150
    const-string v1, "AccountTypeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No account type service in context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-object v0

    .line 152
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->setListener(Lcom/android/contacts/model/AccountTypeManager$Listener;)V

    goto :goto_0
.end method


# virtual methods
.method public contains(Lcom/android/contacts/model/AccountWithDataSet;Z)Z
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "contactWritableOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 261
    .local v0, "account_2":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    const/4 v2, 0x1

    .line 265
    .end local v0    # "account_2":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return v2
.end method

.method public abstract getAUIDAccounts()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAUIDAccountsWithDataSet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccountType(Lcom/android/contacts/model/AccountTypeWithDataSet;)Lcom/android/contacts/model/AccountType;
.end method

.method public abstract getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;
.end method

.method public final getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p1, p2}, Lcom/android/contacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/model/AccountTypeWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public final getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/android/contacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/model/AccountTypeWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAccountTypes(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccounts(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocomoAccounts()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocomoAccountsWithDataSet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnabledAccounts(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGoogleAccounts()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGoogleAccountsWithDataSet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupWritableAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 245
    .local v0, "type":Lcom/android/contacts/model/AccountType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v1

    goto :goto_0
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 235
    .local v0, "type":Lcom/android/contacts/model/AccountType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getOnlySim1Accounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnlySim2Accounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSamsungAccountsWithDataSet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSim1AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;
.end method

.method public abstract getSim1Sim2Accounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSim2AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;
.end method

.method public abstract getUsableInvitableAccountTypes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWritableAccountsWithoutSim()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWritableAccountsWithoutSim1()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWritableAccountsWithoutSim2()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method

.method public setListener(Lcom/android/contacts/model/AccountTypeManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/model/AccountTypeManager$Listener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManager;->mListener:Lcom/android/contacts/model/AccountTypeManager$Listener;

    .line 126
    return-void
.end method
