.class public final Ljava/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Security$1;,
        Ljava/security/Security$SecurityDoor;
    }
.end annotation


# static fields
.field private static final secprops:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 43
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Ljava/security/Security;->secprops:Ljava/util/Properties;

    .line 50
    const/4 v3, 0x0

    .line 52
    .local v3, "loaded":Z
    :try_start_0
    const-class v4, Ljava/security/Security;

    const-string v5, "security.properties"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 53
    .local v0, "configStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    .local v2, "input":Ljava/io/InputStream;
    sget-object v4, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "configStream":Ljava/io/InputStream;
    .end local v2    # "input":Ljava/io/InputStream;
    :goto_0
    if-nez v3, :cond_0

    .line 61
    invoke-static {}, Ljava/security/Security;->registerDefaultProviders()V

    .line 63
    :cond_0
    new-instance v4, Ljava/security/Security$SecurityDoor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/security/Security$SecurityDoor;-><init>(Ljava/security/Security$1;)V

    sput-object v4, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    .line 64
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "Could not load \'security.properties\'"

    invoke-static {v4, v1}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    return-void
.end method

.method public static addProvider(Ljava/security/Provider;)I
    .locals 1
    .param p0, "provider"    # Ljava/security/Provider;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    return v0
.end method

.method public static getAlgorithmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "algName"    # Ljava/lang/String;
    .param p1, "propName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 93
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v8

    .line 96
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Alg."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "prop":Ljava/lang/String;
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v7

    .line 98
    .local v7, "providers":[Ljava/security/Provider;
    move-object v0, v7

    .local v0, "arr$":[Ljava/security/Provider;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 99
    .local v6, "provider":Ljava/security/Provider;
    invoke-virtual {v6}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 100
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 101
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 102
    invoke-virtual {v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 98
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getAlgorithms(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 368
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 378
    :cond_0
    return-object v5

    .line 371
    :cond_1
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .local v0, "arr$":[Ljava/security/Provider;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 372
    .local v4, "provider":Ljava/security/Provider;
    invoke-virtual {v4}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "i$":I
    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider$Service;

    .line 373
    .local v6, "service":Ljava/security/Provider$Service;
    invoke-virtual {v6}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 374
    invoke-virtual {v6}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 371
    .end local v6    # "service":Ljava/security/Provider$Service;
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 336
    if-nez p0, :cond_0

    .line 337
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_0
    sget-object v1, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "property":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    const-class v0, Ljava/security/Security;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/apache/harmony/security/fortress/Services;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getProviders()[Ljava/security/Provider;
    .locals 2

    .prologue
    .line 187
    const-class v0, Ljava/security/Security;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()[Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getProviders(Ljava/lang/String;)[Ljava/security/Provider;
    .locals 4
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    .line 227
    if-nez p0, :cond_0

    .line 228
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "filter == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 231
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 233
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 235
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_3

    .line 236
    :cond_2
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 238
    :cond_3
    const/4 v2, 0x1

    if-ge v1, v2, :cond_4

    .line 239
    const-string v2, ""

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :goto_0
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/util/Map;)[Ljava/security/Provider;

    move-result-object v2

    return-object v2

    .line 241
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized getProviders(Ljava/util/Map;)[Ljava/security/Provider;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/security/Provider;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v16, Ljava/security/Security;

    monitor-enter v16

    if-nez p0, :cond_0

    .line 272
    :try_start_0
    new-instance v15, Ljava/lang/NullPointerException;

    const-string v17, "filter == null"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 274
    :cond_0
    :try_start_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    if-eqz v15, :cond_1

    .line 275
    const/4 v15, 0x0

    .line 325
    :goto_0
    monitor-exit v16

    return-object v15

    .line 277
    :cond_1
    :try_start_2
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProvidersList()Ljava/util/List;

    move-result-object v12

    .line 278
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 280
    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 281
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 282
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 283
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 284
    .local v14, "val":Ljava/lang/String;
    const/4 v2, 0x0

    .line 285
    .local v2, "attribute":Ljava/lang/String;
    const/16 v15, 0x20

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 286
    .local v5, "i":I
    const/16 v15, 0x2e

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 287
    .local v7, "j":I
    const/4 v15, -0x1

    if-ne v7, v15, :cond_3

    .line 288
    new-instance v15, Ljava/security/InvalidParameterException;

    invoke-direct {v15}, Ljava/security/InvalidParameterException;-><init>()V

    throw v15

    .line 290
    :cond_3
    const/4 v15, -0x1

    if-ne v5, v15, :cond_4

    .line 291
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_7

    .line 292
    new-instance v15, Ljava/security/InvalidParameterException;

    invoke-direct {v15}, Ljava/security/InvalidParameterException;-><init>()V

    throw v15

    .line 295
    :cond_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_5

    .line 296
    new-instance v15, Ljava/security/InvalidParameterException;

    invoke-direct {v15}, Ljava/security/InvalidParameterException;-><init>()V

    throw v15

    .line 298
    :cond_5
    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_6

    .line 300
    new-instance v15, Ljava/security/InvalidParameterException;

    invoke-direct {v15}, Ljava/security/InvalidParameterException;-><init>()V

    throw v15

    .line 302
    :cond_6
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 304
    :cond_7
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 305
    .local v13, "serv":Ljava/lang/String;
    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "alg":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_9

    .line 307
    :cond_8
    new-instance v15, Ljava/security/InvalidParameterException;

    invoke-direct {v15}, Ljava/security/InvalidParameterException;-><init>()V

    throw v15

    .line 310
    :cond_9
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    if-ge v8, v15, :cond_2

    .line 312
    :try_start_3
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/Provider;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    .local v11, "p":Ljava/security/Provider;
    :try_start_4
    invoke-virtual {v11, v13, v1, v2, v14}, Ljava/security/Provider;->implementsAlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 317
    invoke-interface {v12, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v8, v8, -0x1

    .line 310
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 313
    .end local v11    # "p":Ljava/security/Provider;
    :catch_0
    move-exception v3

    .line 314
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_1

    .line 322
    .end local v1    # "alg":Ljava/lang/String;
    .end local v2    # "attribute":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v7    # "j":I
    .end local v8    # "k":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v13    # "serv":Ljava/lang/String;
    .end local v14    # "val":Ljava/lang/String;
    :cond_b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_c

    .line 323
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Ljava/security/Provider;

    invoke-interface {v12, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/security/Provider;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 325
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .locals 3
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "position"    # I

    .prologue
    .line 127
    const-class v2, Ljava/security/Security;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v0, -0x1

    .line 132
    :goto_0
    monitor-exit v2

    return v0

    .line 130
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/harmony/security/fortress/Services;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    .line 131
    .local v0, "result":I
    invoke-static {}, Ljava/security/Security;->renumProviders()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static registerDefaultProviders()V
    .locals 3

    .prologue
    .line 74
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.1"

    const-string v2, "com.android.org.conscrypt.OpenSSLProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.2"

    const-string v2, "org.apache.harmony.security.provider.cert.DRLCertFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.3"

    const-string v2, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.4"

    const-string v2, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.5"

    const-string v2, "com.android.org.conscrypt.JSSEProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public static declared-synchronized removeProvider(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    const-class v2, Ljava/security/Security;

    monitor-enter v2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 171
    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 172
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/security/Provider;->getProviderNumber()I

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Services;->removeProvider(I)V

    .line 176
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    .line 177
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/security/Provider;->setProviderNumber(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    .end local v0    # "p":Ljava/security/Provider;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static renumProviders()V
    .locals 4

    .prologue
    .line 387
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    .line 388
    .local v1, "p":[Ljava/security/Provider;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 389
    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/security/Provider;->setProviderNumber(I)V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 350
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-void
.end method
