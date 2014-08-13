.class public Lcom/nuance/connect/internal/common/Addon;
.super Ljava/lang/Object;
.source "Addon.java"


# instance fields
.field public description:Ljava/lang/String;

.field public eula:Ljava/lang/String;

.field public eulaTitle:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public namespace:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "STATUS_AVAILABLE"

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Addon;->state:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "PROP_ID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Addon;->id:Ljava/lang/String;

    .line 26
    const-string v0, "PROP_NAME"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Addon;->name:Ljava/lang/String;

    .line 27
    const-string v0, "PROP_DESCRIPTION"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Addon;->description:Ljava/lang/String;

    .line 28
    const-string v0, "PROP_ICON"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Addon;->icon:Ljava/lang/String;

    .line 29
    const-string v0, "PROP_EULAURL"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Addon;->eula:Ljava/lang/String;

    .line 30
    const-string v0, "PROP_EULATITLE"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Addon;->eulaTitle:Ljava/lang/String;

    .line 31
    const-string v0, "PROP_NAMESPACE"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Addon;->namespace:Ljava/lang/String;

    .line 32
    const-string v0, "PROP_LANGUAGE"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Addon;->language:Ljava/lang/String;

    .line 33
    const-string v0, "STATUS_AVAILABLE"

    iput-object v0, p0, Lcom/nuance/connect/internal/common/Addon;->state:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "PROP_ID"

    iget-object v2, p0, Lcom/nuance/connect/internal/common/Addon;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "PROP_NAME"

    iget-object v2, p0, Lcom/nuance/connect/internal/common/Addon;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "PROP_DESCRIPTION"

    iget-object v2, p0, Lcom/nuance/connect/internal/common/Addon;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "PROP_ICON"

    iget-object v2, p0, Lcom/nuance/connect/internal/common/Addon;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "PROP_EULAURL"

    iget-object v2, p0, Lcom/nuance/connect/internal/common/Addon;->eula:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "PROP_EULATITLE"

    iget-object v2, p0, Lcom/nuance/connect/internal/common/Addon;->eulaTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "PROP_NAMESPACE"

    iget-object v2, p0, Lcom/nuance/connect/internal/common/Addon;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "PROP_LANGUAGE"

    iget-object v2, p0, Lcom/nuance/connect/internal/common/Addon;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "state"

    iget-object v2, p0, Lcom/nuance/connect/internal/common/Addon;->state:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0
.end method

.method public isInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/internal/common/Addon;->namespace:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 57
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/nuance/connect/internal/common/Addon;->namespace:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const/4 v1, 0x1

    .line 62
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public run(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/common/Addon;->isInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/common/Addon;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
