.class public Lcom/android/contacts/model/EntityDelta;
.super Ljava/lang/Object;
.source "EntityDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntityDelta;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "EntityDelta"

.field public static mSIMNameLength:I


# instance fields
.field private mContactsQueryUri:Landroid/net/Uri;

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 569
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    .line 1187
    new-instance v0, Lcom/android/contacts/model/EntityDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntityDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 98
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 1
    .param p1, "values"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 98
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    .line 104
    iput-object p1, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 105
    return-void
.end method

.method private containsEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 5
    .param p1, "entry"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .prologue
    .line 387
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 388
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 390
    .local v0, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 393
    .end local v0    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static fromBefore(Landroid/content/Entity;)Lcom/android/contacts/model/EntityDelta;
    .locals 5
    .param p0, "before"    # Landroid/content/Entity;

    .prologue
    .line 112
    new-instance v0, Lcom/android/contacts/model/EntityDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta;-><init>()V

    .line 113
    .local v0, "entity":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 114
    iget-object v3, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 116
    .local v2, "namedValues":Landroid/content/Entity$NamedContentValues;
    iget-object v3, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0

    .line 118
    .end local v2    # "namedValues":Landroid/content/Entity$NamedContentValues;
    :cond_0
    return-object v0
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "lazyCreate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 274
    .restart local v0    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 275
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_1
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDelta;
    .locals 10
    .param p0, "local"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "remote"    # Lcom/android/contacts/model/EntityDelta;

    .prologue
    .line 129
    iget-object v7, p1, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 130
    .local v7, "remoteValues":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez p0, :cond_2

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isTransient()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 p0, 0x0

    .line 162
    .end local p0    # "local":Lcom/android/contacts/model/EntityDelta;
    :cond_1
    return-object p0

    .line 133
    .restart local p0    # "local":Lcom/android/contacts/model/EntityDelta;
    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Lcom/android/contacts/model/EntityDelta;

    .end local p0    # "local":Lcom/android/contacts/model/EntityDelta;
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta;-><init>()V

    .line 144
    .restart local p0    # "local":Lcom/android/contacts/model/EntityDelta;
    :cond_3
    iget-object v8, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v9, p1, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-static {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 147
    iget-object v8, p1, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 148
    .local v5, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 149
    .local v6, "remoteEntry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 152
    .local v0, "childId":Ljava/lang/Long;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 153
    .local v3, "localEntry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v3, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 155
    .local v4, "merged":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    .line 157
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .param p2, "builder"    # Landroid/content/ContentProviderOperation$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    .line 434
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 3
    .param p1, "entry"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 313
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 314
    .local v0, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v0    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v3

    .line 445
    .local v3, "isContactInsert":Z
    if-nez v3, :cond_0

    .line 447
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 448
    .local v0, "beforeId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 449
    .local v1, "beforeVersion":Ljava/lang/Long;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 457
    .end local v0    # "beforeId":Ljava/lang/Long;
    .end local v1    # "beforeVersion":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 451
    .restart local v0    # "beforeId":Ljava/lang/Long;
    .restart local v1    # "beforeVersion":Ljava/lang/Long;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 453
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 454
    const-string v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 455
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public buildDiff(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 17
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 467
    .local v7, "firstIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v11

    .line 468
    .local v11, "isContactInsert":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    .line 469
    .local v10, "isContactDelete":Z
    if-nez v11, :cond_2

    if-nez v10, :cond_2

    const/4 v12, 0x1

    .line 471
    .local v12, "isContactUpdate":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v4

    .line 475
    .local v4, "beforeId":Ljava/lang/Long;
    if-eqz v11, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v15, "aggregation_mode"

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 482
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v15, "account_type"

    invoke-virtual {v14, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "accountType":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v14, "vnd.sec.contact.sim"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 484
    invoke-virtual/range {p0 .. p2}, Lcom/android/contacts/model/EntityDelta;->buildDiffForSim(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 565
    :cond_1
    :goto_1
    return-void

    .line 469
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v4    # "beforeId":Ljava/lang/Long;
    .end local v12    # "isContactUpdate":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 487
    .restart local v2    # "accountType":Ljava/lang/String;
    .restart local v4    # "beforeId":Ljava/lang/Long;
    .restart local v12    # "isContactUpdate":Z
    :cond_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 490
    if-eqz v2, :cond_4

    const-string v14, "vnd.sec.contact.sim2"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 491
    invoke-virtual/range {p0 .. p2}, Lcom/android/contacts/model/EntityDelta;->buildDiffForSim2(Ljava/util/ArrayList;Landroid/content/Context;)V

    goto :goto_1

    .line 506
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 507
    .local v5, "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 511
    .local v13, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 513
    .local v6, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v10, :cond_6

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v15, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 517
    sget-object v14, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v15, "data"

    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 528
    :cond_7
    :goto_3
    const-string v14, "vnd.android.cursor.item/ringtone"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "vnd.android.cursor.item/vibration"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "vnd.android.cursor.item/alerttone"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 530
    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 531
    if-eqz v11, :cond_a

    .line 533
    const-string v14, "raw_contact_id"

    invoke-virtual {v5, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 543
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 544
    const/4 v5, 0x0

    goto :goto_2

    .line 521
    :cond_9
    const-string v14, "vnd.android.cursor.item/ringtone"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "vnd.android.cursor.item/vibration"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "vnd.android.cursor.item/alerttone"

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 523
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    goto :goto_3

    .line 536
    :cond_a
    const-string v14, "raw_contact_id"

    invoke-virtual {v5, v14, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .line 538
    :cond_b
    if-eqz v11, :cond_8

    if-eqz v5, :cond_8

    .line 540
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "When parent insert, child must be also"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 548
    .end local v6    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v7, :cond_d

    const/4 v3, 0x1

    .line 549
    .local v3, "addedOperations":Z
    :goto_5
    if-eqz v3, :cond_e

    if-eqz v12, :cond_e

    .line 551
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 552
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 555
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 556
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 548
    .end local v3    # "addedOperations":Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    .line 557
    .restart local v3    # "addedOperations":Z
    :cond_e
    if-eqz v11, :cond_1

    .line 559
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 560
    const-string v14, "aggregation_mode"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 561
    const-string v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 562
    const/4 v14, 0x0

    invoke-virtual {v5, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 563
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public buildDiffForSim(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 35
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 572
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 573
    .local v15, "firstIndex":I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v9

    .line 575
    .local v9, "anrConfigValue":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v5

    .line 576
    .local v5, "isContactInsert":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v6

    .line 577
    .local v6, "isContactDelete":Z
    if-nez v5, :cond_5

    if-nez v6, :cond_5

    const/4 v7, 0x1

    .line 579
    .local v7, "isContactUpdate":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v10

    .line 584
    .local v10, "beforeId":Ljava/lang/Long;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 585
    .local v4, "values":Landroid/content/ContentValues;
    const/16 v32, 0x0

    .line 586
    .local v32, "phoneforSim":Z
    const/16 v28, 0x0

    .line 587
    .local v28, "nameforSim":Z
    const/4 v14, 0x0

    .line 590
    .local v14, "emailforSim":Z
    const/4 v2, 0x4

    new-array v0, v2, [Z

    move-object/from16 v31, v0

    fill-array-data v31, :array_0

    .line 591
    .local v31, "phoneforANR":[Z
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v25

    .line 593
    .local v25, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/16 v23, 0x1

    .line 594
    .local v23, "isAnrFull":Z
    const/16 v18, 0x1

    .line 595
    .local v18, "isAnrAFull":Z
    const/16 v20, 0x1

    .line 596
    .local v20, "isAnrBFull":Z
    const/16 v22, 0x1

    .line 598
    .local v22, "isAnrCFull":Z
    const/16 v24, 0x0

    .line 599
    .local v24, "isAnrSupport":Z
    const/16 v19, 0x0

    .line 600
    .local v19, "isAnrASupport":Z
    const/16 v21, 0x0

    .line 603
    .local v21, "isAnrBSupport":Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 604
    if-lez v9, :cond_0

    .line 605
    const/4 v2, 0x0

    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v23

    .line 606
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v24

    .line 608
    :cond_0
    const/4 v2, 0x3

    if-le v9, v2, :cond_1

    .line 609
    const/4 v2, 0x1

    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v18

    .line 610
    const/4 v2, 0x2

    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v20

    .line 611
    const/4 v2, 0x3

    const-string v3, "vnd.sec.contact.sim"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(ILjava/lang/String;)Z

    move-result v22

    .line 612
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v19

    .line 613
    const/4 v2, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v21

    .line 633
    :cond_1
    :goto_1
    const/16 v30, 0x0

    .line 636
    .local v30, "phoneNumberCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 637
    .local v26, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 638
    .local v12, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v6, :cond_3

    .line 640
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v2, :cond_3

    .line 641
    const-string v2, "mimetype"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 642
    .local v33, "str":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 643
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 645
    .local v27, "name":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_b

    .line 646
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 649
    if-nez v27, :cond_9

    .line 650
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 651
    if-eqz v27, :cond_4

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_4

    .line 652
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 664
    :cond_4
    :goto_3
    const-string v2, "newTag"

    move-object/from16 v0, v27

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 577
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v7    # "isContactUpdate":Z
    .end local v10    # "beforeId":Ljava/lang/Long;
    .end local v12    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v14    # "emailforSim":Z
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "isAnrAFull":Z
    .end local v19    # "isAnrASupport":Z
    .end local v20    # "isAnrBFull":Z
    .end local v21    # "isAnrBSupport":Z
    .end local v22    # "isAnrCFull":Z
    .end local v23    # "isAnrFull":Z
    .end local v24    # "isAnrSupport":Z
    .end local v25    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .end local v26    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "nameforSim":Z
    .end local v30    # "phoneNumberCount":I
    .end local v31    # "phoneforANR":[Z
    .end local v32    # "phoneforSim":Z
    .end local v33    # "str":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 616
    .restart local v4    # "values":Landroid/content/ContentValues;
    .restart local v7    # "isContactUpdate":Z
    .restart local v10    # "beforeId":Ljava/lang/Long;
    .restart local v14    # "emailforSim":Z
    .restart local v18    # "isAnrAFull":Z
    .restart local v19    # "isAnrASupport":Z
    .restart local v20    # "isAnrBFull":Z
    .restart local v21    # "isAnrBSupport":Z
    .restart local v22    # "isAnrCFull":Z
    .restart local v23    # "isAnrFull":Z
    .restart local v24    # "isAnrSupport":Z
    .restart local v25    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .restart local v28    # "nameforSim":Z
    .restart local v31    # "phoneforANR":[Z
    .restart local v32    # "phoneforSim":Z
    :cond_6
    if-lez v9, :cond_7

    .line 617
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v23

    .line 618
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v24

    .line 620
    :cond_7
    const/4 v2, 0x3

    if-le v9, v2, :cond_8

    .line 621
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v18

    .line 622
    const/4 v2, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v20

    .line 623
    const/4 v2, 0x3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v22

    .line 624
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v19

    .line 625
    const/4 v2, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrSupported(I)Z

    move-result v21

    .line 628
    :cond_8
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "buildDiffForSim :  isAnrFull = "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "buildDiffForSim :  isAnrAFull = "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "buildDiffForSim :  isAnrBFull = "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "buildDiffForSim :  isAnrCFull = "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 655
    .restart local v12    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v26    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v30    # "phoneNumberCount":I
    .restart local v33    # "str":Ljava/lang/String;
    :cond_9
    if-eqz v27, :cond_4

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_4

    .line 656
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_3

    .line 660
    :cond_a
    if-nez v27, :cond_4

    .line 661
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_3

    .line 666
    :cond_b
    if-nez v27, :cond_c

    .line 667
    const-string v27, ""

    .line 669
    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 672
    if-eqz v27, :cond_d

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_d

    .line 673
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 676
    :cond_d
    const-string v2, "tag"

    move-object/from16 v0, v27

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/16 v28, 0x1

    goto/16 :goto_2

    .line 679
    .end local v27    # "name":Ljava/lang/String;
    :cond_e
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 680
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 681
    .local v29, "phone":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_19

    .line 682
    if-nez v29, :cond_f

    .line 683
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 685
    :cond_f
    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 686
    if-nez v30, :cond_10

    .line 687
    const-string v2, "newNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :goto_4
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    .line 688
    :cond_10
    if-lez v9, :cond_11

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_11

    if-eqz v24, :cond_11

    .line 689
    const-string v2, "newAnrNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 690
    :cond_11
    const/4 v2, 0x3

    if-le v9, v2, :cond_14

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_12

    if-nez v24, :cond_12

    if-nez v19, :cond_13

    :cond_12
    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_14

    if-eqz v19, :cond_14

    .line 693
    :cond_13
    const-string v2, "newAnrANumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 694
    :cond_14
    const/4 v2, 0x3

    if-le v9, v2, :cond_18

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_15

    if-nez v24, :cond_15

    if-nez v19, :cond_15

    if-nez v21, :cond_17

    :cond_15
    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_16

    if-nez v19, :cond_16

    if-nez v21, :cond_17

    :cond_16
    const/4 v2, 0x3

    move/from16 v0, v30

    if-ne v0, v2, :cond_18

    if-eqz v21, :cond_18

    .line 698
    :cond_17
    const-string v2, "newAnrBNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 700
    :cond_18
    const-string v2, "newAnrCNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 704
    :cond_19
    if-nez v29, :cond_1a

    .line 705
    const-string v29, ""

    .line 707
    :cond_1a
    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 708
    if-nez v30, :cond_1b

    .line 709
    const-string v2, "number"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/16 v32, 0x1

    .line 730
    :goto_5
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    .line 711
    :cond_1b
    if-lez v9, :cond_1c

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_1c

    if-nez v23, :cond_1c

    .line 713
    const-string v2, "AnrNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v31, v2

    goto :goto_5

    .line 715
    :cond_1c
    const/4 v2, 0x3

    if-le v9, v2, :cond_1f

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_1d

    if-eqz v18, :cond_1e

    :cond_1d
    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_1f

    if-nez v18, :cond_1f

    .line 718
    :cond_1e
    const-string v2, "AnrANumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v31, v2

    goto :goto_5

    .line 720
    :cond_1f
    const/4 v2, 0x3

    if-le v9, v2, :cond_23

    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_20

    if-eqz v20, :cond_22

    :cond_20
    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_21

    if-eqz v20, :cond_22

    :cond_21
    const/4 v2, 0x3

    move/from16 v0, v30

    if-ne v0, v2, :cond_23

    if-nez v20, :cond_23

    .line 724
    :cond_22
    const-string v2, "AnrBNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v31, v2

    goto :goto_5

    .line 727
    :cond_23
    const-string v2, "AnrCNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v31, v2

    goto :goto_5

    .line 732
    .end local v29    # "phone":Ljava/lang/String;
    :cond_24
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 733
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 734
    .local v13, "email":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_26

    .line 735
    if-nez v13, :cond_25

    .line 736
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 738
    :cond_25
    const-string v2, "newEmails"

    invoke-virtual {v4, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 740
    :cond_26
    if-nez v13, :cond_27

    .line 741
    const-string v13, ""

    .line 743
    :cond_27
    const-string v2, "emails"

    invoke-virtual {v4, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 750
    .end local v12    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13    # "email":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v26    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v33    # "str":Ljava/lang/String;
    :cond_28
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "buildDiffForSim : phoneNumberCount = "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v2, 0x1

    if-ne v5, v2, :cond_2f

    .line 753
    if-nez v28, :cond_29

    .line 754
    const-string v2, "tag"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_29
    if-nez v32, :cond_2a

    .line 758
    const-string v2, "number"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_2a
    if-nez v14, :cond_2b

    .line 762
    const-string v2, "emails"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_2b
    if-lez v9, :cond_2f

    .line 766
    const/4 v2, 0x0

    aget-boolean v2, v31, v2

    if-nez v2, :cond_2c

    if-nez v23, :cond_2c

    .line 767
    const-string v2, "AnrNumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_2c
    const/4 v2, 0x3

    if-le v9, v2, :cond_2f

    .line 771
    const/4 v2, 0x1

    aget-boolean v2, v31, v2

    if-nez v2, :cond_2d

    if-nez v18, :cond_2d

    .line 772
    const-string v2, "AnrANumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_2d
    const/4 v2, 0x2

    aget-boolean v2, v31, v2

    if-nez v2, :cond_2e

    if-nez v20, :cond_2e

    .line 775
    const-string v2, "AnrBNumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_2e
    const/4 v2, 0x3

    aget-boolean v2, v31, v2

    if-nez v2, :cond_2f

    if-nez v22, :cond_2f

    .line 778
    const-string v2, "AnrCNumber"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v3, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiffForSim(Landroid/net/Uri;Landroid/content/ContentValues;ZZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 787
    .local v11, "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 789
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v15, :cond_31

    const/4 v8, 0x1

    .line 790
    .local v8, "addedOperations":Z
    :goto_6
    if-eqz v8, :cond_30

    if-eqz v7, :cond_30

    .line 792
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 793
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 796
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 797
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_30
    return-void

    .line 789
    .end local v8    # "addedOperations":Z
    :cond_31
    const/4 v8, 0x0

    goto :goto_6

    .line 590
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public buildDiffForSim2(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 35
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 907
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 908
    .local v15, "firstIndex":I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v9

    .line 910
    .local v9, "anrConfigValue":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v5

    .line 911
    .local v5, "isContactInsert":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v6

    .line 912
    .local v6, "isContactDelete":Z
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    const/4 v7, 0x1

    .line 914
    .local v7, "isContactUpdate":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v10

    .line 919
    .local v10, "beforeId":Ljava/lang/Long;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 920
    .local v4, "values":Landroid/content/ContentValues;
    const/16 v32, 0x0

    .line 921
    .local v32, "phoneforSim":Z
    const/16 v28, 0x0

    .line 922
    .local v28, "nameforSim":Z
    const/4 v14, 0x0

    .line 924
    .local v14, "emailforSim":Z
    const/4 v2, 0x4

    new-array v0, v2, [Z

    move-object/from16 v31, v0

    fill-array-data v31, :array_0

    .line 925
    .local v31, "phoneforANR":[Z
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v25

    .line 927
    .local v25, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/16 v23, 0x1

    .line 928
    .local v23, "isAnrFull":Z
    const/16 v18, 0x1

    .line 929
    .local v18, "isAnrAFull":Z
    const/16 v20, 0x1

    .line 930
    .local v20, "isAnrBFull":Z
    const/16 v22, 0x1

    .line 932
    .local v22, "isAnrCFull":Z
    const/16 v24, 0x0

    .line 933
    .local v24, "isAnrSupport":Z
    const/16 v19, 0x0

    .line 934
    .local v19, "isAnrASupport":Z
    const/16 v21, 0x0

    .line 956
    .local v21, "isAnrBSupport":Z
    const/16 v30, 0x0

    .line 958
    .local v30, "phoneNumberCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 959
    .local v26, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 960
    .local v12, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v6, :cond_1

    .line 962
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    .line 963
    const-string v2, "mimetype"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 964
    .local v33, "str":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 965
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 967
    .local v27, "name":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_6

    .line 968
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 971
    if-nez v27, :cond_4

    .line 972
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 973
    if-eqz v27, :cond_2

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_2

    .line 974
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 986
    :cond_2
    :goto_2
    const-string v2, "newTag"

    move-object/from16 v0, v27

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 912
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v7    # "isContactUpdate":Z
    .end local v10    # "beforeId":Ljava/lang/Long;
    .end local v12    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v14    # "emailforSim":Z
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "isAnrAFull":Z
    .end local v19    # "isAnrASupport":Z
    .end local v20    # "isAnrBFull":Z
    .end local v21    # "isAnrBSupport":Z
    .end local v22    # "isAnrCFull":Z
    .end local v23    # "isAnrFull":Z
    .end local v24    # "isAnrSupport":Z
    .end local v25    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .end local v26    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "nameforSim":Z
    .end local v30    # "phoneNumberCount":I
    .end local v31    # "phoneforANR":[Z
    .end local v32    # "phoneforSim":Z
    .end local v33    # "str":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 977
    .restart local v4    # "values":Landroid/content/ContentValues;
    .restart local v7    # "isContactUpdate":Z
    .restart local v10    # "beforeId":Ljava/lang/Long;
    .restart local v12    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v14    # "emailforSim":Z
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v18    # "isAnrAFull":Z
    .restart local v19    # "isAnrASupport":Z
    .restart local v20    # "isAnrBFull":Z
    .restart local v21    # "isAnrBSupport":Z
    .restart local v22    # "isAnrCFull":Z
    .restart local v23    # "isAnrFull":Z
    .restart local v24    # "isAnrSupport":Z
    .restart local v25    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .restart local v26    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v28    # "nameforSim":Z
    .restart local v30    # "phoneNumberCount":I
    .restart local v31    # "phoneforANR":[Z
    .restart local v32    # "phoneforSim":Z
    .restart local v33    # "str":Ljava/lang/String;
    :cond_4
    if-eqz v27, :cond_2

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_2

    .line 978
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    goto :goto_2

    .line 982
    :cond_5
    if-nez v27, :cond_2

    .line 983
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto :goto_2

    .line 988
    :cond_6
    if-nez v27, :cond_7

    .line 989
    const-string v27, ""

    .line 991
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_CheckSimAlphaLength4UnicodeName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 994
    if-eqz v27, :cond_8

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    sget v3, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    if-le v2, v3, :cond_8

    .line 995
    sget v2, Lcom/android/contacts/model/EntityDelta;->mSIMNameLength:I

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimNonAsciiTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 998
    :cond_8
    const-string v2, "tag"

    move-object/from16 v0, v27

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1001
    .end local v27    # "name":Ljava/lang/String;
    :cond_9
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1002
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1003
    .local v29, "phone":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_b

    .line 1004
    if-nez v29, :cond_a

    .line 1005
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1007
    :cond_a
    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1029
    const-string v2, "newNumber"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1032
    :cond_b
    if-nez v29, :cond_c

    .line 1033
    const-string v29, ""

    .line 1035
    :cond_c
    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDialable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1063
    const-string v2, "number"

    move-object/from16 v0, v29

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const/16 v32, 0x1

    goto/16 :goto_1

    .line 1067
    .end local v29    # "phone":Ljava/lang/String;
    :cond_d
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1068
    iget-object v2, v12, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1069
    .local v13, "email":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v7, v2, :cond_f

    .line 1070
    if-nez v13, :cond_e

    .line 1071
    const-string v2, "data1"

    invoke-virtual {v12, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1073
    :cond_e
    const-string v2, "newEmails"

    invoke-virtual {v4, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1075
    :cond_f
    if-nez v13, :cond_10

    .line 1076
    const-string v13, ""

    .line 1078
    :cond_10
    const-string v2, "emails"

    invoke-virtual {v4, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 1085
    .end local v12    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13    # "email":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v26    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v33    # "str":Ljava/lang/String;
    :cond_11
    const-string v2, "EntityDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "buildDiffForSim2 : phoneNumberCount = "

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/4 v2, 0x1

    if-ne v5, v2, :cond_14

    .line 1088
    if-nez v28, :cond_12

    .line 1089
    const-string v2, "tag"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :cond_12
    if-nez v32, :cond_13

    .line 1093
    const-string v2, "number"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    :cond_13
    if-nez v14, :cond_14

    .line 1097
    const-string v2, "emails"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v3, "content://com.android.contacts/raw_contacts/adn2"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiffForSim(Landroid/net/Uri;Landroid/content/ContentValues;ZZZ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1125
    .local v11, "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 1127
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v15, :cond_16

    const/4 v8, 0x1

    .line 1128
    .local v8, "addedOperations":Z
    :goto_3
    if-eqz v8, :cond_15

    if-eqz v7, :cond_15

    .line 1130
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1131
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1134
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1135
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    :cond_15
    return-void

    .line 1127
    .end local v8    # "addedOperations":Z
    :cond_16
    const/4 v8, 0x0

    goto :goto_3

    .line 924
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p1, "beforeId"    # Ljava/lang/Long;
    .param p2, "mode"    # I

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1145
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "aggregation_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1147
    return-object v0
.end method

.method public clearMimeEntries(Ljava/lang/String;)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1153
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 367
    instance-of v6, p1, Lcom/android/contacts/model/EntityDelta;

    if-eqz v6, :cond_0

    move-object v4, p1

    .line 368
    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    .line 371
    .local v4, "other":Lcom/android/contacts/model/EntityDelta;
    iget-object v6, v4, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v7, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 383
    .end local v4    # "other":Lcom/android/contacts/model/EntityDelta;
    :cond_0
    :goto_0
    return v5

    .line 373
    .restart local v4    # "other":Lcom/android/contacts/model/EntityDelta;
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 374
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 376
    .local v0, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-direct {v4, v0}, Lcom/android/contacts/model/EntityDelta;->containsEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 381
    .end local v0    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 324
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 325
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 326
    .local v0, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 327
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    .end local v0    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_2
    return-object v4
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .param p1, "childId"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    .line 338
    if-nez p1, :cond_0

    move-object v0, v4

    .line 351
    :goto_0
    return-object v0

    .line 344
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 345
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 346
    .local v0, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v0    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_3
    move-object v0, v4

    .line 351
    goto :goto_0
.end method

.method public getEntryCount(Z)I
    .locals 4
    .param p1, "onlyVisible"    # Z

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 362
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "onlyVisible"    # Z

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 287
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 295
    :cond_0
    return v1

    .line 289
    :cond_1
    const/4 v1, 0x0

    .line 290
    .local v1, "count":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 292
    .local v0, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 178
    invoke-direct {p0, p1, v5}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 179
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v3

    .line 181
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 182
    .local v0, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 183
    goto :goto_0

    .line 188
    .end local v0    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/AccountType;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 255
    .local v1, "entityValues":Landroid/content/ContentValues;
    const-string v3, "account_type"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "type":Ljava/lang/String;
    const-string v3, "data_set"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "dataSet":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v3

    return-object v3
.end method

.method public getRawContactId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/EntityDelta;->getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "forceSelection"    # Z
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 221
    invoke-direct {p0, p1, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 222
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object v4

    .line 224
    :cond_1
    const/4 v3, 0x0

    .line 225
    .local v3, "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 226
    .local v0, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v0

    .line 227
    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    move-object v3, v0

    goto :goto_1

    .line 233
    .end local v0    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_4
    if-eqz p2, :cond_0

    .line 238
    if-eqz v3, :cond_5

    move-object v4, v3

    .line 239
    goto :goto_0

    .line 241
    :cond_5
    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 242
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 243
    .restart local v0    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v0, :cond_6

    const-string v5, "data15"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v4, v0

    .line 244
    goto :goto_0

    .line 247
    .end local v0    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPrimaryNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 193
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v3

    .line 195
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 196
    .local v0, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isContactInsert()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public markDeleted()V
    .locals 5

    .prologue
    .line 400
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 401
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 402
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 403
    .local v0, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 406
    .end local v0    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1171
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1172
    .local v3, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iput-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1173
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 1174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1175
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1176
    .local v0, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1178
    .end local v0    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_0
    return-void
.end method

.method public setProfileQueryUri()V
    .locals 1

    .prologue
    .line 1184
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 1185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v5, "\n("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v5, "Uri="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    const-string v5, ", Values="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v5, ", Entries={"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 418
    .local v4, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 419
    .local v1, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 415
    .end local v1    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    const-string v5, "null"

    goto :goto_0

    .line 423
    :cond_2
    const-string v5, "\n})\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1158
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta;->getEntryCount(Z)I

    move-result v4

    .line 1159
    .local v4, "size":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1161
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1162
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1163
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1164
    .local v0, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1167
    .end local v0    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    return-void
.end method
