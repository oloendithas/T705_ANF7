.class Lcom/android/contacts/model/AccountTypeManagerImpl;
.super Lcom/android/contacts/model/AccountTypeManager;
.source "AccountTypeManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;,
        Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_LOAD_DATA:I = 0x0

.field private static final MESSAGE_PROCESS_BROADCAST_INTENT:I = 0x1

.field private static final SAMPLE_CONTACT_URI:Landroid/net/Uri;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountTypesWithDataSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContactWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFallbackAccount:Landroid/accounts/Account;

.field private mFallbackAccountType:Lcom/android/contacts/model/AccountType;

.field private mGroupWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

.field private mInvitableAccountTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListenerHandler:Landroid/os/Handler;

.field private mListenerThread:Landroid/os/HandlerThread;

.field private mPhoneKnox2Account:Landroid/accounts/Account;

.field private mPhoneKnox2AccountType:Lcom/android/contacts/model/AccountType;

.field private mPhoneKnoxAccount:Landroid/accounts/Account;

.field private mPhoneKnoxAccountType:Lcom/android/contacts/model/AccountType;

.field private mPhonePersonalAccount:Landroid/accounts/Account;

.field private mPhonePersonalAccountType:Lcom/android/contacts/model/AccountType;

.field private mPhoneReadOnlyAccount:Landroid/accounts/Account;

.field private mPhoneReadOnlyAccountType:Lcom/android/contacts/model/AccountType;

.field private mSim2Account:Landroid/accounts/Account;

.field private mSim2AccountType:Lcom/android/contacts/model/AccountType;

.field private mSimAccount:Landroid/accounts/Account;

.field private mSimAccountType:Lcom/android/contacts/model/AccountType;

.field private mVAppAccount:Landroid/accounts/Account;

