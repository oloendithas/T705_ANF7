.class Lcom/nuance/connect/internal/AddonServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;
.source "AddonServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/AddonService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/AddonServiceInternal$2;
    }
.end annotation


# static fields
.field public static final ADDON_LIST:Ljava/lang/String; = "ADDON_LIST"

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;


# instance fields
.field private addonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/internal/common/Addon;",
            ">;"
        }
    .end annotation
.end field

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private currentAddonDownloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_ADDONS_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ADDONS_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/AddonServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 1
    .param p1, "service"    # Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->currentAddonDownloads:Ljava/util/Map;

    .line 107
    new-instance v0, Lcom/nuance/connect/internal/AddonServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/AddonServiceInternal$1;-><init>(Lcom/nuance/connect/internal/AddonServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    .line 37
    iput-object p1, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/AddonServiceInternal;->getAddonList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/AddonServiceInternal;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/AddonServiceInternal;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/AddonServiceInternal;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->currentAddonDownloads:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/AddonServiceInternal;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/connect/internal/AddonServiceInternal;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nuance/connect/internal/AddonServiceInternal;->persistAddonList()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/AddonServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/connect/internal/AddonServiceInternal;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$400()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nuance/connect/internal/AddonServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private getAddonList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/internal/common/Addon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v1, Lcom/nuance/connect/store/SharedPrefStore;

    iget-object v5, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADDON_LIST"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/nuance/connect/store/SharedPrefStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    .local v1, "addonStore":Lcom/nuance/connect/store/PersistentDataStore;
    const/4 v2, 0x0

    .line 235
    .local v2, "itemNumber":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "prefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 239
    const-string v5, ""

    invoke-direct {p0, v5}, Lcom/nuance/connect/internal/AddonServiceInternal;->getAddonList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 259
    :cond_0
    return-object v3

    .line 242
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 243
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/internal/common/Addon;>;"
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    new-instance v0, Lcom/nuance/connect/internal/common/Addon;

    invoke-direct {v0}, Lcom/nuance/connect/internal/common/Addon;-><init>()V

    .line 245
    .local v0, "a":Lcom/nuance/connect/internal/common/Addon;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/nuance/connect/internal/common/Addon;->id:Ljava/lang/String;

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_NAME"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/nuance/connect/internal/common/Addon;->name:Ljava/lang/String;

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_DESCRIPTION"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/nuance/connect/internal/common/Addon;->description:Ljava/lang/String;

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_ICON"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/nuance/connect/internal/common/Addon;->icon:Ljava/lang/String;

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_EULAURL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/nuance/connect/internal/common/Addon;->eula:Ljava/lang/String;

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_EULATITLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/nuance/connect/internal/common/Addon;->eulaTitle:Ljava/lang/String;

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_NAMESPACE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/nuance/connect/internal/common/Addon;->namespace:Ljava/lang/String;

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_LANGUAGE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/nuance/connect/internal/common/Addon;->language:Ljava/lang/String;

    .line 253
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v2, v2, 0x1

    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    goto/16 :goto_0
.end method

.method private persistAddonList()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/AddonServiceInternal;->setAddonList(Ljava/util/List;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private setAddonList(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p2, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/internal/common/Addon;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "addonList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/connect/internal/common/Addon;>;"
    new-instance v0, Lcom/nuance/connect/store/SharedPrefStore;

    iget-object v5, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v5}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADDON_LIST"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/nuance/connect/store/SharedPrefStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    .local v0, "addonStore":Lcom/nuance/connect/store/PersistentDataStore;
    const/4 v3, 0x0

    .line 211
    .local v3, "itemNumber":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/common/Addon;

    .line 212
    .local v2, "item":Lcom/nuance/connect/internal/common/Addon;
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "prefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/nuance/connect/internal/common/Addon;->id:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_NAME"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/nuance/connect/internal/common/Addon;->name:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_DESCRIPTION"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/nuance/connect/internal/common/Addon;->description:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_ICON"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/nuance/connect/internal/common/Addon;->icon:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_EULAURL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/nuance/connect/internal/common/Addon;->eula:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_EULATITLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/nuance/connect/internal/common/Addon;->eulaTitle:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_NAMESPACE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/nuance/connect/internal/common/Addon;->namespace:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PROP_LANGUAGE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/nuance/connect/internal/common/Addon;->language:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    add-int/lit8 v3, v3, 0x1

    .line 222
    goto/16 :goto_0

    .line 225
    .end local v2    # "item":Lcom/nuance/connect/internal/common/Addon;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 226
    const-string v5, ""

    invoke-direct {p0, p1, v5}, Lcom/nuance/connect/internal/AddonServiceInternal;->setAddonList(Ljava/util/List;Ljava/lang/String;)V

    .line 228
    :cond_1
    return-void
.end method


# virtual methods
.method public getAddonList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/internal/common/Addon;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "locale":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/common/Addon;

    iget-object v2, v2, Lcom/nuance/connect/internal/common/Addon;->language:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/AddonServiceInternal;->getAddonList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    .line 92
    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/common/Addon;

    iget-object v2, v2, Lcom/nuance/connect/internal/common/Addon;->language:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ADDONS_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    .line 100
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    return-object v2
.end method

.method public getCurrentDownloadingAddons()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->currentAddonDownloads:Ljava/util/Map;

    return-object v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->ADDON:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->ADDON:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installAddon(Ljava/lang/String;)V
    .locals 5
    .param p1, "addonId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->addonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/Addon;

    .line 69
    .local v1, "item":Lcom/nuance/connect/internal/common/Addon;
    iget-object v2, v1, Lcom/nuance/connect/internal/common/Addon;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->currentAddonDownloads:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v2, "STATUS_DOWNLOADING"

    iput-object v2, v1, Lcom/nuance/connect/internal/common/Addon;->state:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/nuance/connect/internal/AddonServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_ADDON_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v2, v3, p1, v4, v4}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    .line 77
    .end local v1    # "item":Lcom/nuance/connect/internal/common/Addon;
    :cond_1
    return-void
.end method
