.class public Lcom/nuance/connect/internal/PropertyStore;
.super Ljava/lang/Object;
.source "PropertyStore.java"


# instance fields
.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    .line 14
    return-void
.end method

.method private static _add(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nuance/connect/internal/Property",
            "<TT;>;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<TT;>;"
    .local p1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<TT;>;"
    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property$ValueListener;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/nuance/connect/internal/Property;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;Z)V

    .line 117
    :cond_0
    return-void
.end method

.method private static _addHelper(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<*>;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    .local p1, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-class v0, Ljava/lang/Boolean;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property$ValueListener;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-static {p0, p1}, Lcom/nuance/connect/internal/PropertyStore;->_add(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_0

    .line 104
    :cond_2
    const-class v0, Ljava/lang/Integer;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Ljava/lang/Integer;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property$ValueListener;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    invoke-static {p0, p1}, Lcom/nuance/connect/internal/PropertyStore;->_add(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_0

    .line 107
    :cond_3
    const-class v0, Ljava/lang/String;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property$ValueListener;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0, p1}, Lcom/nuance/connect/internal/PropertyStore;->_add(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_0
.end method

.method private static _getBoolean(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<*>;)",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    if-eqz p0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static _getInteger(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<*>;)",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    if-eqz p0, :cond_0

    const-class v0, Ljava/lang/Integer;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static _getString(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<*>;)",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    if-eqz p0, :cond_0

    const-class v0, Ljava/lang/String;

    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "listener":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    iget-object v2, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/Property;

    .line 78
    .local v1, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    if-nez v1, :cond_1

    .line 81
    iget-object v2, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<*>;>;>;"
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<*>;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .restart local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<*>;>;>;"
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v2, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<*>;>;>;"
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {v1, p2}, Lcom/nuance/connect/internal/PropertyStore;->_addHelper(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/Property;

    invoke-static {v1}, Lcom/nuance/connect/internal/PropertyStore;->_getBoolean(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    .line 39
    .local v0, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/Property;

    invoke-static {v1}, Lcom/nuance/connect/internal/PropertyStore;->_getInteger(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    .line 44
    .local v0, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Lcom/nuance/connect/internal/Property;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nuance/connect/internal/Property",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/Property;

    invoke-static {v1}, Lcom/nuance/connect/internal/PropertyStore;->_getString(Lcom/nuance/connect/internal/Property;)Lcom/nuance/connect/internal/Property;

    move-result-object v0

    .line 49
    .local v0, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Lcom/nuance/connect/internal/Property;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "property":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    iget-object v4, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/Property;

    .line 18
    .local v2, "prop":Lcom/nuance/connect/internal/Property;, "Lcom/nuance/connect/internal/Property<*>;"
    if-nez v2, :cond_1

    .line 19
    move-object v2, p1

    .line 20
    iget-object v4, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 21
    iget-object v4, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 22
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<*>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/Property$ValueListener;

    .line 23
    .local v1, "l":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    invoke-static {v2, v1}, Lcom/nuance/connect/internal/PropertyStore;->_addHelper(Lcom/nuance/connect/internal/Property;Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_0

    .line 26
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/nuance/connect/internal/Property$ValueListener;, "Lcom/nuance/connect/internal/Property$ValueListener<*>;"
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nuance/connect/internal/Property$ValueListener<*>;>;"
    :cond_0
    iget-object v4, p0, Lcom/nuance/connect/internal/PropertyStore;->listeners:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v4, p0, Lcom/nuance/connect/internal/PropertyStore;->properties:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_1
    return-void

    .line 29
    :cond_1
    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getSource()Lcom/nuance/connect/internal/Property$Source;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/nuance/connect/internal/Property;->set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    goto :goto_1
.end method
