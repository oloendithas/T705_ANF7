.class Lcom/nuance/connect/internal/AccountServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;
.source "AccountServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/AccountService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/AccountServiceInternal$2;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private final accounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/common/ConnectAccount;",
            ">;"
        }
    .end annotation
.end field

.field private activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private hasKnownAccounts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_ANDROID_ACCOUNTS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_LIST_AVAILABLE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_DEVICE_NAME:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/AccountServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 1
    .param p1, "service"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    .line 87
    new-instance v0, Lcom/nuance/connect/internal/AccountServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/AccountServiceInternal$1;-><init>(Lcom/nuance/connect/internal/AccountServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    .line 59
    iput-object p1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/AccountServiceInternal;Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/AccountServiceInternal;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/AccountServiceInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nuance/connect/internal/AccountServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private checkForKnownAccounts(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 371
    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 372
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 373
    .local v0, "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getExistsOnServer()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 374
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->hasKnownAccounts:Z

    .line 379
    .end local v0    # "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    :goto_0
    return-void

    .line 378
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->hasKnownAccounts:Z

    goto :goto_0
.end method

.method private findActiveAccount()Lcom/nuance/connect/internal/common/ConnectAccount;
    .locals 5

    .prologue
    .line 330
    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 331
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 332
    .local v0, "acct":Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v3

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    .end local v0    # "acct":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 13
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 383
    sget-object v10, Lcom/nuance/connect/internal/AccountServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v11, p2, Landroid/os/Message;->what:I

    invoke-static {v11}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 446
    :goto_0
    return-void

    .line 385
    :pswitch_0
    const/4 v9, 0x1

    .line 386
    .local v9, "type":I
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 387
    .local v4, "b":Landroid/os/Bundle;
    const-string v10, "DEFAULT_KEY"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 388
    const-string v10, "DEFAULT_KEY"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 390
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v1, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v11, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SYSTEM_DATA:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v10, v11}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/connect/host/service/HostSystemData;

    invoke-interface {v10}, Lcom/nuance/connect/host/service/HostSystemData;->getAccountsForBackupSync()[Landroid/accounts/Account;

    move-result-object v3

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v0, v3, v5

    .line 392
    .local v0, "account":Landroid/accounts/Account;
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 395
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    .line 396
    const-string v10, "DEFAULT_KEY"

    invoke-virtual {v4, v10, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 398
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v10

    sget-object v11, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_ANDROID_ACCOUNTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v10, v11, v4}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    .end local v1    # "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "type":I
    :pswitch_1
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 405
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "DEFAULT_KEY"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 407
    .local v2, "accountList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    if-eqz v2, :cond_4

    .line 408
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 409
    invoke-direct {p0}, Lcom/nuance/connect/internal/AccountServiceInternal;->findActiveAccount()Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v10

    iput-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 410
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/nuance/connect/internal/AccountServiceInternal;->checkForKnownAccounts(I)V

    .line 415
    :goto_2
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 416
    :cond_2
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v11, "com.nuance.connect.ACCOUNT_STATUS_CHANGE"

    const-string v12, "com.nuance.connect.TYPE_ACCOUNT_DELETED"

    invoke-virtual {v10, v11, v12}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 419
    :cond_3
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v11, "com.nuance.connect.DATA_AVAILABLE"

    const-string v12, "com.nuance.connect.TYPE_ACCOUNT_DATA"

    invoke-virtual {v10, v11, v12}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    .line 412
    :cond_4
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 413
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->hasKnownAccounts:Z

    goto :goto_2

    .line 424
    .end local v2    # "accountList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    :pswitch_2
    const-string v10, "SUCCESS"

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "DEFAULT_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 425
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v11, "com.nuance.connect.ACCOUNT_STATUS_CHANGE"

    const-string v12, "com.nuance.connect.TYPE_ACCOUNT_VERIFIED"

    invoke-virtual {v10, v11, v12}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    .line 428
    :cond_5
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v11, "com.nuance.connect.ACCOUNT_STATUS_CHANGE"

    const-string v12, "com.nuance.connect.TYPE_ACCOUNT_INVALID_CODE"

    invoke-virtual {v10, v11, v12}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    .line 434
    :pswitch_3
    const-string v7, "unknown device"

    .line 435
    .local v7, "lookedUpString":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "DEFAULT_KEY"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 436
    new-instance v8, Lcom/nuance/connect/util/StringLookupDecorator;

    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "DEFAULT_KEY"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Lcom/nuance/connect/util/StringLookupDecorator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 439
    .local v8, "sl":Lcom/nuance/connect/util/StringLookupDecorator;
    invoke-virtual {v8}, Lcom/nuance/connect/util/StringLookupDecorator;->toString()Ljava/lang/String;

    move-result-object v7

    .line 441
    .end local v8    # "sl":Lcom/nuance/connect/util/StringLookupDecorator;
    :cond_6
    iget-object v10, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v10}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v10

    sget-object v11, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_DEVICE_NAME:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v10, v11, v7}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setActiveAccount(ILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 348
    iput-object v5, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 349
    invoke-static {p2}, Lcom/nuance/connect/util/StringUtils;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "normalizedId":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 351
    .local v0, "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    iput-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 353
    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V

    .line 357
    .end local v0    # "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    :cond_1
    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-nez v3, :cond_2

    .line 358
    new-instance v3, Lcom/nuance/connect/internal/common/ConnectAccount;

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;->USER_CREATED:Lcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;

    invoke-direct {v3, v5, p2, p1, v4}, Lcom/nuance/connect/internal/common/ConnectAccount;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/connect/internal/common/ConnectAccount$CreationMethod;)V

    iput-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 359
    iget-object v3, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    sget-object v4, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->setAccountState(Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;)V

    .line 361
    :cond_2
    return-void
