.class public abstract Ljava/security/Provider;
.super Ljava/util/Properties;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Provider$Service;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3ba590b26fa1505bL


# instance fields
.field private transient aliasTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient changedProperties:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private info:Ljava/lang/String;

.field private transient lastAlgorithm:Ljava/lang/String;

.field private transient lastServiceName:Ljava/lang/String;

.field private transient lastServicesByType:Ljava/security/Provider$Service;

.field private transient lastServicesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient lastType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transient propertyAliasTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient propertyServiceTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient providerNumber:I

.field private transient returnedService:Ljava/security/Provider$Service;

.field private transient serviceTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private version:D

.field private transient versionString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # D
    .param p4, "info"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/Provider;->providerNumber:I

    .line 104
    iput-object p1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    .line 105
    iput-wide p2, p0, Ljava/security/Provider;->version:D

    .line 106
    iput-object p4, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    .line 107
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->versionString:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljava/security/Provider;->putProviderInfo()V

    .line 109
    return-void
.end method

.method private checkAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "servAlg"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "attributeValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 340
    const-string v2, "KeySize"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 350
    :cond_0
    :goto_0
    return v1

    .line 345
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 787
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, "res":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 797
    .end local v2    # "res":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 791
    .restart local v2    # "res":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 792
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 793
    .local v1, "propertyName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 794
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 797
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private myPutAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_0

    .line 196
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    .line 198
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 201
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 204
    .local v2, "key":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v5, "Provider."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 209
    .local v3, "value":Ljava/lang/Object;
    invoke-super {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 211
    invoke-direct {p0, v2}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    .line 213
    :cond_3
    iget-object v4, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    iget v4, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 217
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 219
    :cond_5
    return-void
.end method

.method private putProviderInfo()V
    .locals 2

    .prologue
    .line 776
    const-string v1, "Provider.id name"

    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    :goto_0
    invoke-super {p0, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v0, "Provider.id version"

    iget-object v1, p0, Ljava/security/Provider;->versionString:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v1, "Provider.id info"

    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    :goto_1
    invoke-super {p0, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v0, "Provider.id className"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    return-void

    .line 776
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 778
    :cond_1
    const-string v0, "null"

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1062
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1063
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->versionString:Ljava/lang/String;

    .line 1064
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/Provider;->providerNumber:I

    .line 1065
    return-void
.end method

.method private removeFromPropertyServiceTable(Ljava/lang/Object;)V
    .locals 17
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 573
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/lang/String;

    if-nez v15, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v9, p1

    .line 576
    check-cast v9, Ljava/lang/String;

    .line 577
    .local v9, "k":Ljava/lang/String;
    const-string v15, "Provider."

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 582
    const/4 v1, 0x0

    .line 583
    .local v1, "algorithm":Ljava/lang/String;
    const/4 v4, 0x0

    .line 585
    .local v4, "attribute":Ljava/lang/String;
    const-string v15, "Alg.Alias."

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 587
    const/16 v15, 0xa

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 588
    .local v14, "service_alias":Ljava/lang/String;
    const/16 v15, 0x2e

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 589
    .local v5, "i":I
    const/4 v15, 0x0

    invoke-virtual {v14, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 590
    .local v13, "serviceName":Ljava/lang/String;
    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "aliasName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    if-eqz v15, :cond_2

    .line 592
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    invoke-static {v13, v3}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    if-eqz v15, :cond_0

    .line 595
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 596
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 597
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/Provider$Service;

    .line 598
    .local v11, "s":Ljava/security/Provider$Service;
    # getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {v11}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 599
    # getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {v11}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 606
    .end local v3    # "aliasName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    .end local v11    # "s":Ljava/security/Provider$Service;
    .end local v13    # "serviceName":Ljava/lang/String;
    .end local v14    # "service_alias":Ljava/lang/String;
    :cond_4
    const/16 v15, 0x2e

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 607
    .local v8, "j":I
    const/4 v15, -0x1

    if-eq v8, v15, :cond_0

    .line 611
    const/16 v15, 0x20

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 612
    .restart local v5    # "i":I
    const/4 v15, -0x1

    if-ne v5, v15, :cond_5

    .line 613
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 614
    .restart local v13    # "serviceName":Ljava/lang/String;
    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 615
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    if-eqz v15, :cond_0

    .line 616
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    invoke-static {v13, v1}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/Provider$Service;

    .line 617
    .local v12, "ser":Ljava/security/Provider$Service;
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    if-eqz v15, :cond_0

    # getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {v12}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 619
    # getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {v12}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 620
    .local v2, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    invoke-static {v13, v2}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 627
    .end local v2    # "alias":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "ser":Ljava/security/Provider$Service;
    .end local v13    # "serviceName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 628
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 629
    .restart local v13    # "serviceName":Ljava/lang/String;
    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v9, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 630
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    if-eqz v15, :cond_0

    .line 631
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    invoke-static {v13, v1}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 632
    .local v10, "o":Ljava/lang/Object;
    if-eqz v10, :cond_0

    move-object v11, v10

    .line 633
    check-cast v11, Ljava/security/Provider$Service;

    .line 634
    .restart local v11    # "s":Ljava/security/Provider$Service;
    # getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {v11}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private serviceInfoFromProperties(Ljava/security/Provider$Service;)V
    .locals 5
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    # getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 556
    # getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alg.Alias."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 560
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    # getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 561
    # getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 562
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 565
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget v3, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 567
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 569
    :cond_2
    return-void
.end method

.method private serviceInfoToProperties(Ljava/security/Provider$Service;)V
    .locals 5
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Ljava/security/Provider$Service;->className:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$300(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    # getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 534
    # getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alg.Alias."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 538
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    # getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 539
    # getter for: Ljava/security/Provider$Service;->attributes:Ljava/util/Map;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$400(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 540
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-super {p0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 544
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget v3, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 546
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 548
    :cond_2
    return-void
.end method

.method private servicesChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 765
    iput-object v0, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;

    .line 766
    iput-object v0, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    .line 767
    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    .line 768
    return-void
.end method

.method private updatePropertyServiceTable()V
    .locals 32

    .prologue
    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .line 651
    .local v26, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 652
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 653
    .local v24, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    .line 654
    .local v20, "_key":Ljava/lang/Object;
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    .line 655
    .local v21, "_value":Ljava/lang/Object;
    if-eqz v20, :cond_2

    if-eqz v21, :cond_2

    move-object/from16 v0, v20

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, v21

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v28, v20

    .line 659
    check-cast v28, Ljava/lang/String;

    .local v28, "key":Ljava/lang/String;
    move-object/from16 v12, v21

    .line 660
    check-cast v12, Ljava/lang/String;

    .line 661
    .local v12, "value":Ljava/lang/String;
    const-string v3, "Provider"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 666
    const-string v3, "Alg.Alias."

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 669
    const/16 v3, 0xa

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    .line 670
    .local v31, "service_alias":Ljava/lang/String;
    const/16 v3, 0x2e

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    .line 671
    .local v25, "i":I
    const/4 v3, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, "serviceName":Ljava/lang/String;
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 673
    .local v22, "aliasName":Ljava/lang/String;
    move-object v5, v12

    .line 674
    .local v5, "algorithm":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 675
    .local v30, "propertyServiceTableKey":Ljava/lang/String;
    const/16 v29, 0x0

    .line 676
    .local v29, "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_4

    .line 677
    new-instance v3, Ljava/util/LinkedHashMap;

    const/16 v8, 0x80

    invoke-direct {v3, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    .line 681
    .end local v29    # "o":Ljava/lang/Object;
    :goto_2
    if-eqz v29, :cond_5

    move-object/from16 v2, v29

    .line 682
    check-cast v2, Ljava/security/Provider$Service;

    .line 683
    .local v2, "s":Ljava/security/Provider$Service;
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/security/Provider$Service;->addAlias(Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_3

    .line 685
    new-instance v3, Ljava/util/LinkedHashMap;

    const/16 v8, 0x100

    invoke-direct {v3, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    .line 687
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 679
    .end local v2    # "s":Ljava/security/Provider$Service;
    .restart local v29    # "o":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    goto :goto_2

    .line 689
    .end local v29    # "o":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 691
    .local v6, "className":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 692
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v7, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance v2, Ljava/security/Provider$Service;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 696
    .restart local v2    # "s":Ljava/security/Provider$Service;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_6

    .line 698
    new-instance v3, Ljava/util/LinkedHashMap;

    const/16 v8, 0x100

    invoke-direct {v3, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    .line 700
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 705
    .end local v2    # "s":Ljava/security/Provider$Service;
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "aliasName":Ljava/lang/String;
    .end local v25    # "i":I
    .end local v30    # "propertyServiceTableKey":Ljava/lang/String;
    .end local v31    # "service_alias":Ljava/lang/String;
    :cond_7
    const/16 v3, 0x2e

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    .line 706
    .local v27, "j":I
    const/4 v3, -0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_2

    .line 709
    const/16 v3, 0x20

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    .line 710
    .restart local v25    # "i":I
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_b

    .line 711
    const/4 v3, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 712
    .restart local v4    # "serviceName":Ljava/lang/String;
    add-int/lit8 v3, v27, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 713
    .restart local v5    # "algorithm":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 714
    .restart local v30    # "propertyServiceTableKey":Ljava/lang/String;
    const/16 v29, 0x0

    .line 715
    .restart local v29    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_8

    .line 716
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 718
    .end local v29    # "o":Ljava/lang/Object;
    :cond_8
    if-eqz v29, :cond_9

    move-object/from16 v2, v29

    .line 719
    check-cast v2, Ljava/security/Provider$Service;

    .line 720
    .restart local v2    # "s":Ljava/security/Provider$Service;
    # setter for: Ljava/security/Provider$Service;->className:Ljava/lang/String;
    invoke-static {v2, v12}, Ljava/security/Provider$Service;->access$302(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 722
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_9
    new-instance v2, Ljava/security/Provider$Service;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v8 .. v14}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 725
    .restart local v2    # "s":Ljava/security/Provider$Service;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_a

    .line 726
    new-instance v3, Ljava/util/LinkedHashMap;

    const/16 v8, 0x80

    invoke-direct {v3, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    .line 728
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 733
    .end local v2    # "s":Ljava/security/Provider$Service;
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v30    # "propertyServiceTableKey":Ljava/lang/String;
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 734
    .restart local v4    # "serviceName":Ljava/lang/String;
    add-int/lit8 v3, v27, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 735
    .restart local v5    # "algorithm":Ljava/lang/String;
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 736
    .local v23, "attribute":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 737
    .restart local v30    # "propertyServiceTableKey":Ljava/lang/String;
    const/16 v29, 0x0

    .line 738
    .restart local v29    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_c

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 741
    .end local v29    # "o":Ljava/lang/Object;
    :cond_c
    if-eqz v29, :cond_d

    move-object/from16 v2, v29

    .line 742
    check-cast v2, Ljava/security/Provider$Service;

    .line 743
    .restart local v2    # "s":Ljava/security/Provider$Service;
    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v12}, Ljava/security/Provider$Service;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 745
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 747
    .restart local v6    # "className":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 748
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 749
    .local v19, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v2, Ljava/security/Provider$Service;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v2

    move-object/from16 v14, p0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v13 .. v19}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 752
    .restart local v2    # "s":Ljava/security/Provider$Service;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_e

    .line 753
    new-instance v3, Ljava/util/LinkedHashMap;

    const/16 v8, 0x80

    invoke-direct {v3, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    .line 755
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 760
    .end local v2    # "s":Ljava/security/Provider$Service;
    .end local v4    # "serviceName":Ljava/lang/String;
    .end local v5    # "algorithm":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    .end local v19    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "_key":Ljava/lang/Object;
    .end local v21    # "_value":Ljava/lang/Object;
    .end local v23    # "attribute":Ljava/lang/String;
    .end local v24    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v25    # "i":I
    .end local v27    # "j":I
    .end local v28    # "key":Ljava/lang/String;
    .end local v30    # "propertyServiceTableKey":Ljava/lang/String;
    :cond_f
    invoke-direct/range {p0 .. p0}, Ljava/security/Provider;->servicesChanged()V

    .line 761
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/Hashtable;->clear()V

    .line 156
    iget-object v0, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 159
    :cond_0
    iget-object v0, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 162
    :cond_1
    iget-object v0, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 165
    :cond_2
    iget-object v0, p0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 168
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    .line 169
    invoke-direct {p0}, Ljava/security/Provider;->putProviderInfo()V

    .line 170
    iget v0, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 172
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 174
    :cond_4
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    return-object v0
.end method

.method getProviderNumber()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Ljava/security/Provider;->providerNumber:I

    return v0
.end method

.method declared-synchronized getService(Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    .line 379
    iget-object v2, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/security/Provider;->lastType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    iget-object v1, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :goto_0
    monitor-exit p0

    return-object v1

    .line 383
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    .line 385
    .local v1, "service":Ljava/security/Provider$Service;
    # getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {v1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    iput-object p1, p0, Ljava/security/Provider;->lastType:Ljava/lang/String;

    .line 387
    iput-object v1, p0, Ljava/security/Provider;->lastServicesByType:Ljava/security/Provider$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 378
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    .end local v1    # "service":Ljava/security/Provider$Service;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 391
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 412
    monitor-enter p0

    if-nez p1, :cond_0

    .line 413
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "type == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 414
    :cond_0
    if-nez p2, :cond_1

    .line 415
    :try_start_1
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "algorithm == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_1
    iget-object v2, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/security/Provider;->lastAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    iget-object v2, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    :goto_0
    monitor-exit p0

    return-object v2

    .line 422
    :cond_2
    :try_start_2
    invoke-static {p1, p2}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 424
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_3

    .line 425
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 427
    .end local v1    # "o":Ljava/lang/Object;
    :cond_3
    if-nez v1, :cond_8

    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_8

    .line 428
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "o":Ljava/lang/Object;
    move-object v2, v1

    .line 430
    .end local v1    # "o":Ljava/lang/Object;
    :goto_1
    if-nez v2, :cond_4

    .line 431
    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    .line 433
    :cond_4
    if-nez v2, :cond_5

    iget-object v3, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_5

    .line 434
    iget-object v2, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "o":Ljava/lang/Object;
    move-object v2, v1

    .line 436
    .end local v1    # "o":Ljava/lang/Object;
    :cond_5
    if-nez v2, :cond_6

    iget-object v3, p0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_6

    .line 437
    iget-object v2, p0, Ljava/security/Provider;->propertyAliasTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "o":Ljava/lang/Object;
    move-object v2, v1

    .line 440
    .end local v1    # "o":Ljava/lang/Object;
    :cond_6
    if-eqz v2, :cond_7

    .line 441
    iput-object p1, p0, Ljava/security/Provider;->lastServiceName:Ljava/lang/String;

    .line 442
    iput-object p2, p0, Ljava/security/Provider;->lastAlgorithm:Ljava/lang/String;

    .line 443
    check-cast v2, Ljava/security/Provider$Service;

    iput-object v2, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;

    .line 444
    iget-object v2, p0, Ljava/security/Provider;->returnedService:Ljava/security/Provider$Service;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 446
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    move-object v2, v1

    goto :goto_1
.end method

.method public declared-synchronized getServices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->updatePropertyServiceTable()V

    .line 458
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :goto_0
    monitor-exit p0

    return-object v0

    .line 461
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 462
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    .line 466
    :goto_1
    iget-object v0, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    iget-object v1, p0, Ljava/security/Provider;->propertyServiceTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 469
    :cond_1
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    .line 470
    iget-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;

    goto :goto_0

    .line 464
    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ljava/security/Provider;->lastServicesSet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    return-wide v0
.end method

.method implementsAlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "serv"    # Ljava/lang/String;
    .param p2, "alg"    # Ljava/lang/String;
    .param p3, "attribute"    # Ljava/lang/String;
    .param p4, "val"    # Ljava/lang/String;

    .prologue
    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "servAlg":Ljava/lang/String;
    invoke-direct {p0, v1}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alg.Alias."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 318
    if-eqz p2, :cond_0

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-direct {p0, v1}, Ljava/security/Provider;->getPropertyIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_0
    if-eqz v0, :cond_2

    .line 324
    if-nez p3, :cond_1

    .line 325
    const/4 v2, 0x1

    .line 329
    :goto_0
    return v2

    .line 327
    :cond_1
    invoke-direct {p0, v1, p3, p4}, Ljava/security/Provider;->checkAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 329
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-super {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 180
    .local v0, "tmp":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 181
    invoke-direct {p0, v0}, Ljava/security/Provider;->myPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 179
    .end local v0    # "tmp":Ljava/util/Properties;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const-string v2, "Provider."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const/4 v1, 0x0

    .line 264
    :goto_0
    monitor-exit p0

    return-object v1

    .line 253
    :cond_0
    :try_start_1
    iget v1, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 255
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 257
    :cond_1
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 258
    invoke-direct {p0, p1}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    .line 260
    :cond_2
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_3

    .line 261
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    .line 263
    :cond_3
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-super {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ljava/security/Provider;->myPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized putService(Ljava/security/Provider$Service;)V
    .locals 5
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 481
    monitor-enter p0

    if-nez p1, :cond_0

    .line 482
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "s == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 484
    :cond_0
    :try_start_1
    const-string v2, "Provider"

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    :goto_0
    monitor-exit p0

    return-void

    .line 487
    :cond_1
    :try_start_2
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V

    .line 488
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_2

    .line 489
    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    .line 491
    :cond_2
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    # getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    # getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    # getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 493
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_3

    .line 494
    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    .line 496
    :cond_3
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 497
    .local v0, "alias":Ljava/lang/String;
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    # getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 500
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0, p1}, Ljava/security/Provider;->serviceInfoToProperties(Ljava/security/Provider$Service;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 278
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const-string v3, "Provider."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 295
    :goto_0
    monitor-exit p0

    return-object v1

    .line 282
    :cond_0
    :try_start_1
    iget v1, p0, Ljava/security/Provider;->providerNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 284
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    .line 286
    :cond_1
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 287
    invoke-direct {p0, p1}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V

    .line 288
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    .line 294
    :cond_2
    :goto_1
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V

    .line 295
    invoke-super {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 291
    :cond_3
    iget-object v1, p0, Ljava/security/Provider;->changedProperties:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_2

    .line 292
    invoke-direct {p0, p1}, Ljava/security/Provider;->removeFromPropertyServiceTable(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized removeService(Ljava/security/Provider$Service;)V
    .locals 5
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 513
    monitor-enter p0

    if-nez p1, :cond_0

    .line 514
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "s == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 516
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->servicesChanged()V

    .line 517
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    .line 518
    iget-object v2, p0, Ljava/security/Provider;->serviceTable:Ljava/util/LinkedHashMap;

    # getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    # getter for: Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$100(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_1
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    # getter for: Ljava/security/Provider$Service;->aliases:Ljava/util/List;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$200(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 521
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    .local v0, "alias":Ljava/lang/String;
    iget-object v2, p0, Ljava/security/Provider;->aliasTable:Ljava/util/LinkedHashMap;

    # getter for: Ljava/security/Provider$Service;->type:Ljava/lang/String;
    invoke-static {p1}, Ljava/security/Provider$Service;->access$000(Ljava/security/Provider$Service;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/security/Provider;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 525
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, p1}, Ljava/security/Provider;->serviceInfoFromProperties(Ljava/security/Provider$Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    monitor-exit p0

    return-void
.end method

.method setProviderNumber(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 360
    iput p1, p0, Ljava/security/Provider;->providerNumber:I

    .line 361
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/security/Provider;->version:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-super {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