.field private mVAppAccountType:Lcom/android/contacts/model/AccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 282
    const-wide/16 v0, 0x1

    const-string v2, "xxx"

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    .line 345
    new-instance v0, Lcom/android/contacts/model/AccountTypeManagerImpl$2;

    invoke-direct {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl$2;-><init>()V

    sput-object v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 387
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManager;-><init>()V

    .line 304
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 305
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypes:Ljava/util/HashMap;

    .line 306
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 307
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 308
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 309
    sget-object v2, Lcom/android/contacts/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 318
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 324
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 332
    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$1;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 388
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 392
    new-instance v2, Lcom/sec/android/app/contacts/model/SimAccountType;

    invoke-direct {v2, p1}, Lcom/sec/android/app/contacts/model/SimAccountType;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccountType:Lcom/android/contacts/model/AccountType;

    .line 393
    new-instance v2, Lcom/sec/android/app/contacts/model/Sim2AccountType;

    invoke-direct {v2, p1}, Lcom/sec/android/app/contacts/model/Sim2AccountType;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2AccountType:Lcom/android/contacts/model/AccountType;

    .line 394
    new-instance v2, Landroid/accounts/Account;

    const-string v3, "primary.sim.account_name"

    const-string v4, "vnd.sec.contact.sim"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    .line 395
    new-instance v2, Landroid/accounts/Account;

    const-string v3, "primary.sim2.account_name"

    const-string v4, "vnd.sec.contact.sim2"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2Account:Landroid/accounts/Account;

    .line 397
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 399
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AccountChangeListener"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    .line 400
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 401
    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$3;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/model/AccountTypeManagerImpl$3;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 415
    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl$1;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    .line 418
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 424
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 430
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 431
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 433
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 435
    invoke-static {v6, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 437
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 438
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/AccountTypeManagerImpl;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/AccountTypeManagerImpl;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/model/AccountTypeManagerImpl;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/AccountTypeManagerImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/model/AccountTypeManagerImpl;)Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/AccountTypeManagerImpl;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/model/AccountTypeManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/AccountTypeManagerImpl;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/AccountType;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 842
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    .local p3, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/model/AccountType;>;>;"
    invoke-virtual {p1}, Lcom/android/contacts/model/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    iget-object v1, p1, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 844
    .local v0, "accountsForType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountType;>;"
    if-nez v0, :cond_0

    .line 845
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 847
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v1, p1, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    return-void
.end method

.method static findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1391
    .local p1, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 1392
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1393
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v1

    .line 1394
    .local v1, "accountTypeWithDataSet":Lcom/android/contacts/model/AccountTypeWithDataSet;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountType;

    .line 1395
    .local v4, "type":Lcom/android/contacts/model/AccountType;
    if-eqz v4, :cond_0

    .line 1396
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1398
    const-string v5, "AccountTypeManager"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1399
    const-string v5, "AccountTypeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inviteClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_1
    invoke-virtual {v4}, Lcom/android/contacts/model/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1403
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1406
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1    # "accountTypeWithDataSet":Lcom/android/contacts/model/AccountTypeWithDataSet;
    .end local v4    # "type":Lcom/android/contacts/model/AccountType;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method

.method protected static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 5
    .param p0, "auths"    # [Landroid/accounts/AuthenticatorDescription;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 857
    move-object v0, p0

    .local v0, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 858
    .local v1, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 862
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v1

    .line 857
    .restart local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 862
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1420
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->getAllInvitableAccountTypes()Ljava/util/Map;

    move-result-object v2

    .line 1421
    .local v2, "allInvitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1422
    sget-object v8, Lcom/android/contacts/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 1455
    :goto_0
    return-object v8

    .line 1425
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 1426
    .local v7, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1428
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1429
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountTypeWithDataSet;

    .line 1430
    .local v1, "accountTypeWithDataSet":Lcom/android/contacts/model/AccountTypeWithDataSet;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    .line 1433
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    sget-object v8, Lcom/android/contacts/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    invoke-static {v0, v8}, Lcom/android/contacts/ContactsUtils;->getInvitableIntent(Lcom/android/contacts/model/AccountType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 1435
    .local v4, "invitableIntent":Landroid/content/Intent;
    if-nez v4, :cond_2

    .line 1436
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1439
    :cond_2
    const/high16 v8, 0x10000

    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 1441
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_3

    .line 1444
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1450
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/contacts/model/AccountTypeWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1451
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1455
    .end local v0    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v1    # "accountTypeWithDataSet":Lcom/android/contacts/model/AccountTypeWithDataSet;
    .end local v4    # "invitableIntent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    goto :goto_0
.end method

.method private getAllInvitableAccountTypes()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 1346
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1347
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method ensureAccountsLoaded()V
    .locals 3

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 461
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 466
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public getAUIDAccounts()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1144
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1145
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1147
    monitor-enter p0

    .line 1148
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1149
    .local v0, "account":Landroid/accounts/Account;
    const-string v3, "com.smlds.accountType"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.osp.app.signin"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1153
    const-string v3, "com.kddi.ast.auoneid"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1154
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1157
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1158
    return-object v1
.end method

.method public getAUIDAccountsWithDataSet()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1162
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1163
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1165
    monitor-enter p0

    .line 1166
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1167
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v3, "com.smlds.accountType"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.osp.app.signin"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1171
    const-string v3, "com.kddi.ast.auoneid"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1172
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1175
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    return-object v1
.end method

.method public getAccountType(Lcom/android/contacts/model/AccountTypeWithDataSet;)Lcom/android/contacts/model/AccountType;
    .locals 6
    .param p1, "accountTypeWithDataSet"    # Lcom/android/contacts/model/AccountTypeWithDataSet;

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1318
    monitor-enter p0

    .line 1319
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType;

    .line 1321
    .local v2, "type":Lcom/android/contacts/model/AccountType;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1322
    iget-object v3, p1, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    const-string v4, "com.android.nttdocomo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1323
    const-string v3, "com.android.nttdocomo"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/contacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v0

    .line 1324
    .local v0, "tempAccountTypeWithDataSet":Lcom/android/contacts/model/AccountTypeWithDataSet;
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType;

    .line 1325
    .local v1, "tempType":Lcom/android/contacts/model/AccountType;
    if-eqz v2, :cond_0

    .end local v2    # "type":Lcom/android/contacts/model/AccountType;
    :goto_0
    monitor-exit p0

    .line 1335
    .end local v0    # "tempAccountTypeWithDataSet":Lcom/android/contacts/model/AccountTypeWithDataSet;
    .end local v1    # "tempType":Lcom/android/contacts/model/AccountType;
    :goto_1
    return-object v2

    .restart local v0    # "tempAccountTypeWithDataSet":Lcom/android/contacts/model/AccountTypeWithDataSet;
    .restart local v1    # "tempType":Lcom/android/contacts/model/AccountType;
    .restart local v2    # "type":Lcom/android/contacts/model/AccountType;
    :cond_0
    move-object v2, v1

    .line 1325
    goto :goto_0

    .line 1327
    .end local v0    # "tempAccountTypeWithDataSet":Lcom/android/contacts/model/AccountTypeWithDataSet;
    .end local v1    # "tempType":Lcom/android/contacts/model/AccountType;
    :cond_1
    const-string v3, "AccountTypeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    if-eqz v2, :cond_2

    .line 1329
    monitor-exit p0

    goto :goto_1

    .line 1337
    .end local v2    # "type":Lcom/android/contacts/model/AccountType;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1331
    .restart local v2    # "type":Lcom/android/contacts/model/AccountType;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    .end local v2    # "type":Lcom/android/contacts/model/AccountType;
    monitor-exit p0

    goto :goto_1

    .line 1335
    .restart local v2    # "type":Lcom/android/contacts/model/AccountType;
    :cond_3
    if-eqz v2, :cond_4

    .end local v2    # "type":Lcom/android/contacts/model/AccountType;
    :goto_2
    monitor-exit p0

    goto :goto_1

    .restart local v2    # "type":Lcom/android/contacts/model/AccountType;
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 992
    monitor-enter p0

    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    .line 995
    .local v0, "type":Lcom/android/contacts/model/AccountType;
    if-eqz v0, :cond_0

    .line 996
    monitor-exit p0

    .line 998
    .end local v0    # "type":Lcom/android/contacts/model/AccountType;
    :goto_0
    return-object v0

    .restart local v0    # "type":Lcom/android/contacts/model/AccountType;
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    .end local v0    # "type":Lcom/android/contacts/model/AccountType;
    monitor-exit p0

    goto :goto_0

    .line 1000
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccountTypes(Z)Ljava/util/List;
    .locals 4
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1460
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1461
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1462
    .local v0, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountType;>;"
    monitor-enter p0

    .line 1463
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType;

    .line 1464
    .local v2, "type":Lcom/android/contacts/model/AccountType;
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1465
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1468
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "type":Lcom/android/contacts/model/AccountType;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1469
    return-object v0
.end method

.method public getAccounts(Z)Ljava/util/List;
    .locals 5
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 940
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 941
    .local v1, "contactWritableAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    monitor-enter p0

    .line 942
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 943
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 945
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 942
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_0

    .line 945
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    sget-boolean v3, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-eqz v3, :cond_2

    .line 948
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 949
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2Account:Landroid/accounts/Account;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 952
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_DisableMenuSimExportImport"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 957
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 982
    :cond_4
    return-object v1
.end method

.method public getDocomoAccounts()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1107
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1108
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1110
    monitor-enter p0

    .line 1111
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1112
    .local v0, "account":Landroid/accounts/Account;
    const-string v3, "com.smlds.accountType"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.osp.app.signin"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1116
    const-string v3, "com.android.nttdocomo"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1117
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1120
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1121
    return-object v1
.end method

.method public getDocomoAccountsWithDataSet()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1125
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1126
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1128
    monitor-enter p0

    .line 1129
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1130
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v3, "com.smlds.accountType"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.osp.app.signin"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1134
    const-string v3, "com.android.nttdocomo"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1135
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1138
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1139
    return-object v1
.end method

.method public getEnabledAccounts(Z)Ljava/util/List;
    .locals 9
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 868
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 870
    .local v3, "contactEnabledAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    .line 872
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 874
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 875
    .local v1, "accountType":Lcom/android/contacts/model/AccountType;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountType;->isExtension()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 880
    :cond_1
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v7, "vnd.sec.contact.phone_knox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 882
    iget-object v6, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 883
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "2wayflag"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 887
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v7, "vnd.sec.contact.phone_knox2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 891
    iget-object v6, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 893
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    const-string v6, "2wayflag2"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 899
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v7, "vnd.sec.contact.phone_personal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 901
    iget-object v6, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 902
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    const-string v6, "device_personal"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 907
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    iget-object v6, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const-string v7, "preload"

    if-eq v6, v7, :cond_0

    .line 911
    const-string v6, "com.android.ldap"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 916
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 919
    const-string v6, "com.android.tmo_myphonebook"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 925
    :cond_5
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v7, "com.coolots.chaton"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 928
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 931
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    :cond_6
    return-object v3
.end method

.method public getGoogleAccounts()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1073
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1074
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1076
    monitor-enter p0

    .line 1077
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1078
    .local v0, "account":Landroid/accounts/Account;
    const-string v3, "com.smlds.accountType"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.osp.app.signin"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1082
    const-string v3, "com.google"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1083
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1086
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    return-object v1
.end method

.method public getGoogleAccountsWithDataSet()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1094
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1096
    monitor-enter p0

    .line 1097
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1098
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v3, "com.google"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1099
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1102
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    return-object v1
.end method

.method public getGroupWritableAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1232
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;
    .locals 5
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1291
    const/4 v0, 0x0

    .line 1294
    .local v0, "kind":Lcom/android/contacts/model/DataKind;
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/android/contacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType;

    .line 1296
    .local v1, "type":Lcom/android/contacts/model/AccountType;
    if-eqz v1, :cond_0

    .line 1297
    invoke-virtual {v1, p3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 1300
    :cond_0
    if-nez v0, :cond_1

    .line 1302
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    invoke-virtual {v2, p3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 1305
    :cond_1
    if-nez v0, :cond_2

    .line 1306
    const-string v2, "AccountTypeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_2
    return-object v0
.end method

.method public getOnlySim1Accounts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1255
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1256
    .local v1, "contactGetSim1Accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1258
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1260
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 1261
    new-instance v0, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccountType:Lcom/android/contacts/model/AccountType;

    iget-object v4, v4, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    .local v0, "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    .end local v0    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_0
    return-object v1
.end method

.method public getOnlySim2Accounts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1269
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1270
    .local v1, "contactGetSim2Accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1272
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1274
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2Account:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 1275
    new-instance v0, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2Account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2Account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2AccountType:Lcom/android/contacts/model/AccountType;

    iget-object v4, v4, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    .local v0, "accountWithDataSet2":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    .end local v0    # "accountWithDataSet2":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_0
    return-object v1
.end method

.method public getSamsungAccountsWithDataSet()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1182
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1183
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1185
    monitor-enter p0

    .line 1186
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1187
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v3, "com.osp.app.signin"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1188
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1191
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1192
    return-object v1
.end method

.method public getSim1AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;
    .locals 5

    .prologue
    .line 1198
    const/4 v1, 0x0

    .line 1199
    .local v1, "dataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1201
    monitor-enter p0

    .line 1202
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1203
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v3, "vnd.sec.contact.sim"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1204
    move-object v1, v0

    .line 1208
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    monitor-exit p0

    .line 1209
    return-object v1

    .line 1208
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getSim1Sim2Accounts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1236
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1237
    .local v2, "contactGetSim1Sim2Accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1239
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1241
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_0

    .line 1242
    new-instance v0, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccountType:Lcom/android/contacts/model/AccountType;

    iget-object v5, v5, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    .local v0, "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    .end local v0    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2Account:Landroid/accounts/Account;

    if-eqz v3, :cond_1

    .line 1247
    new-instance v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2Account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2Account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2AccountType:Lcom/android/contacts/model/AccountType;

    iget-object v5, v5, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    .local v1, "accountWithDataSet2":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    .end local v1    # "accountWithDataSet2":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-object v2
.end method

.method public getSim2AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;
    .locals 5

    .prologue
    .line 1213
    const/4 v1, 0x0

    .line 1214
    .local v1, "dataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1216
    monitor-enter p0

    .line 1217
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1218
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v3, "vnd.sec.contact.sim2"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1219
    move-object v1, v0

    .line 1223
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    monitor-exit p0

    .line 1224
    return-object v1

    .line 1223
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getUsableInvitableAccountTypes()Ljava/util/Map;
    .locals 4
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

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1352
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1366
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->setCachedValue(Ljava/util/Map;)V

    .line 1368
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1379
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->getCachedValue()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1373
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    new-instance v0, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Lcom/android/contacts/model/AccountTypeManagerImpl$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getWritableAccountsWithoutSim()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1008
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1009
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 1031
    :cond_0
    :goto_0
    return-object v1

    .line 1012
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1014
    .local v1, "contactWritableAccountsWithoutSim":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    monitor-enter p0

    .line 1015
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1016
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1018
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1020
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_0

    .line 1021
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getWritableAccountsWithoutSim1()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1037
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1038
    .local v1, "contactWritableAccountsWithoutSim1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1040
    monitor-enter p0

    .line 1041
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1042
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1044
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    if-eqz v3, :cond_1

    .line 1047
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1050
    :cond_1
    return-object v1
.end method

.method public getWritableAccountsWithoutSim2()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1056
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1057
    .local v1, "contactWritableAccountsWithoutSim2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 1059
    monitor-enter p0

    .line 1060
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1061
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1063
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2Account:Landroid/accounts/Account;

    if-eqz v3, :cond_1

    .line 1066
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSim2Account:Landroid/accounts/Account;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1069
    :cond_1
    return-object v1
.end method

.method protected loadAccountsInBackground()V
    .locals 47

    .prologue
    .line 479
    const-string v43, "ContactsPerf"

    const/16 v44, 0x3

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v43

    if-eqz v43, :cond_0

    .line 480
    const-string v43, "ContactsPerf"

    const-string v44, "AccountTypeManager.loadAccountsInBackground start"

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    new-instance v41, Landroid/util/TimingLogger;

    const-string v43, "AccountTypeManager"

    const-string v44, "loadAccountsInBackground"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .local v41, "timings":Landroid/util/TimingLogger;
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v34

    .line 484
    .local v34, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    .line 487
    .local v36, "startTimeWall":J
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 493
    .local v8, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 495
    .local v7, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/model/AccountType;>;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 496
    .local v13, "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 497
    .local v18, "contactWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v27

    .line 498
    .local v27, "groupWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v26

    .line 500
    .local v26, "extensionPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 501
    .local v14, "am":Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v19

    .line 503
    .local v19, "cs":Landroid/content/IContentService;
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v33

    .line 505
    .local v33, "mSimMaster":Z
    new-instance v43, Lcom/android/contacts/model/FallbackAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    const-string v45, "vnd.sec.contact.phone"

    invoke-direct/range {v43 .. v45}, Lcom/android/contacts/model/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    .line 506
    new-instance v43, Landroid/accounts/Account;

    const-string v44, "vnd.sec.contact.phone"

    const-string v45, "vnd.sec.contact.phone"

    invoke-direct/range {v43 .. v45}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccount:Landroid/accounts/Account;

    .line 507
    new-instance v43, Lcom/sec/android/app/contacts/model/PhonePersonalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    const-string v45, "vnd.sec.contact.phone_personal"

    invoke-direct/range {v43 .. v45}, Lcom/sec/android/app/contacts/model/PhonePersonalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhonePersonalAccountType:Lcom/android/contacts/model/AccountType;

    .line 508
    new-instance v43, Landroid/accounts/Account;

    const-string v44, "vnd.sec.contact.phone_personal"

    const-string v45, "vnd.sec.contact.phone_personal"

    invoke-direct/range {v43 .. v45}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhonePersonalAccount:Landroid/accounts/Account;

    .line 509
    new-instance v43, Lcom/sec/android/app/contacts/model/PhoneKnoxAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    const-string v45, "vnd.sec.contact.phone_knox100"

    invoke-direct/range {v43 .. v45}, Lcom/sec/android/app/contacts/model/PhoneKnoxAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnoxAccountType:Lcom/android/contacts/model/AccountType;

    .line 510
    new-instance v43, Lcom/sec/android/app/contacts/model/PhoneKnox2AccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-direct/range {v43 .. v45}, Lcom/sec/android/app/contacts/model/PhoneKnox2AccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnox2AccountType:Lcom/android/contacts/model/AccountType;

    .line 511
    new-instance v43, Landroid/accounts/Account;

    const-string v44, "vnd.sec.contact.phone_knox101"

    const-string v45, "vnd.sec.contact.phone_knox2"

    invoke-direct/range {v43 .. v45}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnox2Account:Landroid/accounts/Account;

    .line 513
    new-instance v43, Landroid/accounts/Account;

    const-string v44, "vnd.sec.contact.phone_knox100"

    const-string v45, "vnd.sec.contact.phone_knox"

    invoke-direct/range {v43 .. v45}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnoxAccount:Landroid/accounts/Account;

    .line 514
    new-instance v43, Lcom/sec/android/app/contacts/model/PhoneReadOnlyAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    const-string v45, "vnd.sec.contact.phone"

    invoke-direct/range {v43 .. v45}, Lcom/sec/android/app/contacts/model/PhoneReadOnlyAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneReadOnlyAccountType:Lcom/android/contacts/model/AccountType;

    .line 515
    new-instance v43, Landroid/accounts/Account;

    const-string v44, "vnd.sec.contact.phone"

    const-string v45, "vnd.sec.contact.phone"

    invoke-direct/range {v43 .. v45}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneReadOnlyAccount:Landroid/accounts/Account;

    .line 516
    new-instance v43, Lcom/sec/android/app/contacts/model/VAppAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-direct/range {v43 .. v44}, Lcom/sec/android/app/contacts/model/VAppAccountType;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mVAppAccountType:Lcom/android/contacts/model/AccountType;

    .line 517
    new-instance v43, Landroid/accounts/Account;

    const-string v44, "com.coolots.chaton"

    const-string v45, "com.coolots.chaton"

    invoke-direct/range {v43 .. v45}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mVAppAccount:Landroid/accounts/Account;

    .line 520
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v40

    .line 521
    .local v40, "syncs":[Landroid/content/SyncAdapterType;
    invoke-virtual {v14}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v17

    .line 524
    .local v17, "auths":[Landroid/accounts/AuthenticatorDescription;
    move-object/from16 v15, v40

    .local v15, "arr$":[Landroid/content/SyncAdapterType;
    array-length v0, v15

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v28, 0x0

    .local v28, "i$":I
    :goto_0
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_17

    aget-object v38, v15, v28

    .line 525
    .local v38, "sync":Landroid/content/SyncAdapterType;
    const-string v43, "com.android.contacts"

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_2

    .line 524
    :cond_1
    :goto_1
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 532
    :cond_2
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 533
    .local v42, "type":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v16

    .line 534
    .local v16, "auth":Landroid/accounts/AuthenticatorDescription;
    if-nez v16, :cond_b

    .line 535
    const-string v43, "AccountTypeManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "No authenticator found for type="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", ignoring it."

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 626
    .end local v15    # "arr$":[Landroid/content/SyncAdapterType;
    .end local v16    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v17    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .end local v28    # "i$":I
    .end local v32    # "len$":I
    .end local v38    # "sync":Landroid/content/SyncAdapterType;
    .end local v40    # "syncs":[Landroid/content/SyncAdapterType;
    .end local v42    # "type":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 627
    .local v20, "e":Landroid/os/RemoteException;
    const-string v43, "AccountTypeManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Problem loading accounts: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .end local v20    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v8, v7}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 632
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnablePhoneReadOnlyAccountType()Z

    move-result v43

    if-eqz v43, :cond_4

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneReadOnlyAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v8, v7}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 636
    :cond_4
    sget-boolean v43, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-eqz v43, :cond_1b

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhonePersonalAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v8, v7}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 644
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v43

    if-eqz v43, :cond_5

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v8, v7}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 658
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/contacts/util/PhoneCapabilityTester;->isChatOnVSupport(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_6

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mVAppAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v8, v7}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 661
    :cond_6
    const-string v43, "Loaded account types"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 665
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v43

    const-string v44, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual/range {v43 .. v44}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_7

    .line 666
    new-instance v9, Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccount:Landroid/accounts/Account;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccount:Landroid/accounts/Account;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v9, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .local v9, "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    sget-boolean v43, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-eqz v43, :cond_1c

    .line 673
    new-instance v11, Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhonePersonalAccount:Landroid/accounts/Account;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhonePersonalAccount:Landroid/accounts/Account;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhonePersonalAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v11, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .local v11, "accountWithDataSetPersonal":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    .end local v11    # "accountWithDataSetPersonal":Lcom/android/contacts/model/AccountWithDataSet;
    :goto_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnablePhoneReadOnlyAccountType()Z

    move-result v43

    if-eqz v43, :cond_7

    .line 686
    new-instance v10, Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneReadOnlyAccount:Landroid/accounts/Account;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneReadOnlyAccount:Landroid/accounts/Account;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneReadOnlyAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v10, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .local v10, "accountWithDataSet2":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    .end local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v10    # "accountWithDataSet2":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v43

    if-eqz v43, :cond_8

    .line 692
    new-instance v9, Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccount:Landroid/accounts/Account;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mSimAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v9, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .restart local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    .end local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/contacts/util/PhoneCapabilityTester;->isChatOnVSupport(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_9

    .line 706
    new-instance v9, Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mVAppAccount:Landroid/accounts/Account;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mVAppAccount:Landroid/accounts/Account;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mVAppAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v9, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .restart local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    .end local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v12

    .line 714
    .local v12, "accounts":[Landroid/accounts/Account;
    move-object v15, v12

    .local v15, "arr$":[Landroid/accounts/Account;
    array-length v0, v15

    move/from16 v32, v0

    .restart local v32    # "len$":I
    const/16 v28, 0x0

    .restart local v28    # "i$":I
    move/from16 v29, v28

    .end local v28    # "i$":I
    .local v29, "i$":I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_27

    aget-object v4, v15, v29

    .line 717
    .local v4, "account":Landroid/accounts/Account;
    const-string v43, "com.smlds.accountType"

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1d

    .line 714
    .end local v29    # "i$":I
    :cond_a
    add-int/lit8 v28, v29, 0x1

    .restart local v28    # "i$":I
    move/from16 v29, v28

    .end local v28    # "i$":I
    .restart local v29    # "i$":I
    goto :goto_4

    .line 539
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v12    # "accounts":[Landroid/accounts/Account;
    .end local v29    # "i$":I
    .local v15, "arr$":[Landroid/content/SyncAdapterType;
    .restart local v16    # "auth":Landroid/accounts/AuthenticatorDescription;
    .restart local v17    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .restart local v28    # "i$":I
    .restart local v38    # "sync":Landroid/content/SyncAdapterType;
    .restart local v40    # "syncs":[Landroid/content/SyncAdapterType;
    .restart local v42    # "type":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    .line 541
    .local v5, "accountType":Lcom/android/contacts/model/AccountType;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_e

    .line 542
    const-string v43, "com.google"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_c

    .line 543
    new-instance v5, Lcom/android/contacts/model/GoogleAccountType;

    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/model/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 576
    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    :goto_5
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->isInitialized()Z

    move-result v43

    if-nez v43, :cond_16

    .line 577
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->isEmbedded()Z

    move-result v43

    if-eqz v43, :cond_1

    .line 578
    new-instance v43, Ljava/lang/IllegalStateException;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Problem initializing embedded type "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 544
    :cond_c
    const-string v43, "com.android.exchange"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_d

    .line 545
    new-instance v5, Lcom/android/contacts/model/ExchangeAccountType;

    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/model/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    goto :goto_5

    .line 546
    :cond_d
    const-string v43, "sec_container_1.com.seven.Z7.work"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1

    .line 547
    new-instance v5, Lcom/sec/android/app/contacts/model/SevenExchangeAccountType;

    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/sec/android/app/contacts/model/SevenExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    goto :goto_5

    .line 552
    :cond_e
    const-string v43, "com.google"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_f

    .line 553
    new-instance v5, Lcom/android/contacts/model/GoogleAccountType;

    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/model/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    goto/16 :goto_5

    .line 554
    :cond_f
    const-string v43, "com.android.exchange"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_10

    .line 555
    new-instance v5, Lcom/android/contacts/model/ExchangeAccountType;

    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/model/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    goto/16 :goto_5

    .line 556
    :cond_10
    const-string v43, "com.android.sharepoint"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_11

    .line 557
    new-instance v5, Lcom/sec/android/app/contacts/model/SharePointAccountType;

    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/sec/android/app/contacts/model/SharePointAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    goto/16 :goto_5

    .line 558
    :cond_11
    const-string v43, "vnd.tmobileus.contact.phone"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_12

    .line 559
    new-instance v5, Lcom/sec/android/app/contacts/model/TMOAccountType;

    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/sec/android/app/contacts/model/TMOAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    goto/16 :goto_5

    .line 560
    :cond_12
    const-string v43, "com.osp.app.signin"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/contacts/ContactsUtils;->isSamsungCloudDataSync(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_13

    .line 562
    new-instance v5, Lcom/sec/android/app/contacts/model/SamsungAccountType;

    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/sec/android/app/contacts/model/SamsungAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    goto/16 :goto_5

    .line 563
    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v43

    const-string v44, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual/range {v43 .. v44}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_14

    const-string v43, "com.android.nttdocomo"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_14

    .line 565
    new-instance v5, Lcom/android/contacts/model/DocomoAccountType;

    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/model/DocomoAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    goto/16 :goto_5

    .line 566
    :cond_14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v43

    const-string v44, "CscFeature_Contact_EnableUIM"

    invoke-virtual/range {v43 .. v44}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string v44, "KDDI"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_15

    const-string v43, "com.kddi.ast.auoneid"

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_15

    .line 568
    new-instance v5, Lcom/android/contacts/model/AUIDAccountType;

    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/model/AUIDAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    goto/16 :goto_5

    .line 571
    :cond_15
    const-string v43, "AccountTypeManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Registering external account type="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", packageName="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v5, Lcom/android/contacts/model/ExternalAccountType;

    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/model/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    goto/16 :goto_5

    .line 586
    :cond_16
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v5, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 587
    move-object/from16 v0, v16

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    move/from16 v43, v0

    move/from16 v0, v43

    iput v0, v5, Lcom/android/contacts/model/AccountType;->titleRes:I

    .line 588
    move-object/from16 v0, v16

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v43, v0

    move/from16 v0, v43

    iput v0, v5, Lcom/android/contacts/model/AccountType;->iconRes:I

    .line 589
    move-object/from16 v0, v16

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->smallIconId:I

    move/from16 v43, v0

    move/from16 v0, v43

    iput v0, v5, Lcom/android/contacts/model/AccountType;->smallIconRes:I

    .line 591
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v7}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 595
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->getExtensionPackageNames()Ljava/util/List;

    move-result-object v43

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 599
    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v16    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v38    # "sync":Landroid/content/SyncAdapterType;
    .end local v42    # "type":Ljava/lang/String;
    :cond_17
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->isEmpty()Z

    move-result v43

    if-nez v43, :cond_3

    .line 600
    const-string v43, "AccountTypeManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Registering "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->size()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " extension packages"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_3

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 602
    .local v25, "extensionPackage":Ljava/lang/String;
    new-instance v5, Lcom/android/contacts/model/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    move/from16 v2, v44

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/model/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 604
    .local v5, "accountType":Lcom/android/contacts/model/ExternalAccountType;
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->isInitialized()Z

    move-result v43

    if-eqz v43, :cond_18

    .line 608
    invoke-virtual {v5}, Lcom/android/contacts/model/ExternalAccountType;->hasContactsMetadata()Z

    move-result v43

    if-nez v43, :cond_19

    .line 609
    const-string v43, "AccountTypeManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Skipping extension package "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " because"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " it doesn\'t have the CONTACTS_STRUCTURE metadata"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 613
    :cond_19
    iget-object v0, v5, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-eqz v43, :cond_1a

    .line 614
    const-string v43, "AccountTypeManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Skipping extension package "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " because"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " the CONTACTS_STRUCTURE metadata doesn\'t have the accountType"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " attribute"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 619
    :cond_1a
    const-string v43, "AccountTypeManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Registering extension package account type="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v5, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", dataSet="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v5, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", packageName="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v7}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 640
    .end local v5    # "accountType":Lcom/android/contacts/model/ExternalAccountType;
    .end local v15    # "arr$":[Landroid/content/SyncAdapterType;
    .end local v17    # "auths":[Landroid/accounts/AuthenticatorDescription;
    .end local v25    # "extensionPackage":Ljava/lang/String;
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v32    # "len$":I
    .end local v40    # "syncs":[Landroid/content/SyncAdapterType;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnoxAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v8, v7}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnox2AccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v8, v7}, Lcom/android/contacts/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/model/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 677
    .restart local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1c
    new-instance v31, Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnoxAccount:Landroid/accounts/Account;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnoxAccount:Landroid/accounts/Account;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnoxAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .local v31, "knoxAccountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    move-object/from16 v0, v31

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    new-instance v30, Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnox2Account:Landroid/accounts/Account;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnox2Account:Landroid/accounts/Account;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhoneKnox2AccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .local v30, "knox2AccountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    move-object/from16 v0, v30

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 722
    .end local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v30    # "knox2AccountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v31    # "knoxAccountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    .restart local v4    # "account":Landroid/accounts/Account;
    .restart local v12    # "accounts":[Landroid/accounts/Account;
    .local v15, "arr$":[Landroid/accounts/Account;
    .restart local v29    # "i$":I
    .restart local v32    # "len$":I
    :cond_1d
    const/16 v39, 0x0

    .line 724
    .local v39, "syncable":Z
    :try_start_2
    const-string v43, "com.android.contacts"

    move-object/from16 v0, v19

    move-object/from16 v1, v43

    invoke-interface {v0, v4, v1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v43

    if-lez v43, :cond_20

    const/16 v39, 0x1

    .line 729
    :goto_7
    if-eqz v39, :cond_21

    .line 730
    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 731
    .local v6, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountType;>;"
    if-eqz v6, :cond_a

    .line 734
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .end local v29    # "i$":I
    .restart local v28    # "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_8
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountType;

    .line 735
    .local v5, "accountType":Lcom/android/contacts/model/AccountType;
    new-instance v9, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v9, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .restart local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v43

    if-eqz v43, :cond_1f

    .line 739
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_1f
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->isGroupMembershipEditable()Z

    move-result v43

    if-eqz v43, :cond_1e

    .line 742
    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 724
    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v6    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountType;>;"
    .end local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v28    # "i$":Ljava/util/Iterator;
    .restart local v29    # "i$":I
    :cond_20
    const/16 v39, 0x0

    goto :goto_7

    .line 725
    :catch_1
    move-exception v20

    .line 726
    .restart local v20    # "e":Landroid/os/RemoteException;
    const-string v43, "AccountTypeManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Cannot obtain sync flag for account: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 748
    .end local v20    # "e":Landroid/os/RemoteException;
    :cond_21
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v43

    const-string v44, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual/range {v43 .. v44}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_24

    const-string v43, "com.android.nttdocomo"

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_24

    if-nez v39, :cond_24

    .line 751
    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 752
    .restart local v6    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountType;>;"
    if-eqz v6, :cond_a

    .line 753
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .end local v29    # "i$":I
    .restart local v28    # "i$":Ljava/util/Iterator;
    :cond_22
    :goto_9
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountType;

    .line 754
    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    new-instance v9, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v9, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .restart local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v43

    if-eqz v43, :cond_23

    .line 758
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_23
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->isGroupMembershipEditable()Z

    move-result v43

    if-eqz v43, :cond_22

    .line 761
    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 767
    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v6    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountType;>;"
    .end local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v28    # "i$":Ljava/util/Iterator;
    .restart local v29    # "i$":I
    :cond_24
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v43

    const-string v44, "CscFeature_Contact_EnableUIM"

    invoke-virtual/range {v43 .. v44}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string v44, "KDDI"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_a

    const-string v43, "com.kddi.ast.auoneid"

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_a

    if-nez v39, :cond_a

    .line 770
    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 771
    .restart local v6    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountType;>;"
    if-eqz v6, :cond_a

    .line 772
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .end local v29    # "i$":I
    .restart local v28    # "i$":Ljava/util/Iterator;
    :cond_25
    :goto_a
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountType;

    .line 773
    .restart local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    new-instance v9, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v9, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .restart local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v43

    if-eqz v43, :cond_26

    .line 777
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_26
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->isGroupMembershipEditable()Z

    move-result v43

    if-eqz v43, :cond_25

    .line 780
    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 787
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v6    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountType;>;"
    .end local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v39    # "syncable":Z
    .restart local v29    # "i$":I
    :cond_27
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v43

    const-string v44, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual/range {v43 .. v44}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_29

    .line 788
    new-instance v9, Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccount:Landroid/accounts/Account;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccount:Landroid/accounts/Account;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v9, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .restart local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_28

    .line 795
    new-instance v9, Lcom/android/contacts/model/AccountWithDataSet;

    .end local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhonePersonalAccount:Landroid/accounts/Account;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhonePersonalAccount:Landroid/accounts/Account;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mPhonePersonalAccountType:Lcom/android/contacts/model/AccountType;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v9, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .restart local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_28
    sget-object v43, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v43

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 803
    sget-object v43, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 804
    sget-object v43, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 807
    .end local v9    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_29
    const-string v43, "Loaded accounts"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 809
    monitor-enter p0

    .line 810
    :try_start_3
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 811
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 812
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 813
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-static {v0, v13, v8}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 816
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 818
    invoke-virtual/range {v41 .. v41}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 819
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 820
    .local v23, "endTimeWall":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v21

    .line 822
    .local v21, "endTime":J
    const-string v43, "AccountTypeManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Loaded meta-data for "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Ljava/util/Map;->size()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " account types, "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " accounts in "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    sub-long v45, v23, v36

    invoke-virtual/range {v44 .. v46}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "ms(wall) "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    sub-long v45, v21, v34

    invoke-virtual/range {v44 .. v46}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "ms(cpu)"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v43, v0

    if-eqz v43, :cond_2a

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 828
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 830
    :cond_2a
    const-string v43, "ContactsPerf"

    const/16 v44, 0x3

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v43

    if-eqz v43, :cond_2b

    .line 831
    const-string v43, "ContactsPerf"

    const-string v44, "AccountTypeManager.loadAccountsInBackground finish"

    invoke-static/range {v43 .. v44}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 836
    return-void

    .line 816
    .end local v21    # "endTime":J
    .end local v23    # "endTimeWall":J
    :catchall_0
    move-exception v43

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v43
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    .line 453
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    return-void
.end method

.method public processBroadcastIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 447
    return-void
.end method