.end method


# virtual methods
.method public deleteAccount(Z)V
    .locals 3
    .param p1, "deleteServerData"    # Z

    .prologue
    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_DELETE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public getActiveAccount()Lcom/nuance/connect/internal/common/ConnectAccount;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceNameFromId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string v1, ""

    .line 277
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    .line 279
    .local v0, "device":Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 283
    .end local v0    # "device":Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;
    :cond_0
    return-object v1
.end method

.method public final getEmailAccounts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v4}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 134
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 135
    .local v0, "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    .end local v0    # "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 124
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 125
    .restart local v0    # "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getExistsOnServer()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 127
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iput-boolean v5, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->hasKnownAccounts:Z

    goto :goto_0

    .line 140
    .end local v0    # "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    :cond_4
    return-object v1
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getHasKnownAccounts()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->hasKnownAccounts:Z

    return v0
.end method

.method public getRegisteredAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getIdentifierForDisplay()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->ACCOUNT:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemEmailAccounts()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v4, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    sget-object v8, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_SYSTEM_DATA:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v7, v8}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/connect/host/service/HostSystemData;

    invoke-interface {v7}, Lcom/nuance/connect/host/service/HostSystemData;->getAccountsForBackupSync()[Landroid/accounts/Account;

    move-result-object v1

    .line 147
    .local v1, "accounts":[Landroid/accounts/Account;
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 148
    .local v3, "emailPattern":Ljava/util/regex/Pattern;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 149
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    return-object v4
.end method

.method public isAccountKnownAccount(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "isKnown":Z
    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->accounts:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/nuance/connect/util/StringUtils;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 301
    .local v0, "account":Lcom/nuance/connect/internal/common/ConnectAccount;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getExistsOnServer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    const/4 v1, 0x1

    .line 305
    :cond_0
    return v1
.end method

.method public isAccountRegistered()Z
    .locals 9

    .prologue
    .line 210
    const/4 v4, 0x0

    .line 211
    .local v4, "isRegistered":Z
    iget-object v7, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v7

    sget-object v8, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 213
    const/4 v4, 0x1

    :cond_0
    move v7, v4

    .line 232
    :goto_0
    return v7

    .line 214
    :cond_1
    iget-object v7, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-nez v7, :cond_0

    .line 216
    new-instance v6, Lcom/nuance/connect/store/FileStore;

    iget-object v7, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v7}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppFilesFolder()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/nuance/connect/store/FileStore;-><init>(Ljava/lang/String;)V

    .line 217
    .local v6, "store":Lcom/nuance/connect/store/FileStore;
    const/4 v5, 0x0

    .line 219
    .local v5, "savedAccounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    :try_start_0
    const-string v7, "account_ACCOUNT"

    invoke-virtual {v6, v7}, Lcom/nuance/connect/store/FileStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_1
    if-eqz v5, :cond_0

    .line 223
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 224
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 225
    .local v1, "acct":Lcom/nuance/connect/internal/common/ConnectAccount;
    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v7

    sget-object v8, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v7

    sget-object v8, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "acct":Lcom/nuance/connect/internal/common/ConnectAccount;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public isAccountRegisteredAndVerified()Z
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "isVerified":Z
    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :cond_0
    return v0
.end method

.method public isValidEmail(Ljava/lang/String;)Z
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 184
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 185
    .local v0, "emailPattern":Ljava/util/regex/Pattern;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v1, 0x1

    .line 188
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refreshDevices()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REFRESH_DEVICES:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    .line 312
    return-void
.end method

.method public registerAccount(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    iget-object v1, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REGISTER:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/AccountServiceInternal;->setActiveAccount(ILjava/lang/String;)V

    .line 165
    return-void
.end method

.method public registerEmailAccount(Ljava/lang/String;)Z
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/AccountServiceInternal;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0, v0, p1}, Lcom/nuance/connect/internal/AccountServiceInternal;->registerAccount(ILjava/lang/String;)V

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendReverify()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_REVERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    .line 248
    return-void
.end method

.method public setDelayedRegistrationAlert()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_SET_DELAYED_REGISTRATION_ALERT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    .line 295
    return-void
.end method

.method public unlinkDevice(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_UNLINK_DEVICE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 264
    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;

    .line 266
    .local v1, "device":Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getIsThisDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->activeAccount:Lcom/nuance/connect/internal/common/ConnectAccount;

    .line 268
    iget-object v2, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v3, "com.nuance.connect.ACCOUNT_STATUS_CHANGE"

    const-string v4, "com.nuance.connect.TYPE_ACCOUNT_DELETED"

    invoke-virtual {v2, v3, v4}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 272
    .end local v1    # "device":Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;
    :cond_0
    return-void
.end method

.method public validateAccount(Ljava/lang/String;)V
    .locals 2
    .param p1, "validationCode"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/connect/internal/AccountServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ACCOUNT_VERIFY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 171
    return-void
.end method
