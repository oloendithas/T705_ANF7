.class public Landroid/server/spell/SpellScrollScanner;
.super Ljava/lang/Object;
.source "SpellScrollScanner.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SpellManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInformationHash:I

.field private mProhibitedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellScrollList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellScrollMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I

    .line 69
    iput-object p1, p0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Landroid/server/spell/SpellScrollScanner;->buildProhibitedPackageList()V

    .line 72
    return-void
.end method

.method private buildProhibitedPackageList()V
    .registers 8

    .prologue
    .line 139
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.android.stk"

    aput-object v6, v3, v5

    .line 144
    .local v3, "list":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v2, :cond_17

    aget-object v4, v0, v1

    .line 145
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 147
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_17
    return-void
.end method


# virtual methods
.method public declared-synchronized getInformationHash()I
    .registers 2

    .prologue
    .line 454
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;
    .registers 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v4, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SpellScroll;

    .line 124
    .local v1, "info":Landroid/app/SpellScroll;
    invoke-virtual {v1, p1}, Landroid/app/SpellScroll;->getMatchedInstantSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 127
    invoke-virtual {v1}, Landroid/app/SpellScroll;->shallowCopy()Landroid/app/SpellScroll;

    move-result-object v3

    .line 128
    .local v3, "result":Landroid/app/SpellScroll;
    invoke-virtual {v1, v2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/SpellScroll;->addSpell(Landroid/app/SpellScroll$Spell;)V

    .line 130
    monitor-exit p0

    .line 135
    .end local v1    # "info":Landroid/app/SpellScroll;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "result":Landroid/app/SpellScroll;
    :goto_25
    return-object v3

    .line 133
    :cond_26
    monitor-exit p0

    .line 135
    const/4 v3, 0x0

    goto :goto_25

    .line 133
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_29
    move-exception v4

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v4
.end method

.method public declared-synchronized getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;
    .registers 5
    .param p1, "id"    # J

    .prologue
    .line 450
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .registers 5
    .param p1, "spellScrollName"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "result":Landroid/app/SpellScroll;
    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    if-eqz v2, :cond_11

    .line 101
    monitor-enter p0

    .line 102
    :try_start_6
    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/SpellScroll;

    move-object v1, v0

    .line 103
    monitor-exit p0

    .line 106
    :cond_11
    return-object v1

    .line 103
    :catchall_12
    move-exception v2

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public declared-synchronized getSpellScrollList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpellScrollNames()Ljava/util/List;
    .registers 3
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
    .line 406
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpellScrollNames(I)Ljava/util/List;
    .registers 6
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll;

    .line 415
    .local v2, "scroll":Landroid/app/SpellScroll;
    invoke-virtual {v2}, Landroid/app/SpellScroll;->getPriority()I

    move-result v3

    if-ne v3, p1, :cond_c

    .line 416
    invoke-virtual {v2}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    goto :goto_c

    .line 413
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "scroll":Landroid/app/SpellScroll;
    :catchall_26
    move-exception v3

    monitor-exit p0

    throw v3

    .line 420
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_29
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getSpellScrollNamesWithIngredientName(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "ingredientName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll;

    .line 430
    .local v2, "scroll":Landroid/app/SpellScroll;
    invoke-virtual {v2, p1}, Landroid/app/SpellScroll;->hasIngredientName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 431
    invoke-virtual {v2}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    goto :goto_c

    .line 428
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "scroll":Landroid/app/SpellScroll;
    :catchall_26
    move-exception v3

    monitor-exit p0

    throw v3

    .line 435
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_29
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "spellScrollName"    # Ljava/lang/String;
    .param p2, "spellName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 444
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_16

    .line 446
    .local v0, "info":Landroid/app/SpellScroll;
    if-nez v0, :cond_e

    :cond_c
    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    :try_start_e
    invoke-virtual {v0, p2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_16

    move-result-object v2

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    goto :goto_c

    .line 444
    .end local v0    # "info":Landroid/app/SpellScroll;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isValidSpellScroll(Ljava/lang/String;)Z
    .registers 3
    .param p1, "spellScrollName"    # Ljava/lang/String;

    .prologue
    .line 440
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scanSpellScrolls()V
    .registers 41

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 174
    .local v26, "pm":Landroid/content/pm/PackageManager;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v22, "newSpellScrollList":Ljava/util/List;, "Ljava/util/List<Landroid/app/SpellScroll;>;"
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v23, "newSpellScrollMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/SpellScroll;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v21, "newSpellPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/SpellScroll;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v20, "newSpellIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/http/message/BasicNameValuePair;>;"
    const/16 v27, 0x280

    .line 182
    .local v27, "queryFlag":I
    new-instance v36, Landroid/content/Intent;

    const-string v37, "android.intent.action.SPELL"

    invoke-direct/range {v36 .. v37}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v37, 0x280

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 185
    .local v4, "activitySpellList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v36, Landroid/content/Intent;

    const-string v37, "android.intent.action.SPELL"

    invoke-direct/range {v36 .. v37}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v37, 0x280

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v31

    .line 188
    .local v31, "serviceSpellList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v36, Landroid/content/Intent;

    const-string v37, "android.intent.action.SPELL"

    invoke-direct/range {v36 .. v37}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v37, 0x280

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v29

    .line 191
    .local v29, "receiverSpellList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [Ljava/util/List;

    move-object/from16 v33, v0

    const/16 v36, 0x0

    aput-object v4, v33, v36

    const/16 v36, 0x1

    aput-object v31, v33, v36

    const/16 v36, 0x2

    aput-object v29, v33, v36

    .line 197
    .local v33, "spellListArray":[Ljava/util/List;
    move-object/from16 v5, v33

    .local v5, "arr$":[Ljava/util/List;
    array-length v0, v5

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    :goto_74
    move/from16 v0, v18

    if-ge v10, v0, :cond_214

    aget-object v19, v5, v10

    .line 199
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :cond_7e
    :goto_7e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_20f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 201
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    const/16 v17, 0x0

    .line 202
    .local v17, "itemInfo":Landroid/content/pm/PackageItemInfo;
    const/4 v6, 0x0

    .line 204
    .local v6, "defaultCastAction":I
    const/16 v16, 0x1

    .line 205
    .local v16, "isDisabled":Z
    const/4 v15, 0x1

    .line 207
    .local v15, "isComponentDisabled":Z
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v36, v0

    if-eqz v36, :cond_17d

    .line 208
    move-object/from16 v0, v19

    if-ne v0, v4, :cond_173

    .line 209
    const/4 v6, 0x0

    .line 214
    :goto_9b
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    .line 215
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_176

    const/16 v16, 0x1

    .line 216
    :goto_b3
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_17a

    const/4 v15, 0x1

    .line 224
    :cond_c0
    :goto_c0
    if-eqz v17, :cond_1b0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 226
    .local v24, "packageName":Ljava/lang/String;
    :goto_c8
    if-nez v15, :cond_7e

    .line 231
    if-eqz v24, :cond_dc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_7e

    .line 236
    :cond_dc
    const/16 v34, 0x0

    .line 239
    .local v34, "spellScroll":Landroid/app/SpellScroll;
    :try_start_de
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v6, v2}, Landroid/app/SpellScroll;->getMetaData(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;IZ)Landroid/app/SpellScroll;

    move-result-object v34

    .line 241
    sget-boolean v36, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v36, :cond_114

    .line 242
    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SpellScroll META_DATA found in ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_114
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1ec

    .line 246
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/SpellScroll;

    .line 248
    .local v35, "stored":Landroid/app/SpellScroll;
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->isMergable(Landroid/app/SpellScroll;)Z

    move-result v36

    if-eqz v36, :cond_1b4

    .line 249
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->merge(Landroid/app/SpellScroll;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_141} :catch_143

    goto/16 :goto_7e

    .line 266
    .end local v35    # "stored":Landroid/app/SpellScroll;
    :catch_143
    move-exception v7

    .line 267
    .local v7, "e":Ljava/lang/Exception;
    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SpellScroll parsing failed in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " :"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7e

    .line 211
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v34    # "spellScroll":Landroid/app/SpellScroll;
    :cond_173
    const/4 v6, 0x2

    goto/16 :goto_9b

    .line 215
    :cond_176
    const/16 v16, 0x0

    goto/16 :goto_b3

    .line 216
    :cond_17a
    const/4 v15, 0x0

    goto/16 :goto_c0

    .line 217
    :cond_17d
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v36, v0

    if-eqz v36, :cond_c0

    .line 218
    const/4 v6, 0x1

    .line 219
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .line 220
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_1ab

    const/16 v16, 0x1

    .line 221
    :goto_19c
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_1ae

    const/4 v15, 0x1

    :goto_1a9
    goto/16 :goto_c0

    .line 220
    :cond_1ab
    const/16 v16, 0x0

    goto :goto_19c

    .line 221
    :cond_1ae
    const/4 v15, 0x0

    goto :goto_1a9

    .line 224
    :cond_1b0
    const/16 v24, 0x0

    goto/16 :goto_c8

    .line 254
    .restart local v24    # "packageName":Ljava/lang/String;
    .restart local v34    # "spellScroll":Landroid/app/SpellScroll;
    .restart local v35    # "stored":Landroid/app/SpellScroll;
    :cond_1b4
    :try_start_1b4
    sget-boolean v36, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v36, :cond_1e8

    .line 255
    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SpellScroll is not mergable!!! it will be ignored!! ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v35 .. v35}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]<=>["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_1e8
    const/16 v34, 0x0

    goto/16 :goto_7e

    .line 262
    .end local v35    # "stored":Landroid/app/SpellScroll;
    :cond_1ec
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_20d} :catch_143

    goto/16 :goto_7e

    .line 197
    .end local v6    # "defaultCastAction":I
    .end local v11    # "info":Landroid/content/pm/ResolveInfo;
    .end local v15    # "isComponentDisabled":Z
    .end local v16    # "isDisabled":Z
    .end local v17    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v34    # "spellScroll":Landroid/app/SpellScroll;
    :cond_20f
    add-int/lit8 v9, v10, 0x1

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_74

    .line 274
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_214
    new-instance v28, Landroid/content/Intent;

    const-string v36, "android.intent.action.MAIN"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v28, "queryIntent":Landroid/content/Intent;
    const-string v36, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const/16 v36, 0x200

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 279
    .local v3, "activityPesudoSpellList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_39c

    .line 281
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :cond_23a
    :goto_23a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_39c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 283
    .restart local v11    # "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    .line 285
    .local v17, "itemInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v17, :cond_23a

    .line 290
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_298

    const/4 v13, 0x1

    .line 292
    .local v13, "isActivityDisabled":Z
    :goto_255
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v36, v0

    if-nez v36, :cond_29a

    const/4 v14, 0x1

    .line 294
    .local v14, "isAppDisabled":Z
    :goto_264
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 296
    .restart local v24    # "packageName":Ljava/lang/String;
    if-nez v13, :cond_23a

    .line 301
    if-eqz v24, :cond_27e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_23a

    .line 308
    :cond_27e
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_29c

    .line 309
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/SpellScroll;

    .line 311
    .local v30, "scroll":Landroid/app/SpellScroll;
    if-eqz v14, :cond_23a

    .line 312
    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->setDisabled()V

    goto :goto_23a

    .line 290
    .end local v13    # "isActivityDisabled":Z
    .end local v14    # "isAppDisabled":Z
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v30    # "scroll":Landroid/app/SpellScroll;
    :cond_298
    const/4 v13, 0x0

    goto :goto_255

    .line 292
    .restart local v13    # "isActivityDisabled":Z
    :cond_29a
    const/4 v14, 0x0

    goto :goto_264

    .line 317
    .restart local v14    # "isAppDisabled":Z
    .restart local v24    # "packageName":Ljava/lang/String;
    :cond_29c
    if-eqz v14, :cond_2ac

    .line 318
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8

    .line 320
    .local v8, "enabledSetting":I
    const/16 v36, 0x2

    move/from16 v0, v36

    if-eq v8, v0, :cond_23a

    .line 325
    .end local v8    # "enabledSetting":I
    :cond_2ac
    const/16 v34, 0x0

    .line 328
    .restart local v34    # "spellScroll":Landroid/app/SpellScroll;
    :try_start_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-static {v0, v1, v14}, Landroid/app/SpellScroll;->createPseudoSpellScroll(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Z)Landroid/app/SpellScroll;

    move-result-object v34

    .line 330
    sget-boolean v36, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v36, :cond_2e2

    .line 331
    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Pseudo SpellScroll has been created for ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_2e2
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_379

    .line 335
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/SpellScroll;

    .line 337
    .restart local v35    # "stored":Landroid/app/SpellScroll;
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->isMergable(Landroid/app/SpellScroll;)Z

    move-result v36

    if-eqz v36, :cond_341

    .line 338
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->merge(Landroid/app/SpellScroll;)V
    :try_end_30f
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_30f} :catch_311

    goto/16 :goto_23a

    .line 355
    .end local v35    # "stored":Landroid/app/SpellScroll;
    :catch_311
    move-exception v7

    .line 356
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Pseudo SpellScroll creation failed in "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " :"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_23a

    .line 343
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v35    # "stored":Landroid/app/SpellScroll;
    :cond_341
    :try_start_341
    sget-boolean v36, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v36, :cond_375

    .line 344
    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "SpellScroll is not mergable!!! it will be ignored!! ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v35 .. v35}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]<=>["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_375
    const/16 v34, 0x0

    goto/16 :goto_23a

    .line 351
    .end local v35    # "stored":Landroid/app/SpellScroll;
    :cond_379
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39a
    .catch Ljava/lang/Exception; {:try_start_341 .. :try_end_39a} :catch_311

    goto/16 :goto_23a

    .line 362
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "info":Landroid/content/pm/ResolveInfo;
    .end local v13    # "isActivityDisabled":Z
    .end local v14    # "isAppDisabled":Z
    .end local v17    # "itemInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v34    # "spellScroll":Landroid/app/SpellScroll;
    :cond_39c
    const/4 v12, 0x0

    .line 364
    .local v12, "infoHash":I
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3a1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_458

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/SpellScroll;

    .line 365
    .restart local v34    # "spellScroll":Landroid/app/SpellScroll;
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->hashCode()I

    move-result v36

    xor-int v12, v12, v36

    .line 367
    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getSpells()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3bb
    :goto_3bb
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3a1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/SpellScroll$Spell;

    .line 369
    .local v32, "spell":Landroid/app/SpellScroll$Spell;
    invoke-virtual/range {v32 .. v32}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_3f8

    .line 370
    invoke-virtual/range {v32 .. v32}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    new-instance v37, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v32 .. v32}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3bb

    .line 373
    :cond_3f8
    sget-boolean v36, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v36, :cond_3bb

    .line 374
    invoke-virtual/range {v32 .. v32}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/http/message/BasicNameValuePair;

    .line 376
    .local v25, "pair":Lorg/apache/http/message/BasicNameValuePair;
    if-eqz v25, :cond_3bb

    .line 377
    const-string v36, "SpellManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Duplicated spell id found!!! "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v34 .. v34}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "/"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v32 .. v32}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " <=> "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "/"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3bb

    .line 386
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v25    # "pair":Lorg/apache/http/message/BasicNameValuePair;
    .end local v32    # "spell":Landroid/app/SpellScroll$Spell;
    .end local v34    # "spellScroll":Landroid/app/SpellScroll;
    :cond_458
    monitor-enter p0

    .line 387
    :try_start_459
    move-object/from16 v0, p0

    iput v12, v0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I

    .line 388
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    .line 389
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    .line 390
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    .line 391
    monitor-exit p0

    .line 392
    return-void

    .line 391
    :catchall_471
    move-exception v36

    monitor-exit p0
    :try_end_473
    .catchall {:try_start_459 .. :try_end_473} :catchall_471

    throw v36
.end method
