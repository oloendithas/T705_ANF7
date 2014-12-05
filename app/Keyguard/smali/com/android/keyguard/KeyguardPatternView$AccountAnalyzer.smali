.class Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;)V
    .registers 6
    .param p2, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object p2, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 717
    const-string v0, "com.google"

    new-instance v1, Landroid/os/UserHandle;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/keyguard/KeyguardPatternView;->access$1900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    .line 719
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardPatternView$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p2, "x1"    # Landroid/accounts/AccountManager;
    .param p3, "x2"    # Lcom/android/keyguard/KeyguardPatternView$1;

    .prologue
    .line 710
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 724
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$2900(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_11

    .line 731
    :cond_10
    :goto_10
    return-void

    .line 729
    :cond_11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    new-instance v6, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardPatternView;->access$1900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    goto :goto_10
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 742
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 743
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v2, 0x1

    # setter for: Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->access$2902(Lcom/android/keyguard/KeyguardPatternView;Z)Z

    .line 745
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$3000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    if-eq v1, v2, :cond_2e

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2000(Lcom/android/keyguard/KeyguardPatternView;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2e

    .line 747
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->access$3100(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    :try_end_2e
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_2e} :catch_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_43
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_2e} :catch_4e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_59

    .line 756
    :cond_2e
    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 757
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    .line 759
    .end local v0    # "result":Landroid/os/Bundle;
    :goto_37
    return-void

    .line 749
    :catch_38
    move-exception v1

    .line 756
    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 757
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    goto :goto_37

    .line 751
    :catch_43
    move-exception v1

    .line 756
    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 757
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    goto :goto_37

    .line 753
    :catch_4e
    move-exception v1

    .line 756
    iget v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 757
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    goto :goto_37

    .line 756
    :catchall_59
    move-exception v1

    iget v2, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 757
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    throw v1
.end method

.method public start()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 734
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # setter for: Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2902(Lcom/android/keyguard/KeyguardPatternView;Z)Z

    .line 735
    iput v1, p0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->mAccountIndex:I

    .line 736
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->next()V

    .line 737
    return-void
.end method
