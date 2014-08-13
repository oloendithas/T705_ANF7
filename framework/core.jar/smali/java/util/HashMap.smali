.class public Ljava/util/HashMap;
.super Ljava/util/AbstractMap;
.source "HashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HashMap$1;,
        Ljava/util/HashMap$EntrySet;,
        Ljava/util/HashMap$Values;,
        Ljava/util/HashMap$KeySet;,
        Ljava/util/HashMap$EntryIterator;,
        Ljava/util/HashMap$ValueIterator;,
        Ljava/util/HashMap$KeyIterator;,
        Ljava/util/HashMap$HashIterator;,
        Ljava/util/HashMap$HashMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry;

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field transient entryForNullKey:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field transient size:I

.field transient table:[Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient threshold:I

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/HashMap$HashMapEntry;

    sput-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    .line 981
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "loadFactor"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/HashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 126
    sget-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/HashMap;->threshold:I

    .line 128
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    .line 138
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 139
    if-gez p1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    if-nez p1, :cond_1

    .line 145
    sget-object v1, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v1, [Ljava/util/HashMap$HashMapEntry;

    move-object v0, v1

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    .line 146
    .local v0, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/HashMap;->threshold:I

    .line 159
    .end local v0    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    return-void

    .line 151
    :cond_1
    const/4 v1, 0x4

    if-ge p1, v1, :cond_2

    .line 152
    const/4 p1, 0x4

    .line 158
    :goto_1
    invoke-direct {p0, p1}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    .line 153
    :cond_2
    const/high16 v1, 0x40000000

    if-le p1, v1, :cond_3

    .line 154
    const/high16 p1, 0x40000000

    goto :goto_1

    .line 156
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->roundUpToPowerOfTwo(I)I

    move-result p1

    goto :goto_1
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 174
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 176
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/HashMap;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 196
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->constructorPutAll(Ljava/util/Map;)V

    .line 197
    return-void
.end method

.method static synthetic access$600(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/HashMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/HashMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static capacityForInitSize(I)I
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 219
    shr-int/lit8 v1, p0, 0x1

    add-int v0, v1, p0

    .line 222
    .local v0, "result":I
    const/high16 v1, -0x40000000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_0
    const/high16 v0, 0x40000000

    goto :goto_0
.end method

.method private constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v7, 0x0

    .line 456
    if-nez p1, :cond_1

    .line 457
    iget-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 458
    .local v1, "entry":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v1, :cond_0

    .line 459
    const/4 v6, 0x0

    invoke-virtual {p0, v7, p2, v6, v7}, Ljava/util/HashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    iput-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 460
    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    .line 481
    .end local v1    # "entry":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_0
    return-void

    .line 462
    .restart local v1    # "entry":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_0
    iput-object p2, v1, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 467
    .end local v1    # "entry":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Ljava/util/HashMap;->secondaryHash(Ljava/lang/Object;)I

    move-result v3

    .line 468
    .local v3, "hash":I
    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 469
    .local v5, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v4, v3, v6

    .line 470
    .local v4, "index":I
    aget-object v2, v5, v4

    .line 471
    .local v2, "first":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    move-object v0, v2

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 472
    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v6, v3, :cond_2

    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 473
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 479
    :cond_3
    invoke-virtual {p0, p1, p2, v3, v2}, Ljava/util/HashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    aput-object v6, v5, v4

    .line 480
    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    goto :goto_0
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 850
    if-nez p1, :cond_1

    .line 851
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 852
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v5}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 863
    :cond_0
    :goto_0
    return v4

    .line 855
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Ljava/util/HashMap;->secondaryHash(Ljava/lang/Object;)I

    move-result v1

    .line 856
    .local v1, "hash":I
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 857
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 858
    .local v2, "index":I
    aget-object v0, v3, v2

    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 859
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_2

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 860
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 858
    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1
.end method

.method private doubleCapacity()[Ljava/util/HashMap$HashMapEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v9, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 584
    .local v9, "oldTable":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v8, v9

    .line 585
    .local v8, "oldCapacity":I
    const/high16 v10, 0x40000000

    if-ne v8, v10, :cond_1

    move-object v6, v9

    .line 620
    :cond_0
    return-object v6

    .line 588
    :cond_1
    mul-int/lit8 v5, v8, 0x2

    .line 589
    .local v5, "newCapacity":I
    invoke-direct {p0, v5}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    .line 590
    .local v6, "newTable":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/HashMap;->size:I

    if-eqz v10, :cond_0

    .line 594
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 599
    aget-object v1, v9, v3

    .line 600
    .local v1, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v1, :cond_3

    .line 594
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 603
    :cond_3
    iget v10, v1, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v2, v10, v8

    .line 604
    .local v2, "highBit":I
    const/4 v0, 0x0

    .line 605
    .local v0, "broken":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    or-int v10, v3, v2

    aput-object v1, v6, v10

    .line 606
    iget-object v4, v1, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .local v4, "n":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v4, :cond_6

    .line 607
    iget v10, v4, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v7, v10, v8

    .line 608
    .local v7, "nextHighBit":I
    if-eq v7, v2, :cond_4

    .line 609
    if-nez v0, :cond_5

    .line 610
    or-int v10, v3, v7

    aput-object v4, v6, v10

    .line 613
    :goto_3
    move-object v0, v1

    .line 614
    move v2, v7

    .line 606
    :cond_4
    move-object v1, v4

    iget-object v4, v4, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    .line 612
    :cond_5
    iput-object v4, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_3

    .line 617
    .end local v7    # "nextHighBit":I
    :cond_6
    if-eqz v0, :cond_2

    .line 618
    const/4 v10, 0x0

    iput-object v10, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1
.end method

.method private ensureCapacity(I)V
    .locals 11
    .param p1, "numMappings"    # I

    .prologue
    .line 536
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->capacityForInitSize(I)I

    move-result v10

    invoke-static {v10}, Ljava/util/Collections;->roundUpToPowerOfTwo(I)I

    move-result v2

    .line 537
    .local v2, "newCapacity":I
    iget-object v9, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 538
    .local v9, "oldTable":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v7, v9

    .line 539
    .local v7, "oldCapacity":I
    if-gt v2, v7, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    mul-int/lit8 v10, v7, 0x2

    if-ne v2, v10, :cond_2

    .line 543
    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    .line 548
    :cond_2
    invoke-direct {p0, v2}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    .line 549
    .local v6, "newTable":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/HashMap;->size:I

    if-eqz v10, :cond_0

    .line 550
    add-int/lit8 v4, v2, -0x1

    .line 551
    .local v4, "newMask":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_0

    .line 552
    aget-object v0, v9, v1

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_3

    .line 553
    iget-object v8, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 554
    .local v8, "oldNext":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget v10, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v3, v10, v4

    .line 555
    .local v3, "newIndex":I
    aget-object v5, v6, v3

    .line 556
    .local v5, "newNext":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    aput-object v0, v6, v3

    .line 557
    iput-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 558
    move-object v0, v8

    .line 559
    goto :goto_2

    .line 551
    .end local v3    # "newIndex":I
    .end local v5    # "newNext":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v8    # "oldNext":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private makeTable(I)[Ljava/util/HashMap$HashMapEntry;
    .locals 3
    .param p1, "newCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/util/HashMap$HashMapEntry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    .line 571
    .local v0, "newTable":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 572
    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/HashMap;->threshold:I

    .line 573
    return-object v0
.end method

.method private putValueForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 428
    .local v0, "entry":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->addNewEntryForNullKey(Ljava/lang/Object;)V

    .line 430
    iget v2, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->size:I

    .line 431
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->modCount:I

    .line 432
    const/4 v1, 0x0

    .line 437
    :goto_0
    return-object v1

    .line 434
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->preModify(Ljava/util/HashMap$HashMapEntry;)V

    .line 435
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 436
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1001
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1002
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1003
    .local v0, "capacity":I
    if-gez v0, :cond_0

    .line 1004
    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1006
    :cond_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    .line 1007
    const/4 v0, 0x4

    .line 1013
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    .line 1015
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1016
    .local v3, "size":I
    if-gez v3, :cond_3

    .line 1017
    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1008
    .end local v3    # "size":I
    :cond_1
    const/high16 v5, 0x40000000

    if-le v0, v5, :cond_2

    .line 1009
    const/high16 v0, 0x40000000

    goto :goto_0

    .line 1011
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->roundUpToPowerOfTwo(I)I

    move-result v0

    goto :goto_0

    .line 1020
    .restart local v3    # "size":I
    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->init()V

    .line 1021
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1022
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1023
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1024
    .local v4, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v2, v4}, Ljava/util/HashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1021
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1026
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "val":Ljava/lang/Object;, "TV;"
    :cond_4
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 871
    if-nez p1, :cond_2

    .line 872
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 873
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v7, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 903
    :goto_0
    return v5

    .line 876
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 877
    iget v6, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->modCount:I

    .line 878
    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    .line 879
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    goto :goto_0

    .line 883
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    invoke-static {p1}, Ljava/util/HashMap;->secondaryHash(Ljava/lang/Object;)I

    move-result v1

    .line 884
    .local v1, "hash":I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 885
    .local v4, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    and-int v2, v1, v7

    .line 886
    .local v2, "index":I
    aget-object v0, v4, v2

    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 887
    .local v3, "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_6

    .line 888
    iget v7, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v7, v1, :cond_5

    iget-object v7, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 889
    iget-object v7, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    .line 890
    goto :goto_0

    .line 892
    :cond_3
    if-nez v3, :cond_4

    .line 893
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    aput-object v6, v4, v2

    .line 897
    :goto_2
    iget v6, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->modCount:I

    .line 898
    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    .line 899
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    goto :goto_0

    .line 895
    :cond_4
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iput-object v6, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    .line 887
    :cond_5
    move-object v3, v0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_6
    move v5, v6

    .line 903
    goto :goto_0
.end method

.method private removeNullKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 656
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 657
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 664
    :goto_0
    return-object v1

    .line 660
    :cond_0
    iput-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 661
    iget v1, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/HashMap;->modCount:I

    .line 662
    iget v1, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/HashMap;->size:I

    .line 663
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    .line 664
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method static secondaryHash(Ljava/lang/Object;)I
    .locals 3
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 351
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 352
    ushr-int/lit8 v1, v0, 0x7

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 353
    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 987
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 988
    .local v1, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v3, "loadFactor"

    const/high16 v4, 0x3f400000

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;F)V

    .line 989
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 991
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 992
    iget v3, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 993
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 994
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 995
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 997
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 3
    .param p3, "hash"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    new-instance v1, Ljava/util/HashMap$HashMapEntry;

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v2, v2, p4

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    aput-object v1, v0, p4

    .line 491
    return-void
.end method

.method addNewEntryForNullKey(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 499
    new-instance v0, Ljava/util/HashMap$HashMapEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v2, p1, v1, v2}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    iput-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 500
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 679
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 681
    iput-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 682
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HashMap;->size:I

    .line 685
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 238
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .local v1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    .line 245
    iput-object v3, v1, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 246
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/HashMap;->size:I

    .line 247
    iput-object v3, v1, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 248
    iput-object v3, v1, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 249
    iput-object v3, v1, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 251
    invoke-virtual {v1}, Ljava/util/HashMap;->init()V

    .line 252
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->constructorPutAll(Ljava/util/Map;)V

    .line 253
    return-object v1

    .line 239
    .end local v1    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;
    .locals 1
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "first":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$HashMapEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    return-object v0
.end method

.method final constructorPutAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    sget-object v3, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    if-ne v2, v3, :cond_0

    .line 206
    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    .line 208
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/util/HashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 326
    if-nez p1, :cond_2

    .line 327
    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v6, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 327
    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 333
    .local v2, "hash":I
    ushr-int/lit8 v6, v2, 0x14

    ushr-int/lit8 v7, v2, 0xc

    xor-int/2addr v6, v7

    xor-int/2addr v2, v6

    .line 334
    ushr-int/lit8 v6, v2, 0x7

    ushr-int/lit8 v7, v2, 0x4

    xor-int/2addr v6, v7

    xor-int/2addr v2, v6

    .line 336
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 337
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v2

    aget-object v0, v3, v6

    .line 338
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    .line 339
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 340
    .local v1, "eKey":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_0

    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v6, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 338
    :cond_3
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .end local v1    # "eKey":Ljava/lang/Object;, "TK;"
    :cond_4
    move v4, v5

    .line 344
    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 365
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 366
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;
    array-length v2, v3

    .line 367
    .local v2, "len":I
    if-nez p1, :cond_5

    .line 368
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 369
    aget-object v0, v3, v1

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;
    :goto_1
    if-eqz v0, :cond_2

    .line 370
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 386
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :cond_0
    :goto_2
    return v4

    .line 369
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 368
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :cond_3
    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v6, :cond_4

    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget-object v6, v6, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-eqz v6, :cond_0

    :cond_4
    move v4, v5

    goto :goto_2

    .line 379
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 380
    aget-object v0, v3, v1

    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :goto_4
    if-eqz v0, :cond_6

    .line 381
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 380
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_4

    .line 379
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 386
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;
    :cond_7
    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v6, :cond_8

    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget-object v6, v6, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_8
    move v4, v5

    goto :goto_2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 734
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 295
    if-nez p1, :cond_2

    .line 296
    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    .line 297
    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-object v4

    .line 297
    :cond_1
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 303
    .local v2, "hash":I
    ushr-int/lit8 v5, v2, 0x14

    ushr-int/lit8 v6, v2, 0xc

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    .line 304
    ushr-int/lit8 v5, v2, 0x7

    ushr-int/lit8 v6, v2, 0x4

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    .line 306
    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 307
    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v2

    aget-object v0, v3, v5

    .line 308
    .restart local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 309
    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 310
    .local v1, "eKey":Ljava/lang/Object;, "TK;"
    if-eq v1, p1, :cond_3

    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 311
    :cond_3
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 308
    :cond_4
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1
.end method

.method init()V
    .locals 0

    .prologue
    .line 264
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 274
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 695
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 696
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 909
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$EntryIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeyIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 908
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$ValueIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method postRemove(Ljava/util/HashMap$HashMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    return-void
.end method

.method preModify(Ljava/util/HashMap$HashMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 401
    invoke-direct {p0, p2}, Ljava/util/HashMap;->putValueForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 423
    :goto_0
    return-object v3

    .line 404
    :cond_0
    invoke-static {p1}, Ljava/util/HashMap;->secondaryHash(Ljava/lang/Object;)I

    move-result v1

    .line 405
    .local v1, "hash":I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 406
    .local v4, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 407
    .local v2, "index":I
    aget-object v0, v4, v2

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 408
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_1

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->preModify(Ljava/util/HashMap$HashMapEntry;)V

    .line 410
    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 411
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 407
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 417
    :cond_2
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    .line 418
    iget v5, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    iget v6, p0, Ljava/util/HashMap;->threshold:I

    if-le v5, v6, :cond_3

    .line 419
    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    move-result-object v4

    .line 420
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 422
    :cond_3
    invoke-virtual {p0, p1, p2, v1, v2}, Ljava/util/HashMap;->addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 423
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;->ensureCapacity(I)V

    .line 522
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 523
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 633
    invoke-direct {p0}, Ljava/util/HashMap;->removeNullKey()Ljava/lang/Object;

    move-result-object v5

    .line 652
    :goto_0
    return-object v5

    .line 635
    :cond_0
    invoke-static {p1}, Ljava/util/HashMap;->secondaryHash(Ljava/lang/Object;)I

    move-result v1

    .line 636
    .local v1, "hash":I
    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 637
    .local v4, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 638
    .local v2, "index":I
    aget-object v0, v4, v2

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 639
    .local v3, "prev":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_3

    .line 640
    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_2

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 641
    if-nez v3, :cond_1

    .line 642
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    aput-object v5, v4, v2

    .line 646
    :goto_2
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    .line 647
    iget v5, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/HashMap;->size:I

    .line 648
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    .line 649
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 644
    :cond_1
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iput-object v5, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    .line 639
    :cond_2
    move-object v3, v0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 652
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 283
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 721
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 722
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
